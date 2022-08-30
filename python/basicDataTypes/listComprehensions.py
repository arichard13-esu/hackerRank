"""
 You're working on an automated parking garage. The garage has 8 floors, each floor can hold up to 20 cars. When a customer enters the garage, they are issued a ticket specifying which floor they must park on. The customer scans their ticket to leave the garage. Implement the enter and exit functions, making sure to never issue a ticket for a floor that is already full.
 
 Expansion 1
    Some impatient customers are scanning their ticket multiple times when exiting. What problems can that cause and how would you improve the code to handle that?

 Expansion 2
    Things are going well, we're expanding! Update code to support 4 underground floors. Each underground floor can hold up to 40 cars.
"""

# Create 8x20 matrix of 0s
garage_list = [20 for i in range(8)]
print(garage_list)

for i in range(4):
    garage_list.insert(0, 40)
print(garage_list)


# garage_dict = {1:"Open", 2:"Open", 3:"Open", 4:"Open", 5:"Open", 6:"Open", 7:"Open", 8:"Open"}
'''
temp = []
for i in range(4):
    for j in range(40):
        temp.append(0)
garage_list.extend(temp)
'''
# Enter function
def issue_ticket():
    ticket = 0
    for i in range(len(garage_list)):
        if garage_list[i] != 0:
            ticket = i
            garage_list[i] -= 1
            break
        
        elif garage_list[i] == 0 and i == len(garage_list) - 1:
            print("Sorry, garage is full.")
            raise StopIteration
    return ticket

# Exit function
def leave(ticket):
    if garage_list[ticket] < 20:
        garage_list[ticket] += 1
    else:
        print("Thank you")
        raise ValueError

for i in range(150):
    customer_ticket = issue_ticket()
print(garage_list)

leave(customer_ticket)
leave(customer_ticket)
leave(customer_ticket)

print(garage_list)

customer_ticket = issue_ticket()
print(garage_list)
