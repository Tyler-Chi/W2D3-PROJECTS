require 'tdd_methods'

#we would be testing my_uniq
#make an array
#test if array.my_uniq == array.uniq
#return empty bracket if its an empty array

RSpec.describe Array do
  subject(:array) {[1,2,3,4,1,1,1,1,2,6]}

  describe "#my_uniq" do
    it "result is the same as array.uniq" do
      expect(array.my_uniq).to eq(array.uniq)
    end

    it "returns an empty bracket if it is an empty array" do
      empty_array = []
      expect(empty_array.my_uniq).to be_empty
    end
  end
end
