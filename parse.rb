# s = Roo::Excelx.new("spreadsheet.xlsx")         
# s.default_sheet = s.sheets.first

# (s.first_column..s.last_column).each do |col|
#   q = Question.new
#   q.text = s.cell(1, col)
#   q.save
# end

# ((s.first_row+1)..s.last_row).each do |row_num|
#   f = Facility.new
#   f.name = s.cell(row_num, 'Y')
#   f.save
# end

# surveys = Survey.all
# questions = Question.all

# surveys.each_with_index do |survey, s_index|
#   questions.each_with_index do |question, q_index|
#     r = Response.new
#     r.text = s.cell(s_index+2, q_index+1)
#     r.question_id = question.id
#     r.survey_id = survey.id
#     r.save
#   end
# end



q = Question.find(25)
q.responses.each do |response|
  s = response.survey
  f = Facility.find_by(name: response.text) 
  s.facility_id = f.id
  s.save
end