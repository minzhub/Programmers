def solution(a, d, included):
    num = [a+i for i in range(0, d*(len(included)-1)+1, d)]
    answer = []
    for i, j in zip(num, included):
        if j==True:
            answer.append(i)
    return sum(answer)