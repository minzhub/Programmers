def solution(names):
    groups = []
    for i in range(0, len(names), 5):
        groups.append(names[i])
    return groups