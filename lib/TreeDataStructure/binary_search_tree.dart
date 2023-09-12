class TreeNode {
  int treeValue;
  TreeNode? leftChildNode;
  TreeNode? rightChildNode;

  TreeNode(this.treeValue);
}

class BinarySearchTree {
  TreeNode? treeRoot;

  void insertData(int data) {
    TreeNode newTreeNode = TreeNode(data);

    if (treeRoot == null) {
      treeRoot = newTreeNode;
    } else {
      TreeNode current = treeRoot!;
      while (true) {
        if (data < current.treeValue) {
          if (current.leftChildNode == null) {
            current.leftChildNode = newTreeNode;
            break;
          }
          current = current.leftChildNode!;
        } else {
          if (current.rightChildNode == null) {
            current.rightChildNode = newTreeNode;
            break;   
          }
          current = current.rightChildNode!;
        }
      }
    }
  }

  bool dataExists(int data) {
    TreeNode? currentNode = treeRoot;
    while (currentNode != null) {
      if (data == currentNode.treeValue) {
        return true;
      } else if (data < currentNode.treeValue) {
        currentNode = currentNode.leftChildNode;
      } else {
        currentNode = currentNode.rightChildNode;
      }
    }
    return false;
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insertData(25);
  bst.insertData(15);
  bst.insertData(40);
  bst.insertData(65);
  bst.insertData(13);
  bst.insertData(21);
  bst.insertData(37);

  print(bst.dataExists(37));
}
