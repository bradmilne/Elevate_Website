class ContactMailer < ActionMailer::Base
  default from: "support@getelevate.com"
  default to: ["brad.milne@getelevate.com", "sandy.gibson@getelevate.com"]

  def notify_sales(name, company, email)
  	@name = name
  	@company = company
  	@email = email
  	mail(subject: "New Contact")
  end
end
