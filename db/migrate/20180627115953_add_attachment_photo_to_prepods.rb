class AddAttachmentPhotoToPrepods < ActiveRecord::Migration[5.1]
  def self.up
    change_table :prepods do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :prepods, :photo
  end
end
