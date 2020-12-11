class CreateDevRadars < ActiveRecord::Migration[6.1]
  def change
    create_table :dev_radars do |t|

      t.timestamps
    end
  end
end
