class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :person_id
      t.integer :group_id
      t.integer :position_id
      t.float   :share

      t.timestamps null: false
    end
  end
end
