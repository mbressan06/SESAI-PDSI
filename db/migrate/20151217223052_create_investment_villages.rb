class CreateInvestmentVillages < ActiveRecord::Migration
  def change
    create_table :investment_villages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
