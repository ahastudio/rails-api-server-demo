require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test 'should create comment' do
    assert_difference -> { Comment.count } do
      post post_comments_url(@post), params: { comment: { body: '댓!글!' } }
    end

    assert_redirected_to post_path(@post)
  end
end
