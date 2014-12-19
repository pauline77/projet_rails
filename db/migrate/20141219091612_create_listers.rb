class CreateListers < ActiveRecord::Migration
  def change
    create_table :listers do |t|
      t.integer :user_id
      t.integer :movie_id
      t.boolean :vu

      t.timestamps
    end
  end
end
