/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> result = [];
    if (root == null) {
      return result;
    }
    List<TreeNode> stack = [];
    TreeNode? node = root;
    while (stack.isNotEmpty || node != null) {
      while (node != null) {
        stack.add(node);
        node = node.left;
      }
      if (stack.isNotEmpty) {
        node = stack.removeLast();
        result.add(node.val);
        node = node.right;
      }
    }
    return result;
  }
}
