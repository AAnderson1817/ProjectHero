class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.text :body
      t.references :goal, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
