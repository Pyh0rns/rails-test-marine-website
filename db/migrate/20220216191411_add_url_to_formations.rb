class AddUrlToFormations < ActiveRecord::Migration[6.1]
  def change
    add_column :formations, :url, :string
  end
end
