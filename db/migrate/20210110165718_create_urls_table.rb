class CreateUrlsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :shortened_urls do |t|
      t.string :title
      t.string :path_url
      t.string :real_url
      t.string :shorted_url
      t.integer :access_count

      t.timestamps
    end
  end
end
