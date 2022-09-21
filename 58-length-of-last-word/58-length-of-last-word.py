class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        a = s.split(' ')
        return (len([i for i in a if i][-1]))