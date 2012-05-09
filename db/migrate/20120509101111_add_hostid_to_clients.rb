class AddHostidToClients < ActiveRecord::Migration
  def change
    add_column :clients, :hostid, :string

  end
end
