class CreateLokhis < ActiveRecord::Migration
  def change
    create_table :lokhis do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
