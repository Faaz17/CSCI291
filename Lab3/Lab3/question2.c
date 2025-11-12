#include <stdio.h>
#include <string.h>
#include <ctype.h> // Added for tolower() to make search case-insensitive

#define numOfSubjects 5
#define numOfStudents 20        

// struct to hold each student's info
typedef struct {
    char FirstName[20];
    char LastName[20];
    int StudentID;
    float SubjectMarks[numOfSubjects];
    float AggregateMarks;
    char Grade[20];
} Student;

// function prototypes
int enrol(Student students[], int count);
void searchUpdate(Student students[], int count);
void topStudents(Student students[], int count);
void calculateGrade(float mark, char grade[]);
void displayMenu();
void printStudentDetails(Student s); // Helper function to print student info
int compareStringsCaseInsensitive(const char s1[], const char s2[]); // Helper for search

int main() {
    Student students[numOfStudents];
    int studentCount = 0;
    int choice;
    
    while(1) {
        displayMenu();
        
        // Validate menu choice input
        if (scanf("%d", &choice) != 1) {
            printf("Invalid input. Please enter a number.\n");
            while(getchar() != '\n'); // Clear input buffer
            continue;
        }
        
        switch(choice) {
            case 1:
                studentCount = enrol(students, studentCount);
                break;
            case 2:
                searchUpdate(students, studentCount);
                break;
            case 3:
                topStudents(students, studentCount);
                break;
            case 4: // Changed Exit to 4
                printf("Exiting program\n");
                return 0;
            default:
                printf("Invalid choice. Try again.\n");
        }
    }
    
    return 0;
}

// displays the menu options
void displayMenu() {
    printf("\nStudent Management System\n");
    printf("1. Enrol student\n");
    printf("2. Search and Update student\n");
    printf("3. Show top students\n");
    printf("4. Exit\n");
    printf("Enter your choice: ");
}

// handles student enrollment
// (This is your provided function, unchanged)
int enrol(Student students[], int count) {
    if (count >= numOfStudents) {
        printf("Student list is full!\n");
        return count;
    }
    
    Student newStudent;
    char answer;
    float totalMarks = 0;
    int validMarks = 0;
    
    // get student basic info
    printf("\nEnter First Name: ");
    scanf("%s", newStudent.FirstName);
    printf("Enter Last Name: ");
    scanf("%s", newStudent.LastName);
    
    // validate and get student ID
    printf("Enter Student ID (positive integer): ");
    while(scanf("%d", &newStudent.StudentID) != 1 || newStudent.StudentID <= 0) {
        printf("Invalid input. Enter a positive integer: ");
        while(getchar() != '\n');
    }
    
    // ask if user wants to input marks for each subject
    for(int i = 0; i < numOfSubjects; i++) {
        printf("\nDo you want to input mark for Subject %d? (y/n): ", i);
        scanf(" %c", &answer);
        
        if(answer == 'y' || answer == 'Y') {
            printf("Enter mark for Subject %d: ", i);
            while(scanf("%f", &newStudent.SubjectMarks[i]) != 1 || 
                  newStudent.SubjectMarks[i] < 0 || newStudent.SubjectMarks[i] > 100) {
                printf("Invalid mark. Enter a value between 0 and 100: ");
                while(getchar() != '\n');
            }
            totalMarks += newStudent.SubjectMarks[i];
            validMarks++;
        } else {
            newStudent.SubjectMarks[i] = -1;
        }
    }
    
    // calculate aggregate and grade
    if(validMarks > 0) {
        newStudent.AggregateMarks = totalMarks / validMarks;
        calculateGrade(newStudent.AggregateMarks, newStudent.Grade);
    } else {
        newStudent.AggregateMarks = -1;
        strcpy(newStudent.Grade, "undefined");
    }
    
    // add student to array
    students[count] = newStudent;
    count++;
    
    // display enrolled student info
    printf("\nStudent Enrolled Successfully\n");
    printStudentDetails(newStudent); // Use helper function
    
    return count;
}

// calculates grade based on aggregate mark
// (This is your provided function, unchanged)
void calculateGrade(float mark, char grade[]) {
    if(mark < 0) 
        strcpy(grade, "undefined");
    else if(mark < 50) 
        strcpy(grade, "F");
    else if(mark < 64) 
        strcpy(grade, "P");
    else if(mark < 74) 
        strcpy(grade, "C");
    else if(mark < 84) 
        strcpy(grade, "D");
    else 
        strcpy(grade, "HD");
}


// * NEW FUNCTION: searchUpdate

void searchUpdate(Student students[], int count) {
    int searchType;
    int foundIndex = -1; // Index of the found student

    if (count == 0) {
        printf("\nNo students enrolled yet. Cannot search.\n");
        return;
    }

    printf("\nSearch Student\n");
    printf("1. Search by StudentID\n");
    printf("2. Search by LastName\n");
    printf("Enter your choice: ");

    if (scanf("%d", &searchType) != 1) {
        printf("Invalid input.\n");
        while(getchar() != '\n'); // Clear buffer
        return;
    }

    if (searchType == 1) {
        // Search by StudentID
        int idToFind;
        printf("Enter StudentID: ");
        if (scanf("%d", &idToFind) != 1) {
            printf("Invalid input.\n");
            while(getchar() != '\n'); // Clear buffer
            return;
        }

        for (int i = 0; i < count; i++) {
            if (students[i].StudentID == idToFind) {
                foundIndex = i;
                break;
            }
        }
    } else if (searchType == 2) {
        // Search by LastName (case-insensitive)
        char nameToFind[20];
        printf("Enter LastName: ");
        scanf("%s", nameToFind);

        for (int i = 0; i < count; i++) {
            if (compareStringsCaseInsensitive(students[i].LastName, nameToFind) == 0) {
                foundIndex = i;
                break;
                // Note: As per instructions, we assume different last names
                // If duplicates were allowed, this would only find the first
            }
        }
    } else {
        printf("Invalid search type.\n");
        return;
    }

    // --- Part 2: Display and Update ---
    if (foundIndex == -1) {
        printf("\nunfound\n");
    } else {
        // Student found, print details
        printf("\nStudent Found:\n");
        printStudentDetails(students[foundIndex]);

        // Ask for update
        char updateChoice;
        printf("\nDo you want to update this student's details? (y/n): ");
        scanf(" %c", &updateChoice);

        if (updateChoice == 'y' || updateChoice == 'Y') {
            int updateField;
            printf("\nWhich field to update?\n");
            printf("1. FirstName\n");
            printf("2. LastName\n");
            printf("3. StudentID\n");
            printf("4. SubjectMarks\n");
            printf("Enter choice: ");
            
            if (scanf("%d", &updateField) != 1) {
                printf("Invalid input.\n");
                while(getchar() != '\n'); // Clear buffer
                return;
            }

            int recalculate = 0; // Flag to check if we need to update aggregate/grade

            switch(updateField) {
                case 1:
                    printf("Enter new First Name: ");
                    scanf("%s", students[foundIndex].FirstName);
                    break;
                case 2:
                    printf("Enter new Last Name: ");
                    scanf("%s", students[foundIndex].LastName);
                    break;
                case 3:
                    printf("Enter new Student ID: ");
                    while(scanf("%d", &students[foundIndex].StudentID) != 1 || students[foundIndex].StudentID <= 0) {
                        printf("Invalid input. Enter a positive integer: ");
                        while(getchar() != '\n');
                    }
                    break;
                case 4:
                    // This will re-enter all subject marks
                    printf("Re-entering all subject marks...\n");
                    float totalMarks = 0;
                    int validMarks = 0;
                    char answer;
                    
                    for(int i = 0; i < numOfSubjects; i++) {
                        printf("\nDo you want to input mark for Subject %d? (y/n): ", i);
                        scanf(" %c", &answer);
                        
                        if(answer == 'y' || answer == 'Y') {
                            printf("Enter mark for Subject %d: ", i);
                            while(scanf("%f", &students[foundIndex].SubjectMarks[i]) != 1 || 
                                  students[foundIndex].SubjectMarks[i] < 0 || students[foundIndex].SubjectMarks[i] > 100) {
                                printf("Invalid mark. Enter a value between 0 and 100: ");
                                while(getchar() != '\n');
                            }
                            totalMarks += students[foundIndex].SubjectMarks[i];
                            validMarks++;
                        } else {
                            students[foundIndex].SubjectMarks[i] = -1;
                        }
                    }
                    // Since marks changed, set flag to recalculate
                    recalculate = 1; 
                    break;
                default:
                    printf("Invalid field choice.\n");
                    return; // Exit update without changes
            }

            // If marks were updated, recalculate aggregate and grade
            if (recalculate) {
                float totalMarks = 0;
                int validMarks = 0;
                for(int i = 0; i < numOfSubjects; i++) {
                    if(students[foundIndex].SubjectMarks[i] != -1) {
                        totalMarks += students[foundIndex].SubjectMarks[i];
                        validMarks++;
                    }
                }
                
                if(validMarks > 0) {
                    students[foundIndex].AggregateMarks = totalMarks / validMarks;
                    calculateGrade(students[foundIndex].AggregateMarks, students[foundIndex].Grade);
                } else {
                    students[foundIndex].AggregateMarks = -1;
                    strcpy(students[foundIndex].Grade, "undefined");
                }
            }
            
            printf("\nStudent Updated Successfully:\n");
            printStudentDetails(students[foundIndex]);
        }
    }
}

// * NEW FUNCTION: topStudents

void topStudents(Student students[], int count) {
    if (count == 0) {
        printf("\nNo students enrolled yet. Cannot show top students.\n");
        return;
    }

    float maxAggregate = -2.0; // Start lower than lowest possible aggregate (-1)

    // First pass: find the highest aggregate mark
    for (int i = 0; i < count; i++) {
        if (students[i].AggregateMarks > maxAggregate) {
            maxAggregate = students[i].AggregateMarks;
        }
    }

    if (maxAggregate == -1.0) {
        printf("\nNo students have an aggregate mark calculated yet.\n");
        return;
    }
    
    // Second pass: print all students with that mark
    printf("\nTop Student(s) with Aggregate Mark: %.2f\n", maxAggregate);
    printf("-------------------------------------------\n");
    for (int i = 0; i < count; i++) {
        if (students[i].AggregateMarks == maxAggregate) {
            printStudentDetails(students[i]);
            printf("-------------------------------------------\n");
        }
    }
}


// NEW HELPER FUNCTION: printStudentDetails

void printStudentDetails(Student s) {
    printf("Name: %s %s\n", s.FirstName, s.LastName);
    printf("ID: %d\n", s.StudentID);
    
    printf("Subject Marks:\n");
    for(int i = 0; i < numOfSubjects; i++) {
        if(s.SubjectMarks[i] == -1) {
            printf("  Subject %d: Not entered\n", i);
        } else {
            printf("  Subject %d: %.2f\n", i, s.SubjectMarks[i]);
        }
    }
    
    if (s.AggregateMarks == -1) {
        printf("Aggregate Mark: Not calculated\n");
    } else {
        printf("Aggregate Mark: %.2f\n", s.AggregateMarks);
    }
    
    printf("Grade: %s\n", s.Grade);
}


// NEW HELPER FUNCTION: compareStringsCaseInsensitive

int compareStringsCaseInsensitive(const char s1[], const char s2[]) {
    int i = 0;
    while (s1[i] != '\0' && s2[i] != '\0') {
        int lower1 = tolower((unsigned char)s1[i]);
        int lower2 = tolower((unsigned char)s2[i]);
        
        if (lower1 != lower2) {
            return lower1 - lower2;
        }
        i++;
    }
    // Check if one string is a prefix of the other
    return tolower((unsigned char)s1[i]) - tolower((unsigned char)s2[i]);
}