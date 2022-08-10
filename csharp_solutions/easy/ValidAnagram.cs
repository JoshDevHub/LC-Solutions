namespace ValidAnagram
{
    class Solution
    {
        public bool IsAnagram(string s, string t)
        {
            Dictionary<char, int> sTally = Tally(s);
            Dictionary<char, int> tTally = Tally(t);
            if (sTally.Count != tTally.Count)
            {
                return false;
            }
            foreach (var key in sTally.Keys)
            {
                if (!(tTally.TryGetValue(key, out var value) &&
                      sTally[key] == value))
                {
                    return false;
                }
            }
            return true;
        }

        public Dictionary<char, int> Tally(string s)
        {
            var counter = new Dictionary<char, int>();
            foreach(char c in s)
            {
                if (counter.TryAdd(c, 0))
                {
                    continue;
                }
                counter[c]++;
            }
            return counter;
        }
    }
}
