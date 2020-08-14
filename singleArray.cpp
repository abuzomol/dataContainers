#include <iostream>
#include <vector>
#include <chrono>
#include <random>
using namespace std;

/**************************************************************
 * Helper functions for accessing container of a node.
 **************************************************************/

//access the container in a meaningful way to estimate memory references. Tree is single dimensional array
pair<double, double> accessContainer(double *tree, int size) {
    double sum = 0;

    auto start = std::chrono::high_resolution_clock::now();
    for (unsigned long long i = 0; i < size; i++) {
        sum += tree[i];
    }
    auto finish = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = finish - start;
    return {sum, elapsed.count()};
}

//check if data within nodes are local to each other
template<class T>
void checkLocality(T tree)
{
    //print the memory address
    for(int& node : tree)
    {
        cout << &node << " ";

    }
    cout <<endl;
    //print the content
    for(int& node : tree)
    {
        cout << node << " ";
    }
    cout<<endl;
}
/**************************************************************
 * Functions to test the performance of constructing containers of nodes
 **************************************************************/
//function returns the initialization time and accessTime with containerSize
vector<double> testSingleArray(int N, int C) {
    int M = N * C;
    auto start = std::chrono::high_resolution_clock::now();
    double *tree = (double *) malloc(M * sizeof(double));
    for (int i = 0; i < M; i++) {
        tree[i] = 1;
    }
    auto finish = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = finish - start;
    pair<double, double> access = accessContainer(tree, M);
    free(tree);
    tree = NULL;
    return {access.first, elapsed.count(), access.second};
}


int main(int argc, char** argv) {
    if(argc < 2 || argc > 3)
    {
        cout << "Error: Incorrect  number of arguments!" <<endl;
        cout<<"Usage: " << argv[0] << " <number of nodes> <number of values contained in each node>";
        return -1;
    }
    int N = stoi(argv[1]), C = stoi(argv[2]);
    vector<double> initAccess = testSingleArray(N,C);
    cout << "totalSum: " <<initAccess[0] <<endl;
    cout << "initialization: " << initAccess[1] <<endl;
    cout << "Access: " << initAccess[2] <<endl;
    cout << "sizeOf: " << sizeof(double) <<endl;
    return 0;
}
