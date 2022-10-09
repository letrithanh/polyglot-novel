class AddReferenceNovelsToVolumes < ActiveRecord::Migration[7.0]
  def change
    add_reference :volumes, :novels, null: false, foreign_key: true
  end
end
