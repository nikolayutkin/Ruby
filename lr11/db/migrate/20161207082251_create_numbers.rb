class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.integer :power
      t.integer :var
      t.timestamps null: false
    end
  end
end
