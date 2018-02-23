class BlogMailer < ApplicationMailer
  def blog_mail(user, blog)
    puts "---------------------"
    puts user.email
   @user = user
   @blog = blog
   mail to: @user.email, subject: "Blog作成確認メール"
  end
end
