User.destroy_all

User.create(email: "1@1", password: "111111", password_confirmation: "111111")
User.create(email: "2@2", password: "111111", password_confirmation: "111111")
User.create(email: "3@3", password: "111111", password_confirmation: "111111")
User.create(email: "4@4", password: "111111", password_confirmation: "111111")
User.create(email: "5@5", password: "111111", password_confirmation: "111111")

Post.destroy_all

post_1 = Post.create(title: "안녕", content: "하세요")

post_1.comments.create(body: "네 안녕하세요!")
post_1.comments.create(body: "저는 별로...")

post_2 = Post.create(title: "worklion", content: "B반")
post_2.comments.create(body: "와아!!!")
post_2.comments.create(body: "화이팅!!!")