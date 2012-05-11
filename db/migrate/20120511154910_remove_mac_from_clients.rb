class RemoveMacFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :mac
  end

  def down
  end
end
