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
}
```