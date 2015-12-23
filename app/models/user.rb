class User < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader 
after_initialize :set_default_role, :if => :new_record?
 def set_default_role
    self.role ||= :user
  end
COUNTRY = ["india", "Pakistan", "Germany", "Afghanistan","Canada","USA", "UK","Kenya","Nepal","malaysia","bangladesh"]
 
 GENDER_TYPES = ["male","female"]


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
          :confirmable   
 

end
