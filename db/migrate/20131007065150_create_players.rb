class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :play, null: false
      t.string :name, null: false
      t.string :decision, null: false, default: '[]'
    end
  end
end

