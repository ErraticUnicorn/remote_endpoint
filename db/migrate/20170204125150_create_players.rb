class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :credits
      t.integer :lifetime_spins
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
