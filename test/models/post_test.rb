require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'create a new post with valid attributes' do
    assert_difference -> { Post.count }, 1 do
      Post.create(title: '제ㅋ목ㅋ', body: '내ㅋ용ㅋ')
    end
  end

  test 'cannot create a new post with invalid attributes' do
    assert_no_difference -> { Post.count } do
      Post.create(title: '', body: '')
    end
  end
end
