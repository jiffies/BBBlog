class RenamePostsName < ActiveRecord::Migration
  def up
		rename_column :posts, :name, :topic
  end

  def down
		rename_column :posts, :topic, :name
  end
end
