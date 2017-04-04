class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
	  t.string :mas
	  t.string :result
      t.timestamps null: false
    end
  end
end
