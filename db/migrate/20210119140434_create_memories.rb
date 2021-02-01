class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      t.string  :place
      t.integer :weather
      t.integer :access
      t.integer :scene
      t.integer :price
      t.string  :with_who
      t.string  :comment
      t.timestamps
    end
  end
end
