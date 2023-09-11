class Node {
  int? data;
  Node? next;

  Node(this.data, this.next);
}

class LinkedList {
  Node? head; //initially points to null

  void insert(int data) {
    Node newNode = Node(data, null);

    if (head == null) {
      head = newNode;
    } else {
      Node temp = head!;
      while (temp.next != null) { //iterates to check last node
        temp = temp.next!;
      }
      temp.next = newNode;
    }
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.insert(1);
  linkedList.insert(2);
  linkedList.insert(3);

  linkedList.display(); // Output: 1, 2, 3
}
