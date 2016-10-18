class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :review

      t.references :user, index: true
      t.references :product, index: true


      t.timestamps
    end
  end
end
