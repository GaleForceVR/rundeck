class CreateSplits < ActiveRecord::Migration
  def change
    create_table :splits do |t|
      t.belongs_to  :completed_route
      t.integer     :distance
      t.time        :time

      t.timestamps
    end
  end
end
