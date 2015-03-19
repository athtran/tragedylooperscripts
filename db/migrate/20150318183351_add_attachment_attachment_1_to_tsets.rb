class AddAttachmentAttachment1ToTsets < ActiveRecord::Migration
  def self.up
    change_table :tsets do |t|
      t.attachment :attachment_1
    end
  end

  def self.down
    remove_attachment :tsets, :attachment_1
  end
end
