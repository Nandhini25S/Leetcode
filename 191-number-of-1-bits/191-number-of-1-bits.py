class Solution:
    def hammingWeight(self, n: int) -> int:
        count=0
        while(n>0):
            if(n%2==1):
                count+=1
            n>>=1
        return count

        # while(n>0):
        #     if(n%10==1):
        #         count+=1
        #     n=n//10
        # return count
        