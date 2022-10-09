class CreateNovels < ActiveRecord::Migration[7.0]
  def change
    create_table :novels do |t|
      t.string :name
      t.string :cover_url
      t.text :description

      t.timestamps
    end
  end
end
