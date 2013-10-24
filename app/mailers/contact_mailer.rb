class ContactMailer < ActionMailer::Base
  default from: "support@getelevate.com"
  default to: ["brad.milne@getelevate.com", "sandy.gibson@getelevate.com"]

  def notify_sales(name, company, email, phone)
  	@name = name
  	@company = company
  	@email = email
  	@phone = phone
  	mail(subject: "New Contact")
  end
end
