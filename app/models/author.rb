class Author < ApplicationRecord
  has_one :book, dependent: :destroy
end