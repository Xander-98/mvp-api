class AddOtakuTable < ActiveRecord::Migration[7.0]
  def change
    create_table :otakus do |t|
      t.integer :anime_id
      t.integer :user_id

      t.timestamps
    end
  end
end
