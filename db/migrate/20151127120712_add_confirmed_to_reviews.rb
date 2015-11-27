class AddConfirmedToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :confirmed, :boolean
  end
end
