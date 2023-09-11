import 'dart:math';

Future<int> sumOfEven(Stream<int> stream) async
{
  int sum = 0;
  await for (final number in stream)  //async for-in loop
  {
    if(number % 2 == 0)
    {
      sum += number;
    }
  }
  return sum;
}


Stream<int> generateStream(int upto) async*
{
  final random = Random();
  for(var i=1; i<upto; i++)
  {
    yield random.nextInt(100);
  }
}


void main() async
{
  var stream = generateStream(10);
  var result = await sumOfEven(stream);
  print(result);
}