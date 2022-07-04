class CreateSequences < ActiveRecord::Migration[6.1]
  def change
    create_table :sequences do |t|

      t.timestamps
    end
  end
end
