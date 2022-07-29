class Solution:
    def areAlmostEqual(self, s1: str, s2: str) -> bool:
        if str(s1)==str(s2): return True
        elif sorted(s1)==sorted(s2):
            diff = 0
            for i in range(len(s1) and len(s2)):
                if sorted(s1[i])!=sorted(s2[i]):
                    diff+=1
            return True if diff==2 else False
        else: False