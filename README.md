# Stack Overflow in Deeply Nested Hack Functions

This repository demonstrates a potential stack overflow error in Hack when dealing with deeply nested function calls.  The `baz` function calls `bar`, which calls `foo`.  While this example is simple, excessively deep nesting can lead to stack overflow exceptions.

## Bug Description

The provided Hack code exhibits a potential stack overflow vulnerability. While not directly causing a crash in this simple example, the repeated function calls illustrate the principle.  In more complex scenarios with significantly deeper nesting, this can exhaust the call stack and result in program termination.

## Solution

The solution involves refactoring the code to reduce the depth of the function calls. This can involve introducing loops or using tail recursion (although Hack's compiler might not fully optimize tail recursion).  In cases where deep recursion is unavoidable, consider increasing the stack size or employing alternative approaches to avoid stack overflow.