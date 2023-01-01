class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.text :image_url
      t.text :description
      t.string :category
      t.integer :episode_count
      t.integer :rating

      t.timestamps
    end
  end
end
