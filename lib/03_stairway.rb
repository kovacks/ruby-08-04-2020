$position = 0

def start_game
	puts "Bienvenue dans le jeu des marches !"
end

def roll
	puts "Lance le dé en me donnant un chiffre compris entre 1 et 6 !"
	gets
	dice = rand(1...6)
	if (dice < 0 || dice > 6)
		roll
	else
		return dice
	end
end

def game()
	while ($position < 10)
		dice =roll
		if(dice == 1)
			$position = $position -1
			puts "Tu descend d'une marche ! Tu est sur la marche n°#{$position} !"
		elsif (dice == 2 || dice == 3 || dice == 4)
			puts"Tu ne bouge pas, tu es sur la marche n°#{$position} !"
		else
			$position = $position +1
			puts "Tu monte d'une marche, tu es à présent sur la marche n°#{$position}  !"
		end
	end
end

def perform
	start_game
	game()
end

perform