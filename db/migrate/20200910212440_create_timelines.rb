class CreateTimelines < ActiveRecord::Migration[6.0]
  def change
    create_table :timelines do |t|
      t.string :numMilestone
      t.string :date
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
