class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :cid
      t.string :uid
      t.string :pass

      t.timestamps
    end
  end
end
