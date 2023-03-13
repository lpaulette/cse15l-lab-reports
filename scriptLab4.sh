ssh cs15lwi23akc@ieng6.ucsd.edu

git clone https://github.com/lpaulette/lab7.git

cd lab7

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

nano ListExamples.java

sudo apt install xdotool

xdotool key ctrl+W 
xdotool key ctrl+T
echo "43"
xdotool key ctrl+W
xdotool key ctrl+R
echo "index1"
echo "index2"
echo "Y"
xdotool key ctrl+C
xdotool key ctrl+O
xdotool key ctrl+X

javac javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

git add ListExamples.java
git commit -m "changed ListExamples"
git push

