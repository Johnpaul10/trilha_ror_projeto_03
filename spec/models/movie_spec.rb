require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "is not valid without a title" do
    movie = Movie.new(year:2010).save
    expect(movie).to eq(false)
  end

  it "is not valid without a year" do 
    movie = Movie.new(title:"A tranca do Rei Careca").save
    expect(movie).to eq(false)
  end

  it "saves it successffuly" do
    movie = Movie.new(title:"A tranca do Rei Careca",year:2010).save
    expect(movie).to eq(true)
  end
end
