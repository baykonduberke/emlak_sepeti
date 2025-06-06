class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :reviewer, user: true, null: false, foreign_key: true
      t.references :reviewee, user: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
