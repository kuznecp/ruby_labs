class CreateSequences < ActiveRecord::Migration[7.0]
  def change
    create_table :sequences do |t|
      t.integer :n
      t.string :begseq
      t.string :allseq
      t.string :longseq
      t.integer :countseq

      t.timestamps
    end
  end
end
