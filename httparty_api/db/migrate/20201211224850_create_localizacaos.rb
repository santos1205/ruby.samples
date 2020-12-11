class CreateLocalizacaos < ActiveRecord::Migration[6.1]
  def change
    create_table :localizacao do |t|
      t.string :longitude
      t.string :latitude
      t.references :dev, null: false, foreign_key: true

      t.timestamps
    end
  end
end
