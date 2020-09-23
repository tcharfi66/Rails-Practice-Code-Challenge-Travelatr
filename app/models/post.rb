class Post < ApplicationRecord
    belongs_to :destination
    belongs_to :blogger

    def format_content 
        content = self.content.split("into")
        formatted = content.each do |content|
            content 
        end 
        return formatted
    end 

end
