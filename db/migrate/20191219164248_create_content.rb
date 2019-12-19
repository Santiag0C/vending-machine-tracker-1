class CreateContent < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :content
      t.integer :price
      t.references :machine, foreign_key: true

    end
  end
end
