class AddUredniciIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :urednici_id, :integer
  end
end
