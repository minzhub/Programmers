def solution(age):
    alpha = 'abcdefghij'
    answer = ''
    for i in str(age):
        answer+=alpha[int(i)]
    return answer