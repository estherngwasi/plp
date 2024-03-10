def calculate_discount(price, discount_percent):
    if discount_percent>= 20:
        discount_amount= price *(discount_percent /100)
        final_price = price- discount_amount
        return final_price
    else:
        return price

# Prompting user to enter a value 

try:
    original_price = float(input("Enter the original price of the item: ksh"))
    discount_percent = float(input("Enter the discount percentage: "))
     # Checking if the discount percentage is valid
    if discount_percent < 0 or discount_percent > 100:
        raise ValueError("Discount percentage should be between 0 and 100.")
    # Calculating and printing the final price
    result = calculate_discount(original_price, discount_percent)
    print(f"The final price after applying the discount is: ksh{result:.2f}")
except ValueError as e:
    print(f"Error: {e}")
except Exception as e:
    print(f"An unexpected error occurred: {e}")

    