class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|

      t.integer :player_id

      t.integer :user_id

      t.datetime :created_at

      t.datetime :updated_at


      t.timestamps

    end

  end
end
