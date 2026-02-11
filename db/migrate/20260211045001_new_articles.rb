class NewArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :crated_at, :datetime
    add_column :articles, :updtaed_at, :datetime
  end
end
