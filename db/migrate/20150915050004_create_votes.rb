class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :product, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :votes, :products
    add_foreign_key :votes, :users
  end
end
