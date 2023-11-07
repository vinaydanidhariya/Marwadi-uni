// Example 1:
// Input: arr[] = {2,5,1,3,0};
// Output: 0
// Explanation: 0 is the smallest element in the array. 

// Example2: 
// Input: arr[] = {8,10,5,7,9};
// Output: 5
// Explanation: 5 is the smallest element in the array.

#include <iostream>
using namespace std;

int main() {
	   cout << "Enter the size of array: ";
    int n;
    cin >> n;
    int arr[n];
    for (int i = 0; i < n; i++) {
        cout << "Enter the " << i + 1 << " element: ";
        cin >> arr[i];
    }

    int min = arr[0];
	for (int i = 0; i < n; i++) {
		if (arr[i] < min) {
			min = arr[i];
		}
	}
	cout<<"The minimum element in the array is: %d", min;
}