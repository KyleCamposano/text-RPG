#ifndef GAMEDECISIONTREE_H
#define GAMEDECISIONTREE_H

#include <unordered_map>
#include <fstream>
#include <sstream>
#include <iostream>
#include "Node.h"
#include "Story.h"

// [NOTES] implement the 2 f(x)s : loadStoryFromFile(), playGame()

template <typename T>
class GameDecisionTree {
private:
    Node<T>* root;
    unordered_map<int, Node<T>*> eventMap;

public:
    GameDecisionTree() : root(nullptr) {}

    // Function to load story data from a text file and build the binary tree
    void loadStoryFromFile(const string& filename, char delimiter) {
        ifstream file(filename);
        if (!file.is_open()) {
            cout << "Unable to open file.\n";
            return;
        }

        string line;

        // parses line by line from txt file & creates story
        while (getline(file, line)) {
            stringstream ss(line);
            string desc;
            int eventNum, LeventNum, ReventNum;

            getline(ss, desc, delimiter);
            ss >> eventNum;
            ss.ignore();
            ss >> LeventNum;
            ss.ignore();
            ss >> ReventNum;

            // cout << "(txt file) parsed event/ node: " << eventNum << ", Left: " << LeventNum << ", Right: " << ReventNum << endl; // debug purposes ONLY

            // creates the story w/ data from txt file
            Story story(desc, eventNum, LeventNum, ReventNum);

            // newNode
            if (eventMap.count(eventNum) == 0) {
                eventMap[eventNum] = new Node<T>(story);
            } else {
                eventMap[eventNum]->data = story;
            }

            // default root (if first node)
            if (eventNum == 1) {
                root = eventMap[eventNum];
            }

            // default vals for children
            if (LeventNum != -1 && eventMap.count(LeventNum) == 0) {
                eventMap[LeventNum] = new Node<T>(Story("", LeventNum, -1, -1));
            }
            if (ReventNum != -1 && eventMap.count(ReventNum) == 0) {
                eventMap[ReventNum] = new Node<T>(Story("", ReventNum, -1, -1));
            }
        }
        file.close();

        // iterator from unordered_map, using prof's implementation
        typename unordered_map<int, Node<T>*>::iterator it;
        // iterator from unordered_map to it thru each node, assigning data and children to their parents
        for (it = eventMap.begin(); it != eventMap.end(); ++it) {
            // int eventNum = it->first;
            Node<T>* node = it->second;

            // assigns children & data
            int leftNum = node->data.leftEventNumber;
            int rightNum = node->data.rightEventNumber;

            if (leftNum != -1 && eventMap.count(leftNum)) {
                node->left = eventMap[leftNum];
            }
            if (rightNum != -1 && eventMap.count(rightNum)) {
                node->right = eventMap[rightNum];
            }
        }

        // debug purposes
        if (root == nullptr) {
            cout << "Root is null. Something went wrong.\n";
        }

    }

    // Function to start the game and traverse the tree based on user input
    void playGame() {
        Node<T>* currentNode = root;

        // debug purposes
        if (root == nullptr) {
            cout << "Root is nullptr. Something went wrong.\n";
            return;
        }

        // prompts path to the user
        while (currentNode != nullptr) {
            cout << currentNode->data.description << "\nWhich do you take? ('L' for left, 'R' right)\n";
            char choice;
            cin >> choice;

            if (choice == 'L' || choice == 'l') {
                currentNode = currentNode->left;
            } else if (choice == 'R' || choice == 'r') {
                currentNode = currentNode->right;
            } else {
                cout << "Invalid choice. Try again.\n";
            }
        }
        cout << "THE END. \nThank you for playing the game.\n"; // no curr node -> null -> end of path
    }
};

#endif // GAMEDECISIONTREE_H
