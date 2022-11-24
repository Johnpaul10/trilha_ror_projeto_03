require 'rails_helper'

RSpec.describe Author, :type => :model do
    it "is not valid without a name" do
      author = Author.new(email:'sample@first.com',year:2010).save
      expect(author).to eq(false)
    end

    it "is not valid without a year" do 
      author = Author.new(name:'First',email:'sample@first.com').save
      expect(author).to eq(false)
    end

    it "is not valid without a email" do
      author = Author.new(name:'First',year:2010).save
      expect(author).to eq(false)
    end

    it "saves it successffuly" do
      author = Author.new(name:'First',email:'sample@first.com',year:2010).save
      expect(author).to eq(true)
    end
end
