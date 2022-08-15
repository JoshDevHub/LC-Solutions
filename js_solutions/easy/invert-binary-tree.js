// given class
const TreeNode = (val = 0, left = null, right = null) => {
  return {
    val,
    left,
    right
  }
}

// solution
const invertTree = function(root) {
  if (root === null) return root;

  [root.right, root.left] = [root.left, root.right];
  invertTree(root.left);
  invertTree(root.right);
  return root;
}
