# frozen_string_literal: true
require 'pry'

MAX_WINS = 10

class Player
  attr_accessor :move, :name, :score, :moves_history

  def initialize
    @moves_history = []
    set_name
  end

  def won_entire_game?
    @score == MAX_WINS
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard or spock"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Wall-E'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class Move
  VALUES = ['rock', 'paper', 'scissors', 'spock', 'lizard'].freeze

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'spock'
  end

  def >(other_move)
    (rock? && (other_move.scissors? || other_move.lizard?)) ||
      (paper? && (other_move.rock? || other_move.spock?)) ||
      (scissors? && (other_move.paper? || other_move.lizard?)) ||
      (lizard? && (other_move.paper? || other_move.spock?)) ||
      (spock? && (other_move.rock? || other_move.scissors?))
  end

  def <(other_move)
    (rock? && (other_move.paper? || other_move.spock?)) ||
      (paper? && (other_move.scissors? || other_move.lizard?)) ||
      (scissors? && (other_move.rock? || other_move.spock?)) ||
      (lizard? && (other_move.scissors? || other_move.rock?)) ||
      (spock? && (other_move.paper? || other_move.lizard?))
  end

  def to_s
    @value
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
    puts "Objective is win #{MAX_WINS} times before the computer"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move > computer.move
      human.score += 1
      puts "#{human.name} won!"
    elsif human.move < computer.move
      computer.score += 1
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def display_score
    puts "#{human.score} (#{human.name}) : #{computer.score} (#{computer.name})"
    puts "Congratulations! #{human.name} won #{MAX_WINS} times!" if human.won_entire_game?
    puts "Sorry! #{computer.name} won #{MAX_WINS} times!" if computer.won_entire_game?
  end

  def display_moves_history
    puts "#{human.name}'s History of Moves: #{human.moves_history}"
    puts "#{computer.name}'s History of Moves: #{computer.moves_history}"
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.casecmp('n') == 0
    return true if answer.casecmp('y') == 0
  end

  def play
    display_welcome_message
    loop do
      human.score = 0
      computer.score = 0
      loop do
        human.choose
        computer.choose
        display_moves
        display_winner
        display_score
        human.moves_history << human.move.value
        computer.moves_history << computer.move.value
        display_moves_history
        break if human.won_entire_game? || computer.won_entire_game?
      end
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
