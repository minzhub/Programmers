def solution(s):
    answer = ""
    for i, j in enumerate(s):
        if j == " ":
            answer+=" "
        else:
            if s[i-1] == " " or i==0:
                answer+=j.upper()
            else:
                answer+=j.lower()
    return answer