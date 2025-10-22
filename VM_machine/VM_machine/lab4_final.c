#include <stdio.h>
#include <stdlib.h>  // For rand() and srand()
#include <time.h>    // For time()

// Define password and minimum stock thresholds
#define Password 6969
#define MIN_PEN 2
#define MIN_PENCIL 3
#define MIN_ERASER 5

// Global variables for product prices and quantities
float price_Pen = 1.50, price_Pencil = 2.00, price_Eraser = 0.75;
int quantity_Pen = 70, quantity_Pencil = 70, quantity_Eraser = 70;
float total_amount = 0.0;  // Tracks total sales 

// Function prototypes
int purchase_products();
void admin_mode();
int replenish_products();
int change_product_price();
int display_total_sales();
int display_product_quantities();

int main() {
    int choice;
    
    // Seed the random number generator once at program start
    srand(time(0));
    
    // Main menu infinite loop
    while(1) {
        printf("\n VENDING MACHINE \n");
        printf("1. Purchase a product\n");
        printf("2. Admin mode\n");
        printf("3. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);
        
        if(choice == 1) {
            purchase_products();  // Call purchase function
        }
        else if(choice == 2) {
            admin_mode();  // Call admin mode
        }
        else if(choice == 3) {
            printf("Exiting...\n");
            break;  // Exit the infinite loop
        }
        else {
            printf("Invalid choice! Please try again.\n");
        }
    }
    
    return 0;
}

// Function to handle product purchase by consumer
int purchase_products() {
    int selection, confirm;
    float paid, coin, price, change;
    char name[10];  // String to hold product name
    int qty, min;   // Variables instead of pointers
    
    // Purchase menu loop
    while(1) {
        // 1.a - Display all products with name, price, quantity, and input number
        printf("\n%-8s %-8s %-8s %-8s\n", "Product", "Price", "Qty", "Input");
        printf("%-8s %-8.2f %-8d %-8d\n", "Pen", price_Pen, quantity_Pen, 1);
        printf("%-8s %-8.2f %-8d %-8d\n", "Pencil", price_Pencil, quantity_Pencil, 2);
        printf("%-8s %-8.2f %-8d %-8d\n", "Eraser", price_Eraser, quantity_Eraser, 3);
        
        // 1.b - Get user selection (0 to cancel)
        printf("Enter selection (0 to cancel): ");
        scanf("%d", &selection);
        
        // Cancel purchase if user inputs 0
        if(selection == 0) {
            printf("Purchase cancelled\n");
            return 0;
        }
        
        // Set product details based on selection
        if(selection == 1) {
            sprintf(name, "Pen");  // Copy product name
            price = price_Pen;
            qty = quantity_Pen;  // Copy the quantity value
            min = MIN_PEN;
        }
        else if(selection == 2) {
            sprintf(name, "Pencil");
            price = price_Pencil;
            qty = quantity_Pencil;  // Copy the quantity value
            min = MIN_PENCIL;
        }
        else if(selection == 3) {
            sprintf(name, "Eraser");
            price = price_Eraser;
            qty = quantity_Eraser;  // Copy the quantity value
            min = MIN_ERASER;
        }
        else {
            printf("Invalid selection\n");
            continue;  // Loop back to menu
        }
        
        // Check if product is out of stock
        if(qty == 0) {
            printf("Product out of stock\n");
            continue;  // Loop back to menu
        }
        
        // 1.c - Confirm selection (-1 to go back)
        printf("You selected Product %s - Price: %.2f\n", name, price);
        printf("Confirm? (press any key to confirm or enter -1 to go back): ");
        scanf("%d", &confirm);
        
        // Go back to product selection if user inputs -1
        if(confirm == -1) {
            continue;
        }
        
        // 1.d - Payment process with coin insertion
        printf("Please pay %.2f AED\n", price);
        printf("Accepted coins: 1, 0.5, 0.25 Dirham\n");
        
        paid = 0.0;  // Initialize amount paid
        while(paid < price) {
            // Display outstanding amount
            printf("Outstanding: %.2f AED\n", price - paid);
            printf("Insert coin (-1 to cancel): ");
            scanf("%f", &coin);
            
            // Cancel purchase if user inputs -1
            if(coin == -1) {
                printf("Purchase cancelled. Collect change: %.2f AED\n", paid);
                break;
            }
            
            // Validate coin and add to paid amount
            if(coin == 1.0 || coin == 0.5 || coin == 0.25) {
                paid = paid + coin;
            }
            else {
                printf("Invalid coin! Use 1, 0.5, or 0.25\n");
            }
        }
        
        // If purchase was cancelled, loop back to menu
        if(coin == -1) {
            continue;
        }
        
        // 1.e - Calculate change and update quantities
        change = paid - price;
        
        // Update the correct product's quantity directly
        if(selection == 1) {
            quantity_Pen = quantity_Pen - 1;
            qty = quantity_Pen;  // Update local copy for alert check
        }
        else if(selection == 2) {
            quantity_Pencil = quantity_Pencil - 1;
            qty = quantity_Pencil;  // Update local copy for alert check
        }
        else if(selection == 3) {
            quantity_Eraser = quantity_Eraser - 1;
            qty = quantity_Eraser;  // Update local copy for alert check
        }
        
        total_amount = total_amount + price;  // Add to total sales
        
        // Print receipt
        printf("\n RECEIPT \n");
        printf("Product: %s\n", name);
        printf("Price: %.2f AED\n", price);
        printf("You paid: %.2f AED\n", paid);
        printf("Change: %.2f AED\n", change);
        printf("Please collect your product!\n");
        
        // 1.f - Alert if stock is low (less than or equal to MIN)
        if(qty <= min) {
            printf("\nALERT: Product %s quantity is low! Only %d left\n", name, qty);
        }
        
        return 0;
    }
}

// Function to handle admin mode operations
void admin_mode() {
    int pswd, choice;
    
    // 2.a - Prompt for password
    printf("Enter the password: ");
    scanf("%d", &pswd);
    
    // Verify password
    if(pswd == Password) {
        printf("Access granted\n");
        
        // 2.b - Admin menu loop
        while(1) {
            printf("\n ADMIN MODE \n");
            printf("1. Replenish Products\n");
            printf("2. Change Product Prices\n");
            printf("3. Display Total Sales\n");
            printf("4. Display Product Quantities\n");
            printf("0. Exit Admin Mode\n");
            printf("Enter choice: ");
            scanf("%d", &choice);
            
            if(choice == 1) {
                replenish_products();
            }
            else if(choice == 2) {
                change_product_price();
            }
            else if(choice == 3) {
                display_total_sales();
            }
            else if(choice == 4) {
                display_product_quantities();
            }
            else if(choice == 0) {
                printf("Exiting Admin Mode\n");
                break;  // Exit admin mode
            }
            else {
                printf("Invalid choice! Please try again.\n");
            }
        }
    }
    else {
        printf("Incorrect password! Access denied.\n");
    }
}

// 2.b.1 - Function to replenish products with random quantities
int replenish_products() {
    // Generate random quantities between 1 and 20 for each product
    // rand() % 20 gives 0-19, so we add 1 to get 1-20
    // Uses time-based seed from main() for truly random values
    quantity_Pen = (rand() % 20) + 1;
    quantity_Pencil = (rand() % 20) + 1;
    quantity_Eraser = (rand() % 20) + 1;
    
    // Display updated quantities
    printf("\n PRODUCTS REPLENISHED \n");
    printf("Pen: %d items\n", quantity_Pen);
    printf("Pencil: %d items\n", quantity_Pencil);
    printf("Eraser: %d items\n", quantity_Eraser);
    
    // Low stock warnings
    if(quantity_Pen <= MIN_PEN) {
        printf("\nALERT: Pen quantity is low! Only %d left\n", quantity_Pen);
    }
    if(quantity_Pencil <= MIN_PENCIL) {
        printf("ALERT: Pencil quantity is low! Only %d left\n", quantity_Pencil);
    }
    if(quantity_Eraser <= MIN_ERASER) {
        printf("ALERT: Eraser quantity is low! Only %d left\n", quantity_Eraser);
    }
    
    return 0;
}


// 2.b.2 - Function to change product prices
int change_product_price() {
    char choice;
    float new_price;
    
    printf("\n CHANGE PRODUCT PRICES \n");
    
    // Product Pen
    printf("Current price of Pen: %.2f AED\n", price_Pen);
    printf("Do you want to change it? (y/n): ");
    scanf(" %c", &choice);
    if(choice == 'y' || choice == 'Y') {
        printf("Enter new price for Pen: ");
        scanf("%f", &new_price);
        price_Pen = new_price;
        printf("Price updated!\n");
    }
    
    // Product Pencil
    printf("Current price of Pencil: %.2f AED\n", price_Pencil);
    printf("Do you want to change it? (y/n): ");
    scanf(" %c", &choice);
    if(choice == 'y' || choice == 'Y') {
        printf("Enter new price for Pencil: ");
        scanf("%f", &new_price);
        price_Pencil = new_price;
        printf("Price updated!\n");
    }
    
    // Product Eraser
    printf("Current price of Eraser: %.2f AED\n", price_Eraser);
    printf("Do you want to change it? (y/n): ");
    scanf(" %c", &choice);
    if(choice == 'y' || choice == 'Y') {
        printf("Enter new price for Eraser: ");
        scanf("%f", &new_price);
        price_Eraser = new_price;
        printf("Price updated!\n");
    }
    
    return 0;
}

// 2.b.3 - Function to display and reset total sales
int display_total_sales() {
    char reset;
    
    // Display current total sales
    printf("\n TOTAL SALES \n");
    printf("Total sales amount: %.2f AED\n", total_amount);
    
    // Ask if operator wants to reset
    printf("Do you want to reset total sales to zero? (y/n): ");
    scanf(" %c", &reset);
    
    if(reset == 'y' || reset == 'Y') {
        total_amount = 0.0;  // Reset total sales
        printf("Total sales reset to zero.\n");
        printf("Please collect the money from the machine!\n");
    }
    
    return 0;
}

// 2.b.4 - Function to display all product quantities
int display_product_quantities() {
    printf("\n PRODUCT QUANTITIES \n");
    printf("%-8s %-8s\n", "Product", "Quantity");
    printf("%-8s %-8d\n", "Pen", quantity_Pen);
    printf("%-8s %-8d\n", "Pencil", quantity_Pencil);
    printf("%-8s %-8d\n", "Eraser", quantity_Eraser);
    
    return 0;
}
