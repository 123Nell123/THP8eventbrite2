class UserMailer < ApplicationMailer

    default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://eventbrite.herokuapp.com'
 
     mail(to: @user.email,from: 'purhasard@hotmail.com' , subject: 'Welcome to My Awesome Site')

  
  end
end
