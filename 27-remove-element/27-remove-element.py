class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        j = 0
        for i in range(len(nums)):
            if val!=nums[i]:
                nums[j]=nums[i]
                j+=1
        return j