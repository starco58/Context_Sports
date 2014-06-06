class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :game

      t.date :played_on

      t.time :gametime

      t.string :home_team

      t.string :away_team


      t.timestamps

    end

  end
end
