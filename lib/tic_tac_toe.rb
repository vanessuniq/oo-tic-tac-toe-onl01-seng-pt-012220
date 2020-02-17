<<<<<<< HEAD
require 'pry'
class TicTacToe
  attr_accessor :board
  def initialize
    @board = Array.new(9, " ")
=======
class TicTacToe
  attr_accessor :board, :user_input
  def initialize (board = Array.new(9, " "))
    @board = board
>>>>>>> 6f437d3389393d210ef41326660b85ce556d417a
  end
  
  WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]
  
  def display_board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
<<<<<<< HEAD
  def input_to_index(player_input)
    player_input.to_i - 1
=======
  def input_to_index(user_input)
    user_input.to_i - 1
>>>>>>> 6f437d3389393d210ef41326660b85ce556d417a
  end
  
  def move(player_input, player = "X" )
    @board[player_input] = player
  end
  
  def position_taken?(player_input)
    if @board[player_input].nil? || @board[player_input].strip.empty?
      false
    else
      true 
    end
  end
  
  def valid_move?(player_input)
<<<<<<< HEAD
    player_input.between?(0,8) && !position_taken?(player_input)
  end
  
  def turn
    puts "please enter number between 1-9:"
    player_input = input_to_index(gets.chomp)
    if valid_move?(player_input)
      move(player_input, current_player)
=======
    if player_input.between?(0,8) && !(self.position_taken?(player_input))
      true
    else 
      false
    end
  end
  
  def turn
    puts "please enter 1-9:"
    @user_input = self.input_to_index(gets.chomp)
    if valid_move?(@user_input)
      move(@user_input, current_player)
>>>>>>> 6f437d3389393d210ef41326660b85ce556d417a
      display_board
    else
      turn
    end
    
  end
  
  def turn_count
    @board.count {|slot| !(slot.nil? || slot.strip.empty?)} 
  end
  
  def current_player
    (self.turn_count.even?)? "X" : "O"
  end
  
  def won?
    winning_combination = nil
    WIN_COMBINATIONS.each do |combination|
      if combination.all? {|index| @board[index] =='X'}
        winning_combination = combination
      elsif combination.all? {|index| @board[index] == 'O'}
        winning_combination = combination
      else
        winning_combination
      end
    end
    winning_combination
     
  end
  
  def full?
    @board.all? {|slot| slot == "X" || slot == "O"}
  end
  
  def draw?
<<<<<<< HEAD
    full? && !won?
  end
  
  def over?
    won? || draw?
  end
  
  def winner
    if won?
=======
    if full? == true && won? == nil
      true
    else 
      false
    end
  end
  
  def over?
    if won? == true || full? == true
      true 
    end
  end
  
  def winner
    if won? != nil
>>>>>>> 6f437d3389393d210ef41326660b85ce556d417a
      @board[won?[0]]
    end
  end
  
  def play
<<<<<<< HEAD
    turn until over?
    if won?
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat\'s Game!"
    end
   
=======
    until over?
      turn
    end
    
    if won? == true 
      puts "Congratulations #{self.winner}!"
    elsif draw? == true 
      puts "Cat\'s Game!"
    end
>>>>>>> 6f437d3389393d210ef41326660b85ce556d417a
  end
end