require "test_helper"

class NovelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @novel = novels(:one)
    @novel.update(password: 'password123') # テスト用のパスワードを設定
    @password = 'password123'
  end


  test "should get index" do
    get novels_url
    assert_response :success
  end

  test "should get new" do
    get new_novel_url
    assert_response :success
  end

  test "should create novel" do
    assert_difference("Novel.count") do
      post novels_url, params: {
        novel: {
          title: @novel.title,
          author: @novel.author,
          novel_body: @novel.novel_body,
          novel_tags: @novel.novel_tags,
          password: "password123", # パスワードを追加
          password_confirmation: "password123", # パスワード確認
          point: @novel.point,
          publish: @novel.publish
        }
      }
    end

    assert_redirected_to novel_url(Novel.last)
  end

  test "should show novel" do
    get novel_url(@novel)
    assert_response :success
  end

  test "should get edit" do
    post confirm_password_novel_url(@novel), params: { password: @password }
    follow_redirect!
    
    get edit_novel_url(@novel)
    assert_response :success
  end

  test "should update novel" do
    patch novel_url(@novel), 
    params: {
      novel: {
        title: @novel.title,
        author: @novel.author,
        novel_body: @novel.novel_body,
        novel_tags: @novel.novel_tags,
        password: "password123", # パスワードを追加
        password_confirmation: "password123", # パスワード確認
        point: @novel.point,
        publish: @novel.publish
      }
    }
    assert_redirected_to novel_url(@novel)
  end

  test "should destroy novel" do
    assert_difference("Novel.count", -1) do
      delete novel_url(@novel)
    end

    assert_redirected_to novels_url
  end
end
