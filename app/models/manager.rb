class Manager < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3}
  validates_each :name do |record, attr, value|
    # record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
    # or
    record.errors.messages[:name] << 'must start with upper case' if value =~ /\A[[:lower:]]/
  end
end
