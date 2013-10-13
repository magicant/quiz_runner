class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :memo, null: false
      t.text   :data, null: false
      t.string :decision, null: false, default: '[]'
      t.integer :step, null: false, default: 0
    end
  end
end

