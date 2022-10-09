class CreateVolumes < ActiveRecord::Migration[7.0]
  def change
    create_table :volumes do |t|
      t.string :name
      t.string :cover_url

      t.timestamps
    end
  end
end
