class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :history]
 
	belongs_to :user
 
	validates :user_id, :presence => true
	validates :name,  :presence => true
  	validates :title, :presence => true, :length => { :minimum => 5 }
  	has_many :comments, :dependent => :destroy
 	
 	#def should_generate_new_friendly_id?
 	#	new_record? 		
 	#end	
end
