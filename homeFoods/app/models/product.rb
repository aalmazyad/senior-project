class Product < ActiveRecord::Base
  belongs_to :store
   validates :name,:description,:quantity,:price, presence: true
     # http://stackoverflow.com/questions/5966910/generate-unique-random-string-with-letters-and-numbers-in-lower-case
def generate_filename
    	@POSSIBLE = (('A'..'Z').to_a + (0..9).to_a)
    	self.filename = (0...10).map { |n| @POSSIBLE.sample }.join + '.jpg'
	  
	  if Product.find_by(filename: self.filename) != nil
	  	 generate_filename
	  end

	end
end