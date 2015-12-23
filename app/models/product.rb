class Product < ActiveRecord::Base
	has_many :images, :as => :imagable
	belongs_to :category
	accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank
has_attached_file :image, styles: { medium: "100x100>", thumb: "100x100>"  }
def self.search(search)
  if search
 where('name LIKE ?', "%#{search}%")
   else
    all
  end
end
end
