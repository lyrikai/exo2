class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :race
      t.belongs_to :country, index: true
      t.timestamps
    end
  end
end