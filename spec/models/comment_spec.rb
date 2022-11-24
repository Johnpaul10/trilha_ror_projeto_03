require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "is not valid without a body of text" do
    comment = Comment.new(body:'').save
    expect(comment).to eq(false)
  end

end
