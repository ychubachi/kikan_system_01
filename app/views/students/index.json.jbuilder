json.array!(@students) do |student|
  json.extract! student, :id, :student_num, :name
  json.url student_url(student, format: :json)
end
