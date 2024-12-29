class CreatePerformers < ActiveRecord::Migration[7.1]
  def change
    create_table :performers do |t|
      t.references :live, null: false, foreign_key: true
      t.references :comedian, null: false, foreign_key: true

      t.timestamps
    end
  end
end
