class CreateDevs < ActiveRecord::Migration[6.1]
  def change
    create_table :devs do |t|
      t.string :nome
      t.string :user_name
      t.string :bio
      t.string :avatar_url
      t.string :techs

      t.timestamps
    end
  end
end
