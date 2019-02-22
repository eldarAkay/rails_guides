a = [{created_by: :me, comment: nil}, {created_by: :me, comment: hello}]

b = {created_by: "ede", comment: nil}
b.compact


[{created_by: :me, comment: nil}, {created_by: :me, comment: :hello}].map(&:compact)
    
@items.map(&:compact)
