class CreateChildUsers < ActiveRecord::Migration
  def change
    create_table :child_users do |t|
      t.string :role
      t.string :affiliation
      t.references :user, index: true, foreign_key: true
      t.references :child, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
