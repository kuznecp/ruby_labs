class CreateTvSets < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_sets do |t|
      t.string :name
      t.string :size
      t.string :multimedia
      t.string :price

      t.timestamps
    end
    add_index :tv_sets, :name, unique: true
  end
end
