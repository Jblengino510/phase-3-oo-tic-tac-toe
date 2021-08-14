class TicTacToe
    WIN_COMBINATIONS = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 4, 8],
      [2, 4, 6],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5 ,8],
    ]
    #init
    def initialize
      @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    end
  #display_board
    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
  #input_to_index
    def input_to_index(input)
      input.to_i - 1
      # '1' => 1 => 0
    end
  #move
    def move(index, player)
      #replace value of 'index' with player
      @board[index] = player
    end
  #position_taken?
    def position_taken?(index)
      @board[index] !=  " "
    end
  #valid_move?
    def valid_move?(index)
      @board[index] == " "
    end
  #turn_count
    def turn_count
      @board.count { |i| i != " " }
    end
  #current_player
    def current_player
      turn_count.even? ? "X" : "O"
    end
    #turn
    def turn
      move = gets
      move = input_to_index(move)
     if  valid_move?(move)
        move(move, current_player)
     else
       turn
     end
     display_board
    end
  #won?
  #full?
  #draw?
  #over?
  #winner
  #play
  end