if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    
    scores = list(arr)
    max_score = max(scores)
    
    while max_score in scores:
        scores.remove(max_score)
        
    print(max(scores))
