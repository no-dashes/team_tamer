class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.references :team
      t.float :start_hour
      t.float :end_hour

      t.timestamps
    end
  end
end
