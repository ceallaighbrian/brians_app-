class AddPictureToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :picture, :string
    add_column :microposts, :string, :string
  end
end
