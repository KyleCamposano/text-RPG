#ifndef NODE_H
#define NODE_H


// [NOTES] leave as is.

template <typename T>
class Node {
public:
    T data;
    Node* left;
    Node* right;

    Node(T value) : data(value), left(nullptr), right(nullptr) {}
};

#endif // NODE_H
