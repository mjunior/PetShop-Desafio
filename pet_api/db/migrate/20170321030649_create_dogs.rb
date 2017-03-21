class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :owner
      t.boolean :castrated
      t.string :genre
      t.string :breed
      t.string :phone
      t.date :last_time
      t.date :birthday
      t.timestamps
    end
  end
end
