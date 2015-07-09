require_relative '../sort.rb'

describe "#insertion_sort" do

  it 'should sort unsorted list' do
    expect(insertion_sort([1,3,7,2,5])).to eq ([1,2,3,5,7])
  end

  it 'should sort unsorted list' do
    expect(insertion_sort([1,3,7,2,5,9])).to eq ([1,2,3,5,7,9])
  end

  it 'should sort unsorted list' do
    expect(insertion_sort([9,8,7,6,5,4,3,2,1])).to eq ([1,2,3,4,5,6,7,8,9])
  end
end


describe "#bubble_sort" do

  it 'should sort unsorted list' do
    expect(bubble_sort([1,3,7,2,5])).to eq ([1,2,3,5,7])
  end

  it 'should sort unsorted list' do
    expect(bubble_sort([1,3,7,2,5,9])).to eq ([1,2,3,5,7,9])
  end

  it 'should sort unsorted list' do
    expect(bubble_sort([9,8,7,6,5,4,3,2,1])).to eq ([1,2,3,4,5,6,7,8,9])
  end
end

describe "#merge_sort" do

  it 'should sort unsorted list' do
    expect(merge_sort([1,3,7,2,5])).to eq ([1,2,3,5,7])
  end

  it 'should sort unsorted list' do
    expect(merge_sort([1,3,7,2,5,9])).to eq ([1,2,3,5,7,9])
  end

  it 'should sort unsorted list' do
    expect(merge_sort([9,8,7,6,5,4,3,2,1])).to eq ([1,2,3,4,5,6,7,8,9])
  end

  it 'should sort unsorted list' do
    expect(merge_sort([10,9,8,7,6,5,4,3,2,1])).to eq ([1,2,3,4,5,6,7,8,9,10])
  end
end

