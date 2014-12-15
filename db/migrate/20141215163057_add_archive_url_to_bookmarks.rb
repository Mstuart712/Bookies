class AddArchiveUrlToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :archive_url, :string
    add_column :bookmarks, :is_archived, :boolean
  end
end
