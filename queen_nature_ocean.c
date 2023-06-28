#include <stdio.h>
#include <string.h>

#define PRODUCT_MAX_LENGTH 50
#define STOCK_MAX_LENGTH 5

struct Product 
{ 
	char name[PRODUCT_MAX_LENGTH]; 
	char stock[STOCK_MAX_LENGTH]; 
	int price; 
}; 

int main(void) 
{ 
	struct Product products[100]; 
	int num_products = 0; 
	
	// Get user input 
	printf("Enter the number of products: "); 
	scanf("%d", &num_products); 
	
	for (int i = 0; i < num_products; i++) 
	{ 
		printf("\nProduct %d name: ", i + 1); 
		scanf("%s", products[i].name); 
		
		printf("Product %d stock: ", i + 1); 
		scanf("%s", products[i].stock); 
		
		printf("Product %d price: ", i + 1); 
		scanf("%d", &products[i].price); 
	} 
	
	// Print products 
	printf("\n"); 
	
	for (int i = 0; i < num_products; i++) 
	{ 
		printf("Product %d\n", i + 1); 
		printf("  Name: %s\n", products[i].name); 
		printf("  Stock: %s\n", products[i].stock); 
		printf("  Price: %d\n\n", products[i].price); 
	} 
	
	// Get the name of the product to search 
	printf("Enter the name of the product to search: "); 
	char search_name[PRODUCT_MAX_LENGTH]; 
	scanf("%s", search_name); 
	
	// Search for the product 
	for (int i = 0; i < num_products; i++) 
	{ 
		if (strcmp(products[i].name, search_name) == 0) 
		{ 
			printf("Product %d found!\n", i + 1); 
			printf("  Name: %s\n", products[i].name); 
			printf("  Stock: %s\n", products[i].stock); 
			printf("  Price: %d\n", products[i].price); 
		} 
	} 
	
	// Get the name of the product to update stock 
	printf("Enter the name of the product to update stock: "); 
	char update_name[PRODUCT_MAX_LENGTH]; 
	scanf("%s", update_name); 
	
	// Get the new stock 
	printf("Enter the new stock: "); 
	char new_stock[STOCK_MAX_LENGTH]; 
	scanf("%s", new_stock); 
	
	// Update product stock 
	for (int i = 0; i < num_products; i++) 
	{ 
		if (strcmp(products[i].name, update_name) == 0) 
		{ 
			strcpy(products[i].stock, new_stock); 
			printf("Product %d stock updated!\n", i + 1); 
		} 
	} 
	
	// Print updated products 
	printf("\n"); 
	
	for (int i = 0; i < num_products; i++) 
	{ 
		printf("Product %d\n", i + 1); 
		printf("  Name: %s\n", products[i].name); 
		printf("  Stock: %s\n", products[i].stock); 
		printf("  Price: %d\n\n", products[i].price); 
	} 
	
	printf("Welcome to The Innovation Station!\n\n"); 
	
	while(1) 
	{ 
		// Get the user command 
		char command[20]; 
		printf("Please enter a command: "); 
		scanf("%s", command); 
		
		// Check the user command 
		if (strcmp(command, "search") == 0) 
		{ 
			// Get the search string 
			char search_string[PRODUCT_MAX_LENGTH]; 
			printf("Please enter the product name you would like to search for: "); 
			scanf("%s", search_string); 
			
			// Search for the product 
			for (int i = 0; i < num_products; i++) 
			{ 
				if (strcmp(products[i].name, search_string) == 0) 
				{ 
					printf("Product %d found!\n", i + 1); 
					printf("  Name: %s\n", products[i].name); 
					printf("  Stock: %s\n", products[i].stock); 
					printf("  Price: %d\n", products[i].price); 
				} 
			} 
		} 
		else if (strcmp(command, "update") == 0) 
		{ 
			// Get the product name to update stock 
			char update_name[PRODUCT_MAX_LENGTH]; 
			printf("Please enter the product name you would like to update stock for: "); 
			scanf("%s", update_name); 
			
			// Get the new stock 
			char new_stock[STOCK_MAX_LENGTH]; 
			printf("Please enter the new stock: "); 
			scanf("%s", new_stock); 
			
			// Update product stock 
			for (int i = 0; i < num_products; i++) 
			{ 
				if (strcmp(products[i].name, update_name) == 0) 
				{ 
					strcpy(products[i].stock, new_stock); 
					printf("Product %d stock updated!\n", i + 1); 
				} 
			} 
		} 
		else if (strcmp(command, "exit") == 0) 
		{ 
			printf("Goodbye!\n"); 
			break; 
		} 
		else 
		{ 
			printf("Invalid command\n"); 
		} 
	} 
	
	return 0; 
}