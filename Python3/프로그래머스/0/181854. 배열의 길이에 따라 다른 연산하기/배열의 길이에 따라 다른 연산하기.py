def solution(arr, n):
    answer = []
    for i, j in enumerate(arr):
        if len(arr) % 2 != 0:
            if i%2 == 0:
                answer.append(j+n)
            else:
                answer.append(j)
        else:
            if i%2 != 0:
                answer.append(j+n)
            else:
                answer.append(j)   
    return answer