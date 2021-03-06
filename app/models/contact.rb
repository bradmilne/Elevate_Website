class Contact < ActiveRecord::Base
  attr_accessible :company, :email, :name, :phone

  validates_presence_of :email
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
