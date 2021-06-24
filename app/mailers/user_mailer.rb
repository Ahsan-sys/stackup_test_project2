class UserMailer < ApplicationMailer

	def user_send(user)
		@user = user

		mail to: user.email, subject: "Welcome", from: "ahsan4401360@gmail.com"
	end
		
end