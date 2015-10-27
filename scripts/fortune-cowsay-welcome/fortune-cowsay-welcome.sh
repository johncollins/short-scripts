# Capture a random animal (thing) from cowsay
# Then make it say something from fortune

f=`cowsay -l | head -n 1 | sed 's/\([a-zA-Z0-9]* \)\{3\}\(.*\):/\2/'`
g=$f/*
random_animal_file=$(echo $g | cut -d" " -f$((RANDOM % ${#g})))
echo $random_animal_file
fortune | cowsay -f $random_animal_file
