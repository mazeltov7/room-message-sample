class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :room_id
      t.string :username
      t.text :body

      t.timestamps
    end
  end
end
