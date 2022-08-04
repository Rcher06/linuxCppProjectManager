mkdir $1 && mkdir $1/src && mkdir $1/bin
echo "Created Folder: $1"

# Creating Files

echo "#include <iostream>
using namespace std;

int main() {


    return 0;
}" >> $1/src/$1.cpp

# Creating Compile Script

echo 'string=""
for f in src/*.cpp;
do	
	string+="./"$f" "
done
gcc $string -lstdc++ -o bin/main.out' >> $1/compile.sh
chmod +x $1/compile.sh

# Creating Run Script

echo "./bin/main.out" >> $1/run.sh
chmod +x $1/run.sh

# Creating Compile and Run Script

echo 'string=""
for f in src/*.cpp;
do	
	string+="./"$f" "
done
gcc $string -lstdc++ -o bin/main.out
./bin/main.out' >> $1/magic.sh
chmod +x $1/magic.sh
