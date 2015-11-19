class CreateUrednicis < ActiveRecord::Migration
  def change
    create_table :urednicis do |t|
      t.string :name
      t.string :surname
      t.string :street
      t.string :city
      t.integer :zip

      t.timestamps null: false
    end
  end
end
