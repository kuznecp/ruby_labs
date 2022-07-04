class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :query
      t.text :solution

      t.timestamps
    end
  end
end
