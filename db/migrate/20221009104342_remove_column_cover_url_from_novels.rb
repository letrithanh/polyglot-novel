class RemoveColumnCoverUrlFromNovels < ActiveRecord::Migration[7.0]
  def change
    remove_column :novels, :cover_url, :string
  end
end
