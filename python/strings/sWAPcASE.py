def swap_case(s):
    # Solution 1
    # return s.swapcase()
    
    # Solution 2
    swap_string = ''
    
    for char in s:
        if char.islower():
            swap_string += char.upper()
        elif char.isupper():
            swap_string += char.lower()
        else:
            swap_string += char

    return swap_string

if __name__ == '__main__':
    s = input()
    result = swap_case(s)
    print(result)
