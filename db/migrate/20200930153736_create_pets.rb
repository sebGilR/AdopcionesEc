class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :type
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
