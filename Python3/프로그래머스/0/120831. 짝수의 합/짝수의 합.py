def solution(n):
    answer = []
    for i in range(2, n+1, 2):
        answer.append(i)
    return sum(answer)