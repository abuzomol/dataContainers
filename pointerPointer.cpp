#include <iostream>
#include <vector>
#include <chrono>
#include <random>
using namespace std;
/**************************************************************
 * Containers of Nodes
 **************************************************************/
class Node {
public:
    double *x;

    Node(int size) {
        x = (double *) malloc(size * sizeof(double));
        for (int j = 0; j < size; j++) {
            x[j] = 2.0;
        }
    }
    //  ~Node() { free(x); }
};
/**************************************************************
 * Helper functions for accessing container of a node.
 **************************************************************/

//access the container in a meaningful way to estimate memory references. Tree is double dimensional array
template<class T>
pair<double,double> accessContainer(T tree, int N, int C) {
    double sum = 0;

    auto start = std::chrono::high_resolution_clock::now();
    for (unsigned long long i = 0; i < N; i++) {
        for (unsigned long long j = 0; j < C; j++)
            sum += tree[i].x[j];
    }
    auto finish = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = finish - start;
    return {sum, elapsed.count()};
}
//check if data within nodes are local to each other
template<class T>
void checkLocality(T tree, int N, int C)
{
    for (unsigned long long i = 0; i < N; i++) {
        cout << tree[i].x[0]  << " ";
    }
    cout <<endl;

    for (unsigned long long i = 1; i < N; i++) {
        cout << tree[i].x<< " ";
    }
    cout <<endl;
    for (unsigned long long i = 1; i < N; i++) {
            cout << &tree[i] - &tree[i-1] << " ";
    }
    cout <<endl;
}
/**************************************************************
 * Functions to test the performance of constructing containers of nodes
 **************************************************************/


vector<double> testPointerPointer(int N, int C) {
    auto start = std::chrono::high_resolution_clock::now();
    Node *tree = (Node *) malloc(N * sizeof(Node));
    for (int i = 0; i < N; i++) {
        tree[i].x = (double *) malloc(C * sizeof(double));
        for (int j = 0; j < C; j++)
            tree[i].x[j] = 1;
    }
    auto finish = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = finish - start;
    pair<double, double> access = accessContainer(tree, N,C);
    free(tree);
    tree = NULL;
    return {access.first, elapsed.count(), access.second};
}


int main(int argc, char** argv) {
    if(argc < 2 || argc > 3)
    {
        cout << "Error: Incorrect number of arguments!" <<endl;
        cout<<"Usage: " << argv[0] << " <number of nodes> <number of values contained in each node>";
        return -1;
    }
    int N = stoi(argv[1]), C = stoi(argv[2]);
    //int N = 4000000, C = 1;
    vector<double> initAccess = testPointerPointer(N,C);
    cout << "totalSum: " <<initAccess[0] <<endl;
    cout << "initialization: " << initAccess[1] <<endl;
    cout << "Access: " << initAccess[2] <<endl;
    cout << "sizeOf: " << sizeof(Node) <<endl;
    return 0;
}
