require 'nokogiri'
require 'open-uri'

class Lr102Controller < ApplicationController
  def input
  end

  def proxy
    doc = Nokogiri::XML(open('http://localhost:3000/lr/view.xml?utf8=%E2%9C%93&val='+params[:val].to_s))
    client = doc
    inst = Nokogiri::XML::ProcessingInstruction.new(client, "xml-stylesheet", 'type="text/xsl" href="/transformer.xslt"')
    client.root.add_previous_sibling inst  #добавляем ухел в клиент
	  path = File.join Rails.root, 'public', 'transformer.xslt'
    xslt = Nokogiri::XSLT(File.read(path))
	respond_to do |format|
	  format.xml { render xml: client}
      format.html { render html: xslt.transform(doc).to_s.html_safe }
	end
  end
end
