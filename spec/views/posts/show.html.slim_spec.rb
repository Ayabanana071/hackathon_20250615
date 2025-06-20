require 'rails_helper'

RSpec.describe 'posts/show', type: :view do
  before do
    assign(:post, Post.create!(
                    content: 'MyText'
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/MyText/)
  end
end
