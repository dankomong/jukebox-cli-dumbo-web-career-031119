songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  #this method should be the same as in jukebox.rb
  help = "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
  puts help
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include?(input)
    puts "Playing #{input}"
  elsif (1..9).include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"  
end

def run(songs)
  answer = ""
  help
  while answer do
    puts "Please enter a command:"
    answer = gets.chomp
    if answer == "list"
      list(songs)
    elsif answer == "play"
      play(songs)
    elsif answer == "help"
      help
    elsif answer == "exit"
      exit_jukebox
      break
    end
  end
end
