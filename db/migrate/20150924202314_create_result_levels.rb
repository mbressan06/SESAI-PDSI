class CreateResultLevels < ActiveRecord::Migration
  def change
    create_table :result_levels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
