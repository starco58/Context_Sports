class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|

      t.text :comment


      t.timestamps

    end

  end
end
