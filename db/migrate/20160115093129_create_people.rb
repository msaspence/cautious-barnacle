class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :full_name
      t.string :call_me
      t.string :email
      t.string :slack
      t.string :twitter
      t.string :github
      t.string :linked_in

      t.timestamps null: false
    end
  end
end
