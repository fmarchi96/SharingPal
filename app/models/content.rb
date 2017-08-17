class Content < ActiveRecord::Base
belongs_to :user
    
    has_attached_file :cover
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
    message: "Only image formats are supported"
    
    # has_attached_file :allegato
   # validates_attachment_content_type :attachment, :content_type => [ /^image\/(png|gif|jpeg)/,'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document','application/mspowerpoint','application/vnd.ms-powerpoint','application/vnd.openxmlformats-officedocument.presentationml.presentation', 'application/pdf', 'application/msexcel','application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','audio/mpeg', 'audio/mp3' ], 
    # message: "Format not supported"
    
validates :title, :description, :price, presence: true

validates :price, numericality: { greater_than: 0 }

validates :cover, attachment_presence: true
end
