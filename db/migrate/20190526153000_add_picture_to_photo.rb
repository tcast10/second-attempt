class AddPictureToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :picture, :string
  end
  mount_uploader :picture, PictureUploader
end
