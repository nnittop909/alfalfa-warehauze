class Upload < ActiveRecord::Base
	belongs_to :project
	has_attached_file :uploaded_file,
						:path => ":rails_root/public/system/:basename.:extension"
	validates_attachment_content_type :uploaded_file, :content_type => ["application/pdf","application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword", 
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
             "text/plain"]

end
