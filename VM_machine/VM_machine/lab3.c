#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define Password 6969
#define MIN_A 2
#define MIN_B 3
#define MIN_C 5

float price_A = 1.50, price_B = 2.00, price_C = 0.75;
int quantity_A = 70, quantity_B = 70, quantity_C = 70;
float total_amount = 0.0;

//function prototype
int purchase_products();
void admin_mode();
int replinish_products();
int change_product();
int display_total_sales();
int display_product_quatities();

int main() {
    int choice;
    
    while(1) {
        printf("\n=== VENDING MACHINE ===\n");
        printf("1. Purchase a product\n");
        printf("2. Admin mode\n");
        printf("3. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);
        
        if(choice == 1) {
            purchase_products();
            break;
        }
        else if(choice == 2) {
            admin_mode();
            break;
        }
        else if(choice == 3) {
            printf("Exiting...\n");
            break;
        }
    }
    
    return 0;
}

int purchase_products() {
    int selection, confirm;
    float paid, coin, price, change;
    int *qty;
    char name;
    int min;
    
    while(1) {
        // 1.a - Display products
        printf("\n%-8s %-8s %-8s %-8s\n", "Product", "Price", "Qty", "Input");
        printf("%-8c %-8.2f %-8d %-8d\n", 'A', price_A, quantity_A, 1);
        printf("%-8c %-8.2f %-8d %-8d\n", 'B', price_B, quantity_B, 2);
        printf("%-8c %-8.2f %-8d %-8d\n", 'C', price_C, quantity_C, 3);
        
        // 1.b - Get selection (0 to cancel)
        printf("Enter selection (0 to cancel): ");
        scanf("%d", &selection);
        
        if(selection == 0) {
            printf("Purchase cancelled\n");
            return 0;
        }
        
        // Set product details
        if(selection == 1) {
            name = 'A';
            price = price_A;
            qty = &quantity_A;
            min = MIN_A;
        }
        else if(selection == 2) {
            name = 'B';
            price = price_B;
            qty = &quantity_B;
            min = MIN_B;
        }
        else if(selection == 3) {
            name = 'C';
            price = price_C;
            qty = &quantity_C;
            min = MIN_C;
        }
        else {
            printf("Invalid selection\n");
            continue;
        }
        
        if(*qty == 0) {
            printf("Product out of stock\n");
            continue;
        }
        
        // 1.c - Confirm selection (-1 to go back)
        printf("You selected Product %c - Price: %.2f\n", name, price);
        printf("Confirm? (press any key to confirm or enter -1 to go back): ");
        scanf("%d", &confirm);
        
        if(confirm == -1) {
            continue;
        }
        
        // 1.d - Payment process
        printf("Please pay %.2f AED\n", price);
        printf("Accepted coins: 1, 0.5, 0.25 Dirham\n");
        
        paid = 0.0;
        while(paid < price) {
            printf("Outstanding: %.2f AED\n", price - paid);
            printf("Insert coin (-1 to cancel): ");
            scanf("%f", &coin);
            
            if(coin == -1) {
                printf("Purchase cancelled. Collect change: %.2f AED\n", paid);
                break;
            }
            
            if(coin == 1.0 || coin == 0.5 || coin == 0.25) {
                paid = paid + coin;
            }
            else {
                printf("Invalid coin! Use 1, 0.5, or 0.25\n");
            }
        }
        
        if(coin == -1) {
            continue;
        }
        
        // 1.e - Update and print receipt
        change = paid - price;
        *qty = *qty - 1;
        total_amount = total_amount + price;
        
        printf("\n=== RECEIPT ===\n");
        printf("Product: %c\n", name);
        printf("Price: %.2f AED\n", price);
        printf("You paid: %.2f AED\n", paid);
        printf("Change: %.2f AED\n", change);
        printf("Please collect your product!\n");
        
        // 1.f - Alert if low stock
        if(*qty <= min) {
            printf("\nALERT: Product %c quantity is low! Only %d left\n", name, *qty);
        }
        
        return 0;
    }
}

void admin_mode(){
    int pswd;
    printf("Enter the password");
    scanf("%d", &pswd);
    if(pswd == Password){
        printf("access granted");
    }
    else{
        printf("Enter correct password");
    }
}