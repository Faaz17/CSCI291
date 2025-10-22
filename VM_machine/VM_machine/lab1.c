//preprocessors

#include <stdio.h>

//define and macros

#define Password 6969
#define MIN_A 2
#define MIN_B 3
#define MIN_C 5

int pen = 5;
int pencil = 5;
int eraser = 7;

int quantity_A = 70, quantity_B = 70, quantity_C = 70;

//Function Prototype
int purchase_products();
int admin_mode();
int replinish_products();
int change_product();
int display_total_sales();
int display_product_quatities();

//main function
int main()
{
	int choice;
    
    printf("1.Purchase a product by the consumer\n");
    printf("2.Admin mode for the vending machine operator\n");
    printf("3.Exit");
    printf("Enter your choice:\n");
    scanf("%d", &choice);
    
    if(choice==1)
        {
            printf("For Pen please pay 5");
            printf("For Pencil please pay 5");
            printf("For eraser please pay 7");
        }
    if(choice==2)
        {
            
        }
    if(choice==3)
        {
            
        }
    return 0;
}
