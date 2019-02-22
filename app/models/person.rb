require_relative './validators/hr_validator'

class Person < ApplicationRecord
  validates :name, presence: true, confirmation: {case_sensitive: false}, length: {minimum: 2}
  validates :terms_of_service, acceptance: true
  validates :subdomain, inclusion: {in: %w(www us ca jp)}
  validates :phone_number, numericality: true, uniqueness: true
  validates :job_title, presence: true
  validates_with HrValidator, fields: [:expected_salary]
  validates_each :name do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end
end