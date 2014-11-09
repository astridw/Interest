class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :notes
      t.string :photo

      t.timestamps
    end
  end
end
