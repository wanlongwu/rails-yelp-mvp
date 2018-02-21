class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name, presence: true
      t.text :address, presence: true
      t.integer :phone
      t.string :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}

      t.timestamps
    end
  end
end
