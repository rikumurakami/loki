class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.text        :mail
      t.text        :name
      t.timestamps
    end
  end
end
