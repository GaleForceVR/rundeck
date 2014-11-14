class CreateCompletedRoutes < ActiveRecord::Migration
  def change
    create_table :completed_routes do |t|
      t.belongs_to  :user
      t.belongs_to  :route
      t.time        :time_of_day
      t.date        :date
      t.integer     :temperature
      t.text        :wind

      t.timestamps
    end
  end
end
