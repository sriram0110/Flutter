import 'package:stack/stack.dart';

void main()
{
Stack<int> intStack = Stack();
intStack.push(1);
intStack.push(2);
intStack.push(3);
intStack.push(4);
intStack.push(5);

intStack.print();
intStack.pop();
print(intStack.length);
print(intStack.contains(1));

final myStack = Stack<String>();

  myStack.push('Hello');
  myStack.push('Hi');
  myStack.push('Hey');

  while (myStack.isNotEmpty) {
    print(myStack.pop());
  }


}
