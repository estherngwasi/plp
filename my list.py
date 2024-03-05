# Create an empty list called my_list
my_list = []
# append to my list 10,20,30,40
my_list.append(10)
my_list.append(20)
my_list.append(30)
my_list.append(40)
# Insert the value 15 in position two in the list
my_list.insert(1, 15)
# Extend my_list with [50, 60, 70]
my_list.extend([50, 60, 70])
# Remove the last element in my_list
my_list.pop()
# Sort  in ascending order
my_list.sort()
# Find and also print the index of the value 30
index_of_30 = my_list.index(30)
print("Final List:", my_list)
print("Index of 30:", index_of_30)
