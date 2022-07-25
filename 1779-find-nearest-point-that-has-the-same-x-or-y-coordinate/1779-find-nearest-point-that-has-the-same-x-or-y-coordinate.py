class Solution:
    def nearestValidPoint(self, x: int, y: int, points: List[List[int]]) -> int:
        manhattan = 10000
        index = -1
        for i in range(len(points)):
            if(x==points[i][0] or y==points[i][1]):
                res = abs(x-points[i][0])+abs(y-points[i][1])
                if res<manhattan:
                    manhattan=res
                    index=i
        return index