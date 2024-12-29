class CreateComedians < ActiveRecord::Migration[7.1]
  def change
    create_table :comedians do |t|
      t.string :name

      t.timestamps
    end
  end
end
