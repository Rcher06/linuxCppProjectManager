string=""
for f in src/*.cpp;
do	
	string+="./"$f" "
done
gcc $string -lstdc++ -o bin/main.out
./bin/main.out
