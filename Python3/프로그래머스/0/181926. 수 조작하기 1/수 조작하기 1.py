def solution(n, control):
    controls = {'w': +1, 's': -1, 'd': +10, 'a': -10}
    for i in control:
        n+=controls[i]
    return n