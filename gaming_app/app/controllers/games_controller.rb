class GamesController < ApplicationController
  def index
    @time = Time.now
    @games = { "Magic 8 Ball" => magic_8_ball_path, "Secret Number" => secret_number_path, "Rock, Paper, Scissors" => games_rock_paper_scissors_path }
  end

  def magic_8_ball
  end

  def magic_8_ball_play
    @question = params["question"].humanize
    fortunes = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
         "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
         "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
         "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
         "Don't count on it", "My reply is no", "My sources say no",
         "Outlook not so good", "Very doubtful"]
    @answer = fortunes.sample
  end

  def secret_number
  end

  def secret_number_play
    @guess = params[:guess].to_i
    @answer = rand(10) + 1
    if @guess == @answer
      render "win"
    else
      render "lose"
    end
  end

  def rock_paper_scissors
  end

  def rock_paper_scissors_play
    @throw = params[:throw].downcase
    choices = ["rock", "paper", "scissors"]
    @computer = choices.sample
    win = { "rock" => "scissors", "scissors" => "paper", "paper" => "rock", }
    lose = {"scissors" => "rock", "paper" => "scissors", "rock" => "paper"}


    if @throw == @computer
      status = "win"
    end

    if @throw == "rock" && @computer == "paper"
      status = "lose"
    end
    if @throw == "rock" && @computer == "scissors"
      status =  "win"
    end
    if @throw == "paper" && @computer == "rock"
      status =  "win"
    end
    if @throw == "paper" && @computer == "scissors"
      status = "lose"
    end
    if @throw == "scissors" && @computer = "rock"
      status = "lose"
    end
    if @throw == "scissors" && @computer = "paper"
      status = "win"
    end
    @status = status
  end

end
