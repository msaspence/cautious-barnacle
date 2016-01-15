class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string  :name
      t.text    :description
      t.integer :parent_id
      t.string  :level

      t.timestamps null: false
    end
  end
end
