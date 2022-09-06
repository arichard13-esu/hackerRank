if __name__ == '__main__':
    # Create a nested list of students and grades
    grades = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        grades.append([name, score])
    
    grades.sort(key=lambda x: x[1])

    # Remove the lowest grade(s)
    lowest_grade = min(grades, key=lambda x: x[1])
    while lowest_grade in grades:
        grades.remove(lowest_grade)

    i=0
    names=[]
    lowest_grade = min(grades, key=lambda x: x[1])[1]
    print(lowest_grade)
    while True:
        names.append(grades.pop[i][0])
        i+=1
        if grades[i][i] != lowest_grade:
            break
        
    print(names)
    # Create a list of names who have the second lowest grade(s)
    
    names.sort()
    for name in names:
        print(name)
    