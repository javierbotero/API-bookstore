class AddCompletedToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :completed, :integer
  end
end
