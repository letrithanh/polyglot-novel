class RemoveColumnCoverUrlFromVolumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :volumes, :cover_url, :string
  end
end
