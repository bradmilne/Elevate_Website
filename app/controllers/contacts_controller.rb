class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params[:contact])
    @name = params[:contact][:name]
    @company = params[:contact][:company]
    @email = params[:contact][:email]
    @phone = params[:contact][:phone]
    
  	if @contact.save
      ContactMailer.notify_sales(@name, @company, @email, @phone).deliver
  	  redirect_to new_contact_path, :notice => "Thanks for contacting us! We'll be in touch shortly."
  	else
  		render new_contact_path
  		flash[:notice] = "Oops. Please enter the correct information and try again."
  	end
  end
end
