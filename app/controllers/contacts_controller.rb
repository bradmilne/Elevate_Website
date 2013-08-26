class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params[:contact])
    
  	if @contact.save
  	  redirect_to new_contact_path, :notice => "Thanks for contacting us! We'll be in touch shortly."
  	else
  		render new_contact_path
  		flash[:notice] = "Oops. Please enter the correct information and try again."
  	end
  end
end
