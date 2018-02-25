def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  position_int = user_input.to_i - 1
  if position_int.is_a?(Integer)
    return position_int
  else
    return -1
  end
end

def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O"
    valid = false
  elsif index < 0 || index > 8
    valid = false
  else
    valid = true
  end
  valid
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index] == " " || board[index] == "" || board[index] == nil ? false : true
end


def move (board, position, character='X')
  board[position] = character
  display_board(board)
end

def turn(board)
  valid = false
  until valid == true
    puts "Please enter 1-9:"
    user_value = gets.strip
    index = input_to_index(user_value)
    valid = valid_move?(board, index)
  end
  move(board, index)
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
turn(board)
