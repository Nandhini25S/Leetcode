class Solution:
    def isValid(self, s: str) -> bool:
        stack = [] 
        valid_dict = {')':'(', ']':'[', '}':'{'}
        
        for i in s:
            if i in valid_dict:
                if stack and stack[-1] == valid_dict[i]:
                    stack.pop()
                else:
                    return False
            else:
                stack.append(i)
            
        return True if not stack else False