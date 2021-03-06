class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  mount_uploader :picture, PictureUploader 
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  
  
  private 
  
  # Validates the size of an uploaded picture
  def picture_size 
    if picture.size > 5.megabytes
      errois.add(:picture, "should be less that 5mb") 
    end
  end
end



