def choose_number
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	number = gets.chomp.to_i
	while (number % 2 ==0) do
		puts "Pas un nombre pair !"
		exit
	end
		return number
end


def full_pyramide(number)
if (number > 0) && (number < 26)
	number.times do |diez|
		nb_space = number - diez
		puts " " * nb_space + "#" * (diez*2+1)
		diez += 1
	end
else
	puts "mauvais nombre"
end 
end

def wtf_pyramide(nb)
if (nb > 0) && (nb < 26)
	nb.times do |i|
		nb_diez = nb - i
		puts "#" * (nb_diez*2+1)  
		print " " * (i+1)
	end
	puts "#"
else
	return puts "mauvais nombre"
end
end



def perform
	nb = choose_number
	full_pyramide(nb)
	wtf_pyramide(nb)
end

perform