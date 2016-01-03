require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test 'Post-Comment' do
    post = posts(:one)

    comment = post.comments.new(body: '댓글이다')
    comment.save!

    assert_equal post, comment.post
    assert_includes post.comments, comment
  end
end
