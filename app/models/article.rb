class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
  validates :terms_of_service, acceptance: { message: 'Please agree on our terms of service' }
end
