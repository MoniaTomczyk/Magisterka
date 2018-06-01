class AddAvatarToDoctor < ActiveRecord::Migration
  def up
    add_attachment :doctors, :avatar
  end
 
  def down
    remove_attachment :doctors, :avatar
  end
end