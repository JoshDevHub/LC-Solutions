class Solution:
    def isValid(self, s: str) -> bool:
        pairMap = {
            "(": ")",
            "[": "]",
            "{": "}",
        }
        stack = []

        for c in s:
            if c in pairMap:
                stack.append(c)
            else:
                if not stack or pairMap[stack.pop()] != c:
                    return False
        return not stack
