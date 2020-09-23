class Destination < ApplicationRecord
    has_many :posts 
    has_many :bloggers, through: :posts 


    def most_likes 
        #go through each post, count the number of like
        #store that 
        #check that against the last maximum recorded 
        #return post with max 
        

    end 
end
