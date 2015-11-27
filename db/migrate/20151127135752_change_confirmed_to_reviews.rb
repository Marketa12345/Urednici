class ChangeConfirmedToReviews < ActiveRecord::Migration
  def change

  	change_column :reviews, :confirmed, :boolean, default: false
  end
end
