class Solution:
    def myAtoi(self, s: str) -> int:
        flag = 0
        n = 0
        INT_MIN = -2147483648
        INT_MAX = 2147483647
        if (s is None or len(s)<1): #whitespace removal
            return 0
        s = s.lstrip()
        isneg = len(s) > 1 and s[0] == '-' #sign detection
        ispos = len(s) > 1 and s[0] == '+'
        if isneg:
            flag += 1
        elif ispos:
            flag += 1
        while (flag < len(s) and ('0' <= s[flag] <= '9')): #number detection
            n = n*10+(ord(s[flag])-ord('0'))
            flag += 1
        if isneg:
            n = -n
        if n<INT_MIN: #corner cases
            return INT_MIN
        if n>INT_MAX:
            return INT_MAX
        return n