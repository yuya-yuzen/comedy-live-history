class CreateLives < ActiveRecord::Migration[7.1]
  def change
    create_table :lives do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
