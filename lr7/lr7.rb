#coding: utf-8
def countWords
  f = File.open('F.txt', 'r')
  s = f.gets
  f.close

  m = s.split(' ')

  s = m.select { |i| i.length > 5 }.size
  return s
end
