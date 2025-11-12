#include <stdio.h>
#include <stdbool.h>

#define SIZE 24 // total number of elements in our 1D array
#define nRows 8 // number of rows for the 2D array
#define nCols 3 // number of columns for the 2D array

// FUNCTION PROTOTYPES
void setArray(int arr[], int length);
void rem_align(int arr[], int length, int pos);
void insert_align(int arr[], int length, int pos, int value);
void reshape(int arr[], int length, int arr2d[nRows][nCols], int rows, int cols);
void printTransMatrix(int arr2d[nRows][nCols], int rows, int cols);
bool foundDuplicate(int arr[], int length);
void flipArray(int arr[], int length, int flipped[]);
void printArray(int arr[], int length);
void printMatrix(int mat[][nCols], int rows);

// MAIN FUNCTION
int main() {
    int arr[SIZE]; // main 1D array with 24 elements
    int arr2d[nRows][nCols]; // 2D array with 8 rows and 3 columns
    int flipped[SIZE]; // array to store the flipped version

    // first we fill the array with values equal to their index positions
    printf("Setting array values to indices:\n");
    setArray(arr, SIZE);
    printArray(arr, SIZE);

    // remove the element at position 5 and shift everything left
    printf("\nRemoving element at index 5:\n");
    rem_align(arr, SIZE, 5);
    printArray(arr, SIZE - 1); // print SIZE-1 because we removed one element

    // insert 99 at position 3 and shift everything else to the right
    printf("\nInserting value 99 at index 3:\n");
    insert_align(arr, SIZE, 3, 99);
    printArray(arr, SIZE);

    // convert the 1D array into a 2D matrix, filling row by row
    printf("\nReshaping array into 2D matrix (row by row):\n");
    reshape(arr, SIZE, arr2d, nRows, nCols);
    printMatrix(arr2d, nRows);

    // print the matrix but reading column by column instead of row by row
    printf("\nPrinting the transposed matrix (column by column):\n");
    printTransMatrix(arr2d, nRows, nCols);

    // check if there are any duplicate values in the array
    if (foundDuplicate(arr, SIZE))
        printf("\nArray has duplicates.\n");
    else
        printf("\nNo duplicates found.\n");

    // create a flipped version of the array (reverse order)
    printf("\nFlipped array:\n");
    flipArray(arr, SIZE, flipped);
    printArray(flipped, SIZE);

    return 0;
}

// FUNCTION DEFINITIONS
// fills the array so each element equals its index (arr[0]=0, arr[1]=1, etc)
void setArray(int arr[], int length) {
    for (int i = 0; i < length; i++)
        arr[i] = i;
}

// removes an element at a specific position and shifts everything after it to the left
void rem_align(int arr[], int length, int pos) {
    // make sure the position is valid
    if (pos < 0 || pos >= length) {
        printf("Invalid index for removal: %d\n", pos);
        return;
    }
    // shift all elements after pos one position to the left
    for (int i = pos; i < length - 1; i++)
        arr[i] = arr[i + 1];
}

// inserts a value at a specific position and shifts everything else to the right
void insert_align(int arr[], int length, int pos, int value) {
    // check if the position is valid
    if (pos < 0 || pos >= length) {
        printf("Invalid index for insertion: %d\n", pos);
        return;
    }
    // move elements to the right starting from the end
    for (int i = length - 1; i > pos; i--)
        arr[i] = arr[i - 1];
    
    // put the new value in the now-empty position
    arr[pos] = value;
}

// takes a 1D array and converts it into a 2D array, filling row by row
void reshape(int arr[], int length, int arr2d[nRows][nCols], int rows, int cols) {
    // make sure the sizes match up
    if (length != rows * cols) {
        printf("Error: Length mismatch. Cannot reshape.\n");
        return;
    }
    int index = 0; // keeps track of where we are in the 1D array
    
    // go through each row and column, copying values from 1D to 2D
    for (int i = 0; i < rows; i++)
        for (int j = 0; j < cols; j++)
            arr2d[i][j] = arr[index++];
}

// prints the 2D array but reading down columns instead of across rows
void printTransMatrix(int arr2d[nRows][nCols], int rows, int cols) {
    // outer loop goes through columns, inner loop goes through rows
    for (int j = 0; j < cols; j++) {
        for (int i = 0; i < rows; i++)
            printf("%d ", arr2d[i][j]);
        printf("\n");
    }
}

// checks if any value appears more than once in the array
bool foundDuplicate(int arr[], int length) {
    // compare each element with every element after it
    for (int i = 0; i < length - 1; i++)
        for (int j = i + 1; j < length; j++)
            if (arr[i] == arr[j]) // found a match
                return true;
    return false; // no duplicates found
}

// creates a reversed copy of the array
void flipArray(int arr[], int length, int flipped[]) {
    // copy elements in reverse order
    for (int i = 0; i < length; i++)
        flipped[i] = arr[length - 1 - i];
}

// prints all elements in a 1D array on one line
void printArray(int arr[], int length) {
    for (int i = 0; i < length; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

// prints a 2D array row by row
void printMatrix(int mat[][nCols], int rows) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < nCols; j++)
            printf("%d ", mat[i][j]);
        printf("\n");
    }
}
