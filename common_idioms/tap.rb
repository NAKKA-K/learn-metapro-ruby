p ['a', 'b', 'c'].push('d').shift.upcase.next #=> B

temp = ['a', 'b', 'c'].push('d').shift
puts temp
#=> a
x = temp.upcase.next

['a', 'b', 'c'].push('d').shift.tap {|x| puts x }.upcase.next
#=> a
