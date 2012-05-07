class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :ip
      t.string :mac
      t.text :comment
      t.timestamp :heartbeated_at

      t.timestamps
    end
  end
end
