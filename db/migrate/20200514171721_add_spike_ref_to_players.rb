class AddSpikeRefToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_reference :players, :spike, foreign_key: true, null: false
  end
end
