class AddAtachmentToLabs < ActiveRecord::Migration
  def up
    add_attachment :labs, :attachment
  end

  def down
    remove_attachment :labs, :attachment
  end
end
