class AddAttachmentImageToShareseshes < ActiveRecord::Migration
  def self.up
    change_table :shareseshes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shareseshes, :image
  end
end
