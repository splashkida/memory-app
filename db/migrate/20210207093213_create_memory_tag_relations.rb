class CreateMemoryTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :memory_tag_relations do |t|
      t.references :memory, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
