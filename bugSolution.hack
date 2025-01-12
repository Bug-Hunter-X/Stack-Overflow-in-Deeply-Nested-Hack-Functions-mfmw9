```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) + 1;
}

function baz(x: int): int {
  return bar(x) + 1;
}

function main(): void {
  var x: int = 10;
  var y: int = baz(x);
  echo y; // this will print 13
  //To avoid potential stack overflow with deeply nested function calls, refactor using iteration.
  var z: int = 10;
  for (var i = 0; i < 3; i++) {
    z = z + 1;
  }
  echo z; // This prints 13, avoiding deep recursion
}
```