require_relative 'validators/my_validator'
require_relative 'validators/e_validator'

class Customer < ApplicationRecord
  includes ActiveModel::Validations
  
  validates :gender, inclusion: {in: %w(mail female), message: "not proper gender"}, allow_blank: true
  validates :name, if: :name?, length: { minimum: 2, message: ->(object, data) do
    "Hey #{object.name}!, #{data[:value]} is less than 2 symbols"
  end }
  validates_with MyValidator
  validates :email, presence: true, e: true
  def name?
    true
  end
end