def solution(brown, yellow):
    answer = []
    plus = (brown-4)//2
    for w in range(plus):
        if w * (plus-w)==yellow:
            answer.append(w+2)
            answer.append(plus-w+2)
            break
    return sorted(answer, reverse=True)