class Invoice < ApplicationRecord
  validate :discount_cannot_be_greater_than_total_value
  
  private
  def discount_cannot_be_greater_than_total_value
    if discount > total_value
      errors.add(:discount, "can't be greater than total value")
    end
  end
end
