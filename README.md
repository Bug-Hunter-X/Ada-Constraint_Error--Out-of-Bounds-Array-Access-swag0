# Ada Constraint_Error: Out-of-Bounds Array Access

This repository demonstrates a common runtime error in Ada: the `Constraint_Error` exception raised when attempting to access an array element outside its defined index range.

The `bug.ada` file contains Ada code that produces the error. The `bugSolution.ada` file shows how to prevent this error using proper array bounds checking.

## How to Reproduce

1. Compile `bug.ada` using an Ada compiler (e.g., GNAT).
2. Run the compiled executable. Observe the `Constraint_Error` exception being raised.

## Solution

The solution involves ensuring that all array accesses are within the defined bounds of the array. The `bugSolution.ada` demonstrates appropriate bounds checking.