def board_a
  board_a = [
    ['x', 'o', 'x'],
    ['x', nil, 'o'],
    ['x', 'o', nil]
  ]
end
def board_b
  board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]
end

board_a.each_with_index do |row, row_index|
    noughts_crosses = []
    row.each do |gamespot|
    if gamespot.nil?
      noughts_crosses << '-'
    else
      noughts_crosses << "#{gamespot}"
    end
  end
  puts noughts_crosses.join("|")
  if row_index < board_a.size - 1
    (row.size * 1 + row.size - 1 ).times { print '-'}
  end
  puts ""
end

board_b.each_with_index do |row, row_index|
    noughts_crosses = []
    row.each do |gamespot|
    if gamespot.nil?
      noughts_crosses << '-'
    else
      noughts_crosses << "#{gamespot}"
    end
  end
  puts noughts_crosses.join("|")
  if row_index < board_b.size - 1
    (row.size * 1 + row.size - 1 ).times { print '-'}
  end
  puts ""
end

board_a
board_b
