class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :questionOne
      t.string :questionTwo
      t.string :questionThree
      t.string :questionFour
      t.string :questionFive
      t.string :questionSix
      t.belongs_to :user, foreign_key: true
      t.belongs_to :genre, foreign_key: true

      t.timestamps
    end
  end
end
