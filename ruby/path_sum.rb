# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}

def has_path_sum(root, sum)
  if root.nil?
    return false
  else
    if sum - root.val == 0
      return true if root.left.nil? && root.right.nil?
    end
    has_path_sum(root.left, sum - root.val) || has_path_sum(root.right, sum - root.val)
  end
end
