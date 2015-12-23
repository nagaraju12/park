class Image < ActiveRecord::Base
	belongs_to :product
	  belongs_to :imagable, :polymorphic => true
    has_attached_file :image, :styles => {:original => "800x500>",:default => "30x29!",:thumb => "96x96>"}
                  
    validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg)
end
