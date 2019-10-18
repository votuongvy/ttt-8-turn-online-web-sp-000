#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(user_input)
  user_index = user_input.to_i - 1
  return user_index
end

#move
def move(board,user_index,character = "X")
  board[user_index] = character
  return board
end

#valid_move?
def position_taken?(board,user_index)
  if board[user_index] == " "
    return false
  elsif board[user_index] == ""
    return false
  elsif board[user_index] == nil
    return false
  elsif board[user_index] == "X"
    return true
  elsif board[user_index] == "O"
    return true
  end
end

def valid_move?(board,user_index)
  if user_index.between?(0, 8) && position_taken?(board,user_index) == false
    return true
  elsif user_index.between?(0, 8) && position_taken?(board,user_index) == true
    return false
  else
    return false
  end
end

#turn
def turn(user_index)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_index = input_to_index(user_input)
  if user_index.between?(0,8) && valid_move?(board,user_index) == true
    move(board,user_index,character = "X")
  else
    puts "Please enter another number between 1-9:"
  end
end
