input = "1,S1-88,S2-53,S3-69,S4-64
         2,S1-92,S2-86,S3-93,S4-77
         3,S1-53,S2-59,S3-72,S4-59
         4,S1-60,S2-52,S3-85,S4-62
         5,S1-85,S2-53,S3-74,S4-61
         6,S1-72,S2-91,S3-72,S4-89
         7,S1-72,S2-71,S3-77,S4-91
         8,S1-89,S2-60,S3-94,S4-59
         9,S1-63,S2-61,S3-80,S4-57
         10,S1-86,S2-84,S3-65,S4-72
         11,S1-83,S2-75,S3-89,S4-89
         12,S1-65,S2-63,S3-65,S4-80
         13,S1-57,S2-56,S3-56,S4-59
         14,S1-60,S2-52,S3-77,S4-75
         15,S1-67,S2-56,S3-85,S4-62
         16,S1-75,S2-84,S3-61,S4-90
         17,S1-64,S2-53,S3-56,S4-77
         18,S1-60,S2-51,S3-55,S4-66
         19,S1-83,S2-70,S3-69,S4-65
         20,S1-57,S2-76,S3-75,S4-59
         21,S1-63,S2-84,S3-52,S4-74
         22,S1-61,S2-64,S3-65,S4-53
         23,S1-73,S2-83,S3-86,S4-73
         24,S1-58,S2-67,S3-74,S4-85
         25,S1-52,S2-53,S3-55,S4-83
         26,S1-57,S2-81,S3-55,S4-70
         27,S1-61,S2-68,S3-55,S4-91
         28,S1-63,S2-68,S3-65,S4-72
         29,S1-71,S2-63,S3-87,S4-70
         30,S1-60,S2-65,S3-79,S4-81
         31,S1-52,S2-92,S3-78,S4-81
         32,S1-66,S2-65,S3-80,S4-73
         33,S1-73,S2-51,S3-55,S4-58
         34,S1-86,S2-80,S3-66,S4-71
         35,S1-91,S2-69,S3-69,S4-90
         36,S1-70,S2-78,S3-72,S4-78
         37,S1-66,S2-94,S3-89,S4-52
         38,S1-94,S2-52,S3-58,S4-82
         39,S1-70,S2-51,S3-57,S4-54
         40,S1-92,S2-90,S3-55,S4-84
         41,S1-66,S2-81,S3-86,S4-75
         42,S1-67,S2-54,S3-77,S4-94
         43,S1-56,S2-80,S3-67,S4-57
         44,S1-83,S2-72,S3-77,S4-86
         45,S1-55,S2-79,S3-79,S4-66
         46,S1-53,S2-57,S3-50,S4-84
         47,S1-57,S2-76,S3-78,S4-52
         48,S1-69,S2-51,S3-69,S4-90
         49,S1-68,S2-72,S3-56,S4-81
         50,S1-85,S2-63,S3-55,S4-54"
         
students = input.split("\n").map { |record| record.split(",") }

grade_count = Hash.new(0)
grade_total = Hash.new(0)
student_data = []

students.each do |student|
  scores = student[1..-1].map { |score| score.split("-")[1].to_i }
  total_score = scores.sum
  grade = case total_score
            when 340..Float::INFINITY then 'A'
            when 300..339 then 'B'
            else 'C'
          end

  grade_count[grade] += 1
  grade_total[grade] += total_score

  student_data << {
    id: student[0],
    scores: scores,
    total_score: total_score,
    grade: grade
  }
end

above_average_count = 0
below_average_count = 0

student_data.each do |student|
  average_score = grade_total[student[:grade]].to_f / grade_count[student[:grade]]
  student[:average_compare] = student[:total_score] > average_score ? 'ABOVE' : 'BELOW'

  above_average_count += 1 if student[:average_compare] == 'ABOVE'
  below_average_count += 1 if student[:average_compare] == 'BELOW'
end

# Display scorecard
puts "Score card"
puts "ID Subject1 Subject2 Subject3 Subject4 Grand-Total Grade Average-Compare"
student_data.each do |student|
  puts "| #{student[:id]} | #{student[:scores].join(' | ')} | #{student[:total_score]} | #{student[:grade]} | #{student[:average_compare]} |"
end
puts "---------------------------------------------------"

# Display grade report
puts "Grade report"
puts "Number of students in A Grade :: #{grade_count['A']}"
puts "Number of students in B Grade :: #{grade_count['B']}"
puts "Number of students in C Grade :: #{grade_count['C']}"
puts "Number of students above their grade average :: #{above_average_count}"
puts "Number of students below their grade average :: #{below_average_count}"
