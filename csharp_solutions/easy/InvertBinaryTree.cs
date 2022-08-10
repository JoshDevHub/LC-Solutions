namespace InvertBinaryTree
{
    public class TreeNode
    {
        public int val;
        public TreeNode? left;
        public TreeNode? right;
        public TreeNode(int val = 0, TreeNode? left = null, TreeNode? right = null)
        {
            this.val = val;
            this.left = left;
            this.right = right;
        }
    }

    public class Solution
    {
        public TreeNode? InvertTree(TreeNode? root)
        {
            if (root is null)
            {
                return root;
            }
            TreeNode? tempRoot = root.right;
            root.right = root.left;
            root.left = tempRoot;

            InvertTree(root.right);
            InvertTree(root.left);

            return root;
        }
    }
}
