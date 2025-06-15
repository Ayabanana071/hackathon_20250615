require 'rails_helper'

RSpec.describe 'posts/index', type: :view do
  before do
    assign(:posts, [
             Post.create!(
               content: 'MyText'
             ),
             Post.create!(
               content: 'MyText'
             )
           ])
  end

  it 'renders a list of posts' do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new('MyText'), count: 2
  end
end
