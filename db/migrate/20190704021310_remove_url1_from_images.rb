class RemoveUrl1FromImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :url1, :string
  end
end
