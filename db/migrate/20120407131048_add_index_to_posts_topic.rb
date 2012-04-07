class AddIndexToPostsTopic < ActiveRecord::Migration
  def change
		add_index :posts, :topic, unique: true
  end
end
