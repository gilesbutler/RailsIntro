class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :book
      t.belongs_to :user
      t.text :reviews

      t.timestamps
    end
  end
end
