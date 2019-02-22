class HrValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:base] << "Candidate wants too much" if record.expected_salary > 600
  end
end