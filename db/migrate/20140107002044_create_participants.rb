class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :fb_id
      t.string :email
      t.string :gender
      t.string :image
      t.string :username
      t.text :suggestion

      t.timestamps
    end
  end
end
