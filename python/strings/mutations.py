def mutate_string(string, position, character):
    # Solution 1
    # return string[:position] + character + string[position+1:]
    
    # Solution 2
    mutate_list = list(string)
    mutate_list[position] = character
    
    return ''.join(mutate_list)

if __name__ == '__main__':
    s = input()
    i, c = input().split()
    s_new = mutate_string(s, int(i), c)
    print(s_new)