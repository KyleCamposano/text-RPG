#include <iostream>
#include <string>
#include "GameDecisionTree.h"

using namespace std;

// [NOTES] Doesn't look like it needs updating or imp. here.
// add the 2 functions in class GameDecisionTree<Story>

int main() {
    GameDecisionTree<Story> myGame;

    string filename = "/Users/Kyle/CLionProjects/RPGTree/Camposano_KyleRPG/story.txt";  // Specify the input file
    char delimiter = '|';            //  '|' is the delimiter, change this to ',' if you choose

    // Load the story data from the file
    myGame.loadStoryFromFile(filename, delimiter);

    // Start the game
    myGame.playGame();

    return 0;
}