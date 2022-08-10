namespace ValidParens
{
    class Solution
    {
        public bool IsValid(string s)
        {
            var parenPairMap = new Dictionary<char, char>()
            {
                { ')', '(' },
                { ']', '[' },
                { '}', '{' },
            };
            var openStack = new Stack<char>();
            foreach (char c in s)
            {
                if (parenPairMap.ContainsKey(c))
                {
                    if (openStack.Count == 0)
                    {
                        return false;
                    }
                    char previousOpen = openStack.Pop();
                    if (parenPairMap[c] != previousOpen)
                    {
                        return false;
                    }
                }
                else
                {
                    openStack.Push(c);
                }
            }
            return openStack.Count == 0;
        }
    }
}
