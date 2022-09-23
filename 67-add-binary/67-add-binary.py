class Solution:
    def addBinary(self, a: str, b: str) -> str:
        a,b = a[::-1], b[::-1]
        carry = 0
        res = ""
        for i in range(max(len(a),len(b))):
            digitA = ord(a[i]) - ord('0') if i<len(a) else 0
            digitB = ord(b[i]) - ord('0') if i<len(b) else 0
            tot = digitA+digitB+carry
            char = str(tot%2)
            res = char+res
            carry = tot//2
        if carry:
            res = "1"+res
        return res