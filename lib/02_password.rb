def signup
	puts "Défini ton mot de passe ?"
	print ">"
	require 'io/console'
	password = STDIN.noecho(&:gets).chomp
	return password
end

def login(password)	
	puts "Ecrit ton mot de passe !"
	print ">"
	require 'io/console'
	input = STDIN.noecho(&:gets).chomp
	if (input != password)
		login(password)
else (input == password)
	welcome_screen
end
end

def welcome_screen
	puts "bienvenue dans les serveurs top secret de la NSA"
end



def perform
	password = signup
	login(password)
end

perform


