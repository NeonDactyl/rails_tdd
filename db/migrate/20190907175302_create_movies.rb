class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.date :released_on
      t.integer :worldwide_gross

      t.timestamps
    end
  end
end
