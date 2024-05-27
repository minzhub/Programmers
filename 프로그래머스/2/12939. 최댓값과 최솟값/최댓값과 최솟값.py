def solution(s):
    new_s = list(map(int, s.split(' ')))
    return str(min(new_s)) + " " + str(max(new_s))