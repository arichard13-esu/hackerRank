if __name__ == '__main__':
    # Create a nested list of students and their grade
    grades = []
    scorelist =[]
    for _ in range(int(input())):
        name = input()
        score = float(input())
        grades.append([name, score])
        # scorelist += [score]

    # Sort list based on second element (grades)
    grades.sort(key=lambda x: x[1])

    # Declare and remove the lowest grade
    lowest_grade = min(grades, key=lambda x: x[1])[1]
    while grades[0][1] == lowest_grade:
        grades.pop(0)

    # Declare a list of names of students with the second lowest grade
    names=[]
    lowest_grade = min(grades, key=lambda x: x[1])[1]
    while len(grades) != 0 and grades[0][1] == lowest_grade:
        names.append(grades.pop(0)[0])

    # Sort and print the list of names
    names.sort()
    for name in names:
        print(name)
    
    '''
    b = sorted(list(set(scorelist)))[1] 
    for a, c in sorted(grades):
        if c == b:
            print(a)
    '''