def full_pyramide
	puts "Choisis un nombre entre 1 et 25 ?"
	number = gets.chomp.to_i
if (number > 0) && (number < 26)
	number.times do |diez|
		nb_space = number - (diez + 1)
		diez += 1
		puts " " * nb_space + "#" * (diez*2-1)
	end
else
	return puts "mauvais nombre"
end
end


def perform
	full_pyramide
end

perform