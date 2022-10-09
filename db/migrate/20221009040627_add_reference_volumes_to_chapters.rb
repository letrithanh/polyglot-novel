class AddReferenceVolumesToChapters < ActiveRecord::Migration[7.0]
  def change
    add_reference :chapters, :volumes, null: false, foreign_key: true
  end
end
