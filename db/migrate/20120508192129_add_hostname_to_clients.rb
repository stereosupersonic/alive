class AddHostnameToClients < ActiveRecord::Migration
  def change
    add_column :clients, :hostname, :string

    add_column :clients, :port, :integer

    add_column :clients, :user, :string

  end
end
