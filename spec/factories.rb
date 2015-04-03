FactoryGirl.define do
  factory(:user) do
    name("Bob")
    email("me@me.com")
    password("test1234")
    id(2)
  end

  factory(:post) do
    title("title")
    body("body")
    date("01/02/1999")
    user_id(2)
  end
end
