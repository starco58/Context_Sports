class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|

      t.string :type

      t.boolean :fault


      t.timestamps

    end

  end
end
