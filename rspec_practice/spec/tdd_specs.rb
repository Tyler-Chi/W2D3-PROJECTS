
require 'tdd'

#we would be testing my_uniq
#make an array
#test if array.my_uniq == array.uniq
#return empty bracket if its an empty array

RSpec.describe "tdd_methods" do
  subject(:array) { [1,2,-1,0] }


  describe "#my_uniq" do
    it "result is the same as array.uniq" do
      expect(array.my_uniq).to eq(array.uniq)
    end

    it "returns an empty bracket if it is an empty array" do
      empty_array = []
      expect(empty_array.my_uniq).to be_empty
    end
  end

  describe "#two_sum" do

    it "returns an array" do
      expect(array.two_sum).to be_a(Array)
    end

    it "return values sum to zero" do
      expect(array.two_sum).to eq([[0,2]])
    end

    it "does not return extraneous 0s" do
      expect(array.two_sum).to_not include([3,3])
    end

    it "returns the array pairs to be sorted dictionary-wise" do
      expect(array.two_sum).to eq(array.two_sum.sort)
    end

  end

  describe "my_transpose" do
    subject(:array) { [[0, 1, 2],[3, 4, 5],[6, 7, 8] ]}
    let(:array1) { [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
      ] }

    it "returns an array" do
      expect(array.my_transpose).to be_a(Array)
    end

    it "should transpose properly" do
      expect(array.my_transpose).to eq(array1)
    end
  end

  describe "stock_picker" do
    subject(:stock_prices){%w(20 50 90 10 100).map(&:to_i)}

    it "returns an array" do
      expect(stock_prices.stock_picker).to be_a(Array)
    end

    it "picks the right days" do
      expect(stock_prices.stock_picker).to eq([3,4])
    end




  end



end
