import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

final List<Map<String, dynamic>> kunalProblems = (() {
  final List<Map<String, dynamic>> base = [
    // ── ZONE 1: Foundations ──
    {
      'id': 'z1_p1',
      'zone': 1,
      'title': 'Hello World & Variables',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Introduction to Programming. Print your first message and store data in variables.',
      'hint': 'Use System.out.println() in Java.',
      'codeTemplate':
          'public class Main {\n  public static void main(String[] args) {\n    ___;\n  }\n}',
      'blocks': {
        'a': 'System.out.println("Hello");',
        'b': 'print("Hello");',
        'c': 'console.log("Hello");',
      },
      'solution': {'1': 'a'},
    },
    {
      'id': 'z1_p2',
      'zone': 1,
      'title': 'Even or Odd',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Control flow. Check if a number is even or odd by using modulo.',
      'hint': 'Use the modulo operator % 2.',
      'codeTemplate':
          'public class Main {\n  public static void main(String[] args) {\n    int n = 4;\n    if (n % 2 == 0) {\n      ___;\n    } else {\n      ___;\n    }\n  }\n}',
      'blocks': {
        'a': 'System.out.println("Even");',
        'b': 'System.out.println("Odd");',
        'c': 'return 0;',
      },
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z1_p3',
      'zone': 1,
      'title': 'Greeting Message',
      'difficulty': 'Easy',
      'xp': 50,
      'description': 'Take a name and print a greeting message for them.',
      'hint': 'Concatenate "Hello " with the name variable.',
      'codeTemplate': 'String greet(String name) {\n  return ___ + name;\n}',
      'blocks': {'a': '"Hello "', 'b': '"Hi"', 'c': 'name'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z1_p4',
      'zone': 1,
      'title': 'Simple Interest',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Write a program to input principal, time, and rate (P, T, R) from the user and find Simple Interest.',
      'hint': 'Formula is (P * T * R) / 100',
      'codeTemplate':
          'double calculateSI(double p, double t, double r) {\n  return ___ / 100;\n}',
      'blocks': {'a': '(p * t * r)', 'b': 'p + t + r', 'c': 'p * (1 + r*t)'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z1_p5',
      'zone': 1,
      'title': 'Scanner Input (Strings)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Read a string input from the user.',
      'hint': 'Use Scanner object and next() or nextLine() methods.',
      'codeTemplate':
          'Scanner input = new Scanner(System.in);\nString name = input.___();\nSystem.out.println(name);',
      'blocks': {'a': 'nextLine', 'b': 'nextString', 'c': 'readString'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z1_p6',
      'zone': 1,
      'title': 'Scanner Input (Integers)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Read an integer input from the user.',
      'hint': 'Use Scanner object and nextInt() method.',
      'codeTemplate':
          'Scanner input = new Scanner(System.in);\nint age = input.___();\nSystem.out.println(age);',
      'blocks': {'a': 'nextInt', 'b': 'nextInteger', 'c': 'readInt'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z1_p7',
      'zone': 1,
      'title': 'Type Casting',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Explicitly cast a float value to an integer.',
      'hint':
          'Put the target type in parentheses before the expression, e.g., (int).',
      'codeTemplate':
          'float num = 67.56f;\nint numInt = (___) num;\nSystem.out.println(numInt);',
      'blocks': {'a': 'int', 'b': 'Integer', 'c': 'float'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z1_p8',
      'zone': 1,
      'title': 'Type Promotion',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Java automatically promotes smaller data types to larger ones in expressions.',
      'hint': 'A byte multiplied by a byte is promoted to an integer.',
      'codeTemplate':
          'byte a = 40;\nbyte b = 50;\nbyte c = 100;\n___ d = a * b / c;\nSystem.out.println(d);',
      'blocks': {'a': 'int', 'b': 'byte', 'c': 'float'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z1_p9',
      'zone': 1,
      'title': 'String Basics',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Get the length of a string and access a specific character.',
      'hint': 'Use .length() and .charAt(index).',
      'codeTemplate':
          'String word = "Hello";\nint len = word.___();\nchar first = word.___(0);',
      'blocks': {'a': 'length', 'b': 'charAt', 'c': 'size'},
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 2: Flow of Program ──
    {
      'id': 'z2_p1',
      'zone': 2,
      'title': 'Largest of Three',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Take 3 numbers as input and print the largest number.',
      'hint': 'Use Math.max() or if-else conditions.',
      'codeTemplate':
          'int max(int a, int b, int c) {\n  int max = a;\n  if (b > max) max = ___;\n  if (c > max) max = ___;\n  return max;\n}',
      'blocks': {'a': 'b', 'b': 'c', 'c': 'a'},
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z2_p2',
      'zone': 2,
      'title': 'Fibonacci Series',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'To calculate Fibonacci Series up to n numbers.',
      'hint': 'Start with 0 and 1, next number is sum of previous two.',
      'codeTemplate':
          'void fib(int n) {\n  int a = 0, b = 1;\n  for(int i=0; i<n; i++) {\n    System.out.print(a + " ");\n    int temp = a + b;\n    a = ___;\n    ___ = temp;\n  }\n}',
      'blocks': {'a': 'b', 'b': 'temp', 'c': 'a+b'},
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z2_p3',
      'zone': 2,
      'title': 'Leap Year Check',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Determine if a given year is a leap year using if-else.',
      'hint': 'Divisible by 4, but not by 100, unless also divisible by 400.',
      'codeTemplate':
          'boolean isLeap = false;\nif (year % 4 == 0) {\n  if (year % 100 == 0) {\n    if (year % 400 == 0) isLeap = true;\n    else isLeap = false;\n  } else isLeap = true;\n}\nreturn isLeap;',
      'hardTemplate':
          'return (year % 4 == 0) && (year % 100 != 0 || year % 400 == ___);',
      'blocks': {'a': '0', 'b': '1', 'c': '400'},
      'hardBlocks': {'a': '0', 'b': '1', 'c': '400'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z2_p4',
      'zone': 2,
      'title': 'While Loop Counting',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Use a while loop to print numbers from 1 to 5.',
      'hint':
          'Initialize a counter, check condition, and increment inside the loop.',
      'codeTemplate':
          'int count = 1;\nwhile (count <= 5) {\n  System.out.println(count);\n  ___;\n}',
      'blocks': {'a': 'count++', 'b': 'count--', 'c': '++'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z2_p5',
      'zone': 2,
      'title': 'Do-While Loop',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'A do-while loop executes the code block at least once before checking the condition.',
      'hint': 'Syntax is do { ... } while (condition);',
      'codeTemplate':
          'int n = 1;\n___ {\n  System.out.println(n);\n  n++;\n} ___(n <= 5);',
      'blocks': {'a': 'do', 'b': 'while', 'c': 'for'},
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z2_p6',
      'zone': 2,
      'title': 'Switch Statement',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Use a switch statement to print the day of the week.',
      'hint': 'Use `case` and `break` keywords.',
      'codeTemplate':
          'int day = 3;\nswitch(day) {\n  case 1: System.out.println("Mon"); break;\n  case 2: System.out.println("Tue"); break;\n  ___ 3: System.out.println("Wed"); ___;\n}',
      'blocks': {'a': 'case', 'b': 'break', 'c': 'return'},
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z2_p7',
      'zone': 2,
      'title': 'Enhanced Switch (Java 14+)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Use the new switch syntax which does not require break statements.',
      'hint': 'Use the -> operator.',
      'codeTemplate':
          'int day = 3;\nswitch(day) {\n  case 1, 2, 3, 4, 5 ___ System.out.println("Weekday");\n  case 6, 7 ___ System.out.println("Weekend");\n}',
      'blocks': {'a': '->', 'b': ':', 'c': '=>'},
      'solution': {'1': 'a', '2': 'a'},
    },

    // ── ZONE 3: Java Syntax & Loops ──
    {
      'id': 'z3_p1',
      'zone': 3,
      'title': 'Sum of N Numbers',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Write a for-loop to sum numbers from 1 to N.',
      'hint': 'for(int i=1; i<=n; i++)',
      'codeTemplate':
          'int sum = 0;\nfor (int i = 1; i <= n; i++) {\n  ___;\n}\n___;',
      'blocks': {'a': 'sum += i', 'b': 'return sum', 'c': 'sum = i'},
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z3_p2',
      'zone': 3,
      'title': 'Reverse a Number',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Given a number, reverse its digits.',
      'hint': 'Use num % 10 to get the last digit.',
      'codeTemplate':
          'int reverse(int num) {\n  int ans = 0;\n  while (num > 0) {\n    int rem = num % 10;\n    ans = ___ + rem;\n    num /= 10;\n  }\n  return ans;\n}',
      'blocks': {'a': 'ans * 10', 'b': 'ans + 10', 'c': 'rem * 10'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z3_p3',
      'zone': 3,
      'title': 'For Loop Range',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Print numbers from 1 to 10 inclusive.',
      'hint': 'Start at 1, condition <= 10.',
      'codeTemplate':
          'for (int i = 1; i <= ___; i++) {\n  System.out.println(i);\n}',
      'blocks': {'a': '10', 'b': '9', 'c': '11'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z3_p4',
      'zone': 3,
      'title': 'Nested Loops',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Print a 3x3 grid of stars (*).',
      'hint': 'Use two nested loops, both running 3 times.',
      'codeTemplate':
          'for (int i = 0; i < 3; i++) {\n  for (int j = 0; j < 3; j++) {\n    System.out.___("* ");\n  }\n  System.out.___();\n}',
      'blocks': {'a': 'print', 'b': 'println', 'c': 'printf'},
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z3_p5',
      'zone': 3,
      'title': 'Break Statement',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Exit the loop immediately when a condition is met.',
      'hint': 'Use the `break` keyword.',
      'codeTemplate':
          'for (int i = 1; i <= 10; i++) {\n  if (i == 5) {\n    ___;\n  }\n  System.out.println(i);\n}',
      'blocks': {'a': 'break', 'b': 'continue', 'c': 'stop'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z3_p6',
      'zone': 3,
      'title': 'Continue Statement',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Skip the current iteration and move to the next one.',
      'hint': 'Use the `continue` keyword.',
      'codeTemplate':
          'for (int i = 1; i <= 5; i++) {\n  if (i == 3) {\n    ___;\n  }\n  System.out.println(i);\n}',
      'blocks': {'a': 'continue', 'b': 'break', 'c': 'skip'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z3_p7',
      'zone': 3,
      'title': 'Infinite Loop',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Create an intentional infinite loop.',
      'hint': 'A while loop with a condition that always evaluates to true.',
      'codeTemplate':
          'while (___) {\n  System.out.println("Running forever");\n}',
      'blocks': {'a': 'true', 'b': 'false', 'c': '1'},
      'solution': {'1': 'a'},
    },

    // ── ZONE 4: Methods ──
    {
      'id': 'z4_p1',
      'zone': 4,
      'title': 'Method Design',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Functions / Methods. Design a method that returns the maximum of two numbers.',
      'hint': 'Compare a and b, return the larger.',
      'codeTemplate':
          'public int max(int a, int b) {\n  if (a > b) {\n    ___;\n  }\n  ___;\n}',
      'blocks': {'a': 'return a', 'b': 'return b', 'c': 'return 0'},
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z4_p2',
      'zone': 4,
      'title': 'Prime Check Method',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Define a method to find out if a number is prime or not.',
      'hint': 'Check divisibility up to Math.sqrt(n).',
      'codeTemplate':
          'boolean isPrime(int n) {\n  if (n <= 1) return false;\n  for (int i = 2; i * i <= n; i++) {\n    if (n % i == 0) ___;\n  }\n  ___;\n}',
      'blocks': {'a': 'return false', 'b': 'return true', 'c': 'break'},
      'solution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z4_p3',
      'zone': 4,
      'title': 'Void Method',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'A method that performs an action but does not return a value.',
      'hint': 'Use the `void` return type.',
      'codeTemplate':
          'public ___ printGreeting() {\n  System.out.println("Hello Student");\n}',
      'blocks': {'a': 'void', 'b': 'String', 'c': 'empty'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z4_p4',
      'zone': 4,
      'title': 'Method Overloading',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Create multiple methods with the same name but different parameters.',
      'hint': 'The parameter list (types or number of parameters) must differ.',
      'codeTemplate':
          'int sum(int a, int b) {\n  return a + b;\n}\n___ sum(int a, int b, int c) {\n  return a + b + c;\n}',
      'blocks': {'a': 'int', 'b': 'void', 'c': 'double'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z4_p5',
      'zone': 4,
      'title': 'Variable Arguments (Varargs)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Allow a method to accept zero or multiple arguments of the same type.',
      'hint': 'Use three dots (...) after the type.',
      'codeTemplate':
          'static void fun(int___ args) {\n  System.out.println(Arrays.toString(args));\n}',
      'blocks': {'a': '...', 'b': '[]', 'c': '**'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z4_p6',
      'zone': 4,
      'title': 'Shadowing',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'A local variable inside a block has the same name as a class-level variable, overriding it.',
      'hint': 'The local variable shadows the outer one.',
      'codeTemplate':
          'static int x = 90;\npublic static void main(String[] args) {\n  int x = 40;\n  System.out.println(___); // prints 40\n}',
      'blocks': {'a': 'x', 'b': 'this.x', 'c': 'super.x'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z4_p7',
      'zone': 4,
      'title': 'Block Scope',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Variables declared inside a block {} are only accessible within that block.',
      'hint':
          'Memory is allocated inside the block and destroyed when the block ends.',
      'codeTemplate':
          'public static void main(String[] args) {\n  int a = 10;\n  {\n    int c = 99;\n  }\n  // System.out.println(___); // This would cause an error\n}',
      'blocks': {'a': 'c', 'b': 'a', 'c': 'args'},
      'solution': {'1': 'a'},
    },

    // ── ZONE 5: Arrays ──
    {
      'id': 'z5_p1',
      'zone': 5,
      'subcategory': 'Structure & Basics',
      'title': 'Declare and Initialize',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Declare an integer array of size 5 and initialize it with zeros.',
      'hint': 'Use: int[] name = new int[size];',
      'codeTemplate':
          'int[] arr = new int[___];\nfor(int i=0; i<arr.length; i++) {\n  ___ = 0;\n}',
      'hardTemplate':
          'public int[] createArray(int size) {\n  int[] arr = ___;\n  for(int i=0; i<___; i++) {\n    ___;\n  }\n  return arr;\n}',
      'blocks': {'a': '5', 'b': 'arr[i]', 'c': 'arr.length'},
      'hardBlocks': {
        'a': 'new int[size]',
        'b': 'size',
        'c': 'arr[i] = 0',
        'd': 'i++',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p2',
      'zone': 5,
      'subcategory': 'Structure & Basics',
      'title': 'Find Element in Array',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Search for an element in an array and return its index.',
      'hint': 'Loop through and check if arr[i] == target.',
      'codeTemplate':
          'for(int i=0; i<arr.length; i++) {\n  if(arr[i] == target) return ___;\n}\nreturn ___;',
      'hardTemplate':
          'int search(int[] arr, int target) {\n  for(int i=0; ___; i++) {\n    if(___) ___;\n  }\n  return -1;\n}',
      'blocks': {'a': 'i', 'b': '-1', 'c': 'target'},
      'hardBlocks': {
        'a': 'i < arr.length',
        'b': 'arr[i] == target',
        'c': 'return i',
        'd': 'return -1',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p3',
      'zone': 5,
      'subcategory': 'Structure & Basics',
      'title': 'Array Sum',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Calculate the sum of all elements in an integer array.',
      'hint': 'Use an accumulator variable.',
      'codeTemplate':
          'int sum = 0;\nfor(int val : arr) {\n  ___;\n}\nreturn sum;',
      'hardTemplate':
          'int calculateSum(int[] arr) {\n  int sum = ___;\n  for(___) {\n    ___;\n  }\n  return sum;\n}',
      'blocks': {'a': 'sum += val', 'b': 'sum = val', 'c': 'sum++'},
      'hardBlocks': {'a': '0', 'b': 'int x : arr', 'c': 'sum += x'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p4',
      'zone': 5,
      'subcategory': 'Structure & Basics',
      'title': 'Find Maximum',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find the maximum value in an integer array.',
      'hint': 'Initialize max with the first element.',
      'codeTemplate':
          'int max = arr[0];\nfor(int i=1; i<arr.length; i++) {\n  if(arr[i] > max) ___;\n}\nreturn max;',
      'hardTemplate':
          'int getMax(int[] arr) {\n  if(arr.length == 0) return -1;\n  int max = ___;\n  for(int i=1; i<___; i++) {\n    if(___) ___;\n  }\n  return max;\n}',
      'blocks': {'a': 'max = arr[i]', 'b': 'max++', 'c': 'arr[i] = max'},
      'hardBlocks': {
        'a': 'arr[0]',
        'b': 'arr.length',
        'c': 'arr[i] > max',
        'd': 'max = arr[i]',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z5_p5',
      'zone': 5,
      'subcategory': 'Structure & Basics',
      'title': 'Count Even Numbers',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Count how many even numbers are present in the array.',
      'hint': 'Use (n % 2 == 0) check.',
      'codeTemplate':
          'int count = 0;\nfor(int x : arr) {\n  if(___) count++;\n}\nreturn count;',
      'hardTemplate':
          'int countEvens(int[] arr) {\n  int count = 0;\n  for(int x : arr) {\n    if(___) ___;\n  }\n  return count;\n}',
      'blocks': {'a': 'x % 2 == 0', 'b': 'x / 2 == 0', 'c': 'x % 2 != 0'},
      'hardBlocks': {'a': 'x % 2 == 0', 'b': 'count++', 'c': 'count = x'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z5_p6',
      'zone': 5,
      'subcategory': 'Two Pointer Technique',
      'title': 'Reverse Array',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Reverse an array in-place using two pointers.',
      'hint': 'Swap elements at start and end, then move pointers inward.',
      'codeTemplate':
          'while (left < right) {\n  int temp = arr[left];\n  arr[left] = ___;\n  arr[right] = ___;\n  left++; right--;\n}',
      'hardTemplate':
          'void reverse(int[] arr) {\n  int left = ___, right = ___;\n  while (___) {\n    int temp = arr[left];\n    ___;\n    ___;\n    ___;\n    ___;\n  }\n}',
      'blocks': {'a': 'arr[right]', 'b': 'temp', 'c': 'arr[left]'},
      'hardBlocks': {
        'a': '0',
        'b': 'arr.length - 1',
        'c': 'left < right',
        'd': 'arr[left] = arr[right]',
        'e': 'arr[right] = temp',
        'f': 'left++',
        'g': 'right--',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {
        '1': 'a',
        '2': 'b',
        '3': 'c',
        '4': 'd',
        '5': 'e',
        '6': 'f',
        '7': 'g',
      },
    },
    {
      'id': 'z5_p7',
      'zone': 5,
      'subcategory': 'Two Pointer Technique',
      'title': 'Two Sum II (Sorted)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Given a sorted array, find two indices that sum to target.',
      'hint':
          'If sum < target, increment left. If sum > target, decrement right.',
      'codeTemplate':
          'while (left < right) {\n  int sum = arr[left] + arr[right];\n  if (sum == target) return new int[]{left, right};\n  if (sum < target) ___;\n  else ___;\n}',
      'hardTemplate':
          'int[] twoSum(int[] arr, int target) {\n  int left = 0, right = arr.length - 1;\n  while (left < right) {\n    int sum = ___;\n    if (sum == target) ___;\n    else if (sum < target) ___;\n    else ___;\n  }\n  return new int[]{-1, -1};\n}',
      'blocks': {'a': 'left++', 'b': 'right--', 'c': 'target++'},
      'hardBlocks': {
        'a': 'arr[left] + arr[right]',
        'b': 'return new int[]{left, right}',
        'c': 'left++',
        'd': 'right--',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z5_p8',
      'zone': 5,
      'subcategory': 'Two Pointer Technique',
      'title': 'Move Zeros',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Move all zeros in an array to the end while maintaining relative order.',
      'hint': 'Use a "lastNonZeroIndex" pointer.',
      'codeTemplate':
          'int j = 0;\nfor (int i = 0; i < arr.length; i++) {\n  if (arr[i] != 0) {\n    int temp = arr[i];\n    arr[i] = arr[j];\n    arr[j] = ___;\n    ___;\n  }\n}',
      'hardTemplate':
          'void moveZeroes(int[] arr) {\n  int writeIdx = 0;\n  for (int readIdx = 0; readIdx < ___; readIdx++) {\n    if (___) {\n      int temp = arr[readIdx];\n      ___;\n      ___;\n      ___;\n    }\n  }\n}',
      'blocks': {'a': 'temp', 'b': 'j++', 'c': 'i++'},
      'hardBlocks': {
        'a': 'arr.length',
        'b': 'arr[readIdx] != 0',
        'c': 'arr[readIdx] = arr[writeIdx]',
        'd': 'arr[writeIdx] = temp',
        'e': 'writeIdx++',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd', '5': 'e'},
    },
    {
      'id': 'z5_p9',
      'zone': 5,
      'subcategory': 'Two Pointer Technique',
      'title': 'Check Palindrome',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Check if an array is a palindrome (reads same forward and backward).',
      'hint': 'Use two pointers comparing from both ends.',
      'codeTemplate':
          'while (left < right) {\n  if (arr[left] != arr[right]) ___;\n  ___; ___;\n}\nreturn true;',
      'hardTemplate':
          'boolean isPalindrome(int[] arr) {\n  int L = 0, R = arr.length - 1;\n  while (L < R) {\n    if (___) return false;\n    ___; ___;\n  }\n  return true;\n}',
      'blocks': {'a': 'return false', 'b': 'left++', 'c': 'right--'},
      'hardBlocks': {'a': 'arr[L] != arr[R]', 'b': 'L++', 'c': 'R--'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p10',
      'zone': 5,
      'subcategory': 'Two Pointer Technique',
      'title': 'Remove Duplicates',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Remove duplicates from a sorted array in-place. Return length of unique set.',
      'hint': 'Keep a pointer for the last unique element found.',
      'codeTemplate':
          'int i = 0;\nfor (int j = 1; j < arr.length; j++) {\n  if (arr[i] != arr[j]) {\n    ___;\n    arr[i] = arr[j];\n  }\n}\nreturn ___ + 1;',
      'hardTemplate':
          'int removeDuplicates(int[] arr) {\n  if (arr.length == 0) return 0;\n  int i = 0;\n  for (int j = 1; j < ___; j++) {\n    if (___) {\n      i++;\n      ___;\n    }\n  }\n  return ___;\n}',
      'blocks': {'a': 'i++', 'b': 'i', 'c': 'j'},
      'hardBlocks': {
        'a': 'arr.length',
        'b': 'arr[i] != arr[j]',
        'c': 'arr[i] = arr[j]',
        'd': 'i + 1',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },

    {
      'id': 'z5_p11',
      'zone': 5,
      'subcategory': 'Sliding Window',
      'title': 'Max Sum Subarray (Size K)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find the maximum sum of any contiguous subarray of size K.',
      'hint':
          'Subtract the element leaving the window and add the one entering it.',
      'codeTemplate':
          'int maxSum = 0, windowSum = 0;\nfor (int i = 0; i < arr.length; i++) {\n  windowSum += arr[i];\n  if (i >= k - 1) {\n    maxSum = Math.max(maxSum, windowSum);\n    ___;\n  }\n}',
      'hardTemplate':
          'int findMaxSum(int[] arr, int k) {\n  int maxSum = 0, currentWindowSum = 0;\n  for (int i = 0; i < arr.length; i++) {\n    ___;\n    if (i >= k) {\n      ___;\n    }\n    if (i >= k - 1) {\n      ___;\n    }\n  }\n  return maxSum;\n}',
      'blocks': {
        'a': 'windowSum -= arr[i - (k - 1)]',
        'b': 'maxSum++',
        'c': 'return maxSum',
      },
      'hardBlocks': {
        'a': 'currentWindowSum += arr[i]',
        'b': 'currentWindowSum -= arr[i-k]',
        'c': 'maxSum = Math.max(maxSum, currentWindowSum)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p12',
      'zone': 5,
      'subcategory': 'Sliding Window',
      'title': 'Smallest Subarray (Sum >= S)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find the length of the smallest contiguous subarray with sum >= S.',
      'hint': 'Expand the window until sum >= S, then shrink it from the left.',
      'codeTemplate':
          'while (windowSum >= target) {\n  minLen = Math.min(minLen, right - left + 1);\n  ___;\n  ___;\n}',
      'hardTemplate':
          'int minSubArrayLen(int target, int[] nums) {\n  int windowSum = 0, minLen = Integer.MAX_VALUE, left = 0;\n  for (int right = 0; right < nums.length; right++) {\n    windowSum += nums[right];\n    while (___) {\n      minLen = ___;\n      windowSum -= ___;\n      ___;\n    }\n  }\n  return minLen == Integer.MAX_VALUE ? 0 : minLen;\n}',
      'blocks': {'a': 'windowSum -= arr[left]', 'b': 'left++', 'c': 'right++'},
      'hardBlocks': {
        'a': 'windowSum >= target',
        'b': 'Math.min(minLen, right - left + 1)',
        'c': 'nums[left]',
        'd': 'left++',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z5_p13',
      'zone': 5,
      'subcategory': 'Sliding Window',
      'title': 'Longest Substring K Distinct',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Find the length of the longest substring with no more than K distinct characters.',
      'hint': 'Use a frequency map (or array) and shrink window when size > K.',
      'codeTemplate':
          'map.put(c, map.getOrDefault(c, 0) + 1);\nwhile (map.size() > k) {\n  char leftChar = s.charAt(left);\n  ___;\n  if (map.get(leftChar) == 0) ___;\n  left++;\n}',
      'hardTemplate':
          'int lengthOfLongestSubstringKDistinct(String s, int k) {\n  Map<Character, Integer> counts = new HashMap<>();\n  int maxLen = 0, left = 0;\n  for (int right = 0; right < s.length(); right++) {\n    char c = s.charAt(right);\n    ___;\n    while (___) {\n      char l = s.charAt(left);\n      ___;\n      if (___) ___;\n      ___;\n    }\n    maxLen = ___;\n  }\n  return maxLen;\n}',
      'blocks': {
        'a': 'map.put(leftChar, map.get(leftChar) - 1)',
        'b': 'map.remove(leftChar)',
        'c': 'left++',
      },
      'hardBlocks': {
        'a': 'counts.put(c, counts.getOrDefault(c, 0) + 1)',
        'b': 'counts.size() > k',
        'c': 'counts.put(l, counts.get(l) - 1)',
        'd': 'counts.get(l) == 0',
        'e': 'counts.remove(l)',
        'f': 'left++',
        'g': 'Math.max(maxLen, right-left+1)',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {
        '1': 'a',
        '2': 'b',
        '3': 'c',
        '4': 'd',
        '5': 'e',
        '6': 'f',
        '7': 'g',
      },
    },
    {
      'id': 'z5_p14',
      'zone': 5,
      'subcategory': 'Sliding Window',
      'title': 'Fruit Baskets',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Given an array of fruits (ints), pick max fruits into 2 baskets (max 2 distinct).',
      'hint': 'Identical to Longest Substring with 2 Distinct Characters.',
      'codeTemplate':
          'while (map.size() > 2) {\n  int leftFruit = fruits[left];\n  map.put(leftFruit, ___);\n  if (map.get(leftFruit) == 0) ___;\n  ___;\n}',
      'hardTemplate':
          'int totalFruit(int[] fruits) {\n  Map<Integer, Integer> m = new HashMap<>();\n  int res = 0, L = 0;\n  for (int R = 0; R < fruits.length; R++) {\n    ___;\n    while (___) {\n      ___;\n      if (___) ___;\n      ___;\n    }\n    res = ___;\n  }\n  return res;\n}',
      'blocks': {
        'a': 'map.get(leftFruit) - 1',
        'b': 'map.remove(leftFruit)',
        'c': 'left++',
      },
      'hardBlocks': {
        'a': 'm.put(fruits[R], m.getOrDefault(fruits[R], 0) + 1)',
        'b': 'm.size() > 2',
        'c': 'm.put(fruits[L], m.get(fruits[L]) - 1)',
        'd': 'm.get(fruits[L]) == 0',
        'e': 'm.remove(fruits[L])',
        'f': 'L++',
        'g': 'Math.max(res, R-L+1)',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {
        '1': 'a',
        '2': 'b',
        '3': 'c',
        '4': 'd',
        '5': 'e',
        '6': 'f',
        '7': 'g',
      },
    },
    {
      'id': 'z5_p15',
      'zone': 5,
      'subcategory': 'Sliding Window',
      'title': 'Find All Anagrams',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Find all start indices of p\'s anagrams in s.',
      'hint': 'Slide a window of size p.length and compare frequency maps.',
      'codeTemplate':
          'if (i >= p.length()) {\n  char leftChar = s.charAt(i - p.length());\n  sFreq[leftChar - \'a\']--;\n}\nsFreq[s.charAt(i) - \'a\']++;\nif (___) results.add(___);',
      'hardTemplate':
          'List<Integer> findAnagrams(String s, String p) {\n  int[] pF = new int[26], sF = new int[26];\n  for(char c : p.toCharArray()) ___; \n  for(int i=0; i<s.length(); i++) {\n    sF[s.charAt(i)-\'a\']++;\n    if(i >= p.length()) ___;\n    if(___) ___;\n  }\n  return res;\n}',
      'blocks': {
        'a': 'Arrays.equals(sFreq, pFreq)',
        'b': 'i - p.length() + 1',
        'c': 'sFreq == pFreq',
      },
      'hardBlocks': {
        'a': 'pF[c-\'a\']++',
        'b': 'sF[s.charAt(i-p.length())-\'a\']--',
        'c': 'Arrays.equals(pF, sF)',
        'd': 'res.add(i-p.length()+1)',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z5_p16',
      'zone': 5,
      'subcategory': 'Prefix Sum & Kadane',
      'title': 'Kadane\'s Algorithm',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Find the maximum sum of a contiguous subarray.',
      'hint': 'If current sum becomes negative, reset it to zero.',
      'codeTemplate':
          'for(int x : nums) {\n  sum += x;\n  maxSum = Math.max(maxSum, sum);\n  if(sum < 0) ___;\n}\nreturn maxSum;',
      'hardTemplate':
          'int maxSubArray(int[] nums) {\n  int max = nums[0], cur = 0;\n  for(int x : nums) {\n    cur += x;\n    if(cur > max) ___;\n    if(cur < 0) ___;\n  }\n  return max;\n}',
      'blocks': {'a': 'sum = 0', 'b': 'sum = x', 'c': 'maxSum = 0'},
      'hardBlocks': {'a': 'max = cur', 'b': 'cur = 0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z5_p17',
      'zone': 5,
      'subcategory': 'Prefix Sum & Kadane',
      'title': 'Range Sum Query',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Respond to sum queries between indices L and R.',
      'hint': 'Precompute prefix sums. sum(L, R) = prefix[R] - prefix[L-1].',
      'codeTemplate':
          'int[] prefix = new int[n];\nprefix[0] = nums[0];\nfor(int i=1; i<n; i++) {\n  prefix[i] = prefix[i-1] + ___;\n}\nint sumLR = prefix[R] - (L > 0 ? ___ : 0);',
      'hardTemplate':
          'class NumArray {\n  int[] p;\n  public NumArray(int[] nums) {\n    p = new int[nums.length + 1];\n    for(int i=0; i<nums.length; i++) {\n      ___;\n    }\n  }\n  public int sumRange(int i, int j) {\n    return ___;\n  }\n}',
      'blocks': {'a': 'nums[i]', 'b': 'prefix[L-1]', 'c': 'nums[L]'},
      'hardBlocks': {'a': 'p[i+1] = p[i] + nums[i]', 'b': 'p[j+1] - p[i]'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z5_p18',
      'zone': 5,
      'subcategory': 'Prefix Sum & Kadane',
      'title': 'Equilibrium Index',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find an index where lower indices sum = higher indices sum.',
      'hint': 'totalSum - leftSum - arr[i] = rightSum.',
      'codeTemplate':
          'for(int i=0; i<n; i++) {\n  int rightSum = totalSum - leftSum - arr[i];\n  if(leftSum == rightSum) return i;\n  ___;\n}',
      'hardTemplate':
          'int findEquilibrium(int[] arr) {\n  int total = 0, left = 0;\n  for(int x : arr) ___;\n  for(int i=0; i<arr.length; i++) {\n    if(left == ___) return i;\n    ___;\n  }\n  return -1;\n}',
      'blocks': {
        'a': 'leftSum += arr[i]',
        'b': 'leftSum = arr[i]',
        'c': 'rightSum++',
      },
      'hardBlocks': {
        'a': 'total += x',
        'b': 'total - left - arr[i]',
        'c': 'left += arr[i]',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p19',
      'zone': 5,
      'subcategory': 'Prefix Sum & Kadane',
      'title': 'Subarray Sum Equals K',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Find the total number of subarrays whose sum equals K.',
      'hint': 'Use a Hashmap to store (prefixSum, frequency).',
      'codeTemplate':
          'map.put(0, 1);\nfor(int x : nums) {\n  sum += x;\n  if(map.containsKey(sum - k)) count += ___;\n  map.put(sum, ___);\n}',
      'hardTemplate':
          'int subarraySum(int[] nums, int k) {\n  Map<Integer, Integer> m = new HashMap<>();\n  m.put(0, 1);\n  int s=0, c=0;\n  for(int x : nums) {\n    s += x;\n    if(___) ___;\n    ___;\n  }\n  return c;\n}',
      'blocks': {
        'a': 'map.get(sum - k)',
        'b': 'map.getOrDefault(sum, 0) + 1',
        'c': '1',
      },
      'hardBlocks': {
        'a': 'm.containsKey(s - k)',
        'b': 'c += m.get(s - k)',
        'c': 'm.put(s, m.getOrDefault(s, 0) + 1)',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p21',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Two Sum',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find two numbers in an array that add up to a specific target.',
      'hint': 'Use a HashMap to store value -> index for complement lookup.',
      'codeTemplate':
          'for (int i = 0; i < nums.length; i++) {\n  int diff = target - nums[i];\n  if (map.containsKey(diff)) return new int[]{___, ___};\n  map.put(nums[i], i);\n}',
      'hardTemplate':
          'public int[] twoSum(int[] nums, int target) {\n  Map<Integer, Integer> map = new HashMap<>();\n  for (int i = 0; i < nums.length; i++) {\n    ___;\n    if (___) ___;\n    ___;\n  }\n  return null;\n}',
      'blocks': {'a': 'map.get(diff)', 'b': 'i', 'c': 'target'},
      'hardBlocks': {
        'a': 'int diff = target - nums[i]',
        'b': 'map.containsKey(diff)',
        'c': 'return new int[]{map.get(diff), i}',
        'd': 'map.put(nums[i], i)',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z5_p22',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Best Time to Buy and Sell Stock',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find the maximum profit you can achieve by buying on one day and selling on another.',
      'hint': 'Keep track of the minimum price seen so far.',
      'codeTemplate':
          'for (int price : prices) {\n  if (price < minPrice) ___ = price;\n  else if (price - minPrice > maxProfit) ___ = price - minPrice;\n}',
      'hardTemplate':
          'int maxProfit(int[] prices) {\n  int low = Integer.MAX_VALUE, res = 0;\n  for(int p : prices) {\n    if(p < low) ___;\n    else if(___) ___;\n  }\n  return res;\n}',
      'blocks': {'a': 'minPrice', 'b': 'maxProfit', 'c': 'price'},
      'hardBlocks': {
        'a': 'low = p',
        'b': 'p - low > res',
        'c': 'res = p - low',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p23',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Contains Duplicate',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Check if any value appears at least twice in the array.',
      'hint': 'Use a HashSet to keep track of seen values.',
      'codeTemplate':
          'for (int num : nums) {\n  if (set.contains(num)) ___;\n  set.add(num);\n}\nreturn ___;',
      'hardTemplate':
          'boolean containsDuplicate(int[] nums) {\n  Set<Integer> s = new HashSet<>();\n  for(int x : nums) {\n    if(___) return true;\n    ___;\n  }\n  return false;\n}',
      'blocks': {'a': 'return true', 'b': 'false', 'c': 'num'},
      'hardBlocks': {'a': 's.contains(x)', 'b': 's.add(x)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z5_p24',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Plus One',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Increment the large integer represented as an array of digits.',
      'hint': 'Start from the last digit and handle carries.',
      'codeTemplate':
          'for (int i = n - 1; i >= 0; i--) {\n  if (digits[i] < 9) {\n    digits[i]++;\n    return ___;\n  }\n  digits[i] = 0;\n}',
      'hardTemplate':
          'int[] plusOne(int[] digits) {\n  for(int i=digits.length-1; i>=0; i--) {\n    if(___) {\n      ___;\n      return digits;\n    }\n    ___;\n  }\n  int[] res = new int[digits.length+1];\n  res[0] = 1;\n  return res;\n}',
      'blocks': {'a': 'digits', 'b': 'null', 'c': 'i'},
      'hardBlocks': {
        'a': 'digits[i] < 9',
        'b': 'digits[i]++',
        'c': 'digits[i] = 0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p25',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Product of Array Except Self',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Return an array where each element is the product of all other elements without using division.',
      'hint': 'Calculate left products and right products.',
      'codeTemplate':
          'ans[0] = 1;\nfor(int i=1; i<n; i++) ans[i] = ans[i-1] * ___;\nint right = 1;\nfor(int i=n-1; i>=0; i--) {\n  ans[i] *= ___;\n  right *= ___;\n}',
      'hardTemplate':
          'int[] productExceptSelf(int[] nums) {\n  int n = nums.length;\n  int[] res = new int[n];\n  res[0] = 1;\n  for(int i=1; i<n; i++) ___;\n  int r = 1;\n  for(int i=n-1; i>=0; i--) {\n    ___;\n    ___;\n  }\n  return res;\n}',
      'blocks': {'a': 'nums[i-1]', 'b': 'right', 'c': 'nums[i]'},
      'hardBlocks': {
        'a': 'res[i] = res[i-1] * nums[i-1]',
        'b': 'res[i] *= r',
        'c': 'r *= nums[i]',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z5_p26',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Search in Rotated Sorted Array',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Find a value in a sorted array that has been rotated.',
      'hint':
          'Identify which half is sorted and check if target is in that range.',
      'codeTemplate':
          'if (nums[mid] >= nums[left]) {\n  if (target >= nums[left] && target < nums[mid]) right = ___;\n  else left = ___;\n} else {\n  if (target > nums[mid] && target <= nums[right]) left = ___;\n  else right = ___;\n}',
      'hardTemplate':
          'int search(int[] nums, int target) {\n  int L=0, R=nums.length-1;\n  while(L <= R) {\n    int M = L + (R-L)/2;\n    if(nums[M] == target) return M;\n    if(nums[M] >= nums[L]) {\n      if(___) ___;\n      else ___;\n    } else {\n      if(___) ___;\n      else ___;\n    }\n  }\n  return -1;\n}',
      'blocks': {'a': 'mid - 1', 'b': 'mid + 1', 'c': 'left'},
      'hardBlocks': {
        'a': 'target >= nums[L] && target < nums[M]',
        'b': 'R = M-1',
        'c': 'L = M+1',
        'd': 'target > nums[M] && target <= nums[R]',
        'e': 'L = M+1',
        'f': 'R = M-1',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'b', '4': 'a'},
      'hardSolution': {
        '1': 'a',
        '2': 'b',
        '3': 'c',
        '4': 'd',
        '5': 'e',
        '6': 'f',
      },
    },
    {
      'id': 'z5_p27',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': '3Sum',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find all unique triplets in the array that sum up to zero.',
      'hint': 'Sort the array and use Two Pointers for each fixed element.',
      'codeTemplate':
          'if (i > 0 && nums[i] == nums[i - 1]) ___;\nwhile (lo < hi) {\n  int sum = nums[i] + nums[lo] + nums[hi];\n  if (sum < 0) lo++;\n  else if (sum > 0) hi--;\n  else {\n    res.add(Arrays.asList(nums[i], nums[lo], nums[hi]));\n    while (lo < hi && nums[lo] == nums[lo+1]) ___;\n    lo++; hi--;\n  }\n}',
      'hardTemplate':
          'List<List<Integer>> threeSum(int[] nums) {\n  Arrays.sort(nums);\n  for(int i=0; i<nums.length-2; i++) {\n    if(i > 0 && nums[i] == nums[i-1]) ___;\n    int L = i+1, R = nums.length-1;\n    while(L < R) {\n      int sum = nums[i] + nums[L] + nums[R];\n      if(sum == 0) {\n        ___;\n        while(L < R && nums[L] == nums[L+1]) ___;\n        L++; R--;\n      } else if(sum < 0) ___;\n      else ___;\n    }\n  }\n}',
      'blocks': {'a': 'continue', 'b': 'lo++', 'c': 'res.add'},
      'hardBlocks': {
        'a': 'continue',
        'b': 'res.add(Arrays.asList(nums[i], nums[L], nums[R]))',
        'c': 'L++',
        'd': 'L++',
        'e': 'R--',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd', '5': 'e'},
    },
    {
      'id': 'z5_p28',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Container With Most Water',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find two lines that together with the x-axis forms a container that holds the most water.',
      'hint':
          'Two pointers at both ends. Move the one pointing to the shorter line.',
      'codeTemplate':
          'while (left < right) {\n  int area = Math.min(height[left], height[right]) * (right - left);\n  maxArea = Math.max(maxArea, area);\n  if (height[left] < height[right]) ___;\n  else ___;\n}',
      'hardTemplate':
          'int maxArea(int[] height) {\n  int left = 0, right = height.length - 1, res = 0;\n  while (left < right) {\n    int h = ___;\n    res = ___;\n    if (___) ___;\n    else ___;\n  }\n  return res;\n}',
      'blocks': {'a': 'left++', 'b': 'right--', 'c': 'area'},
      'hardBlocks': {
        'a': 'Math.min(height[left], height[right])',
        'b': 'Math.max(res, h * (right - left))',
        'c': 'height[left] < height[right]',
        'd': 'left++',
        'e': 'right--',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd', '5': 'e'},
    },
    {
      'id': 'z5_p29',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Trapping Rain Water',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Given n non-negative integers representing an elevation map, compute how much water it can trap.',
      'hint': 'Two pointers or precompute leftMax and rightMax arrays.',
      'codeTemplate':
          'if (leftMax < rightMax) {\n  if (height[left] >= leftMax) leftMax = height[left];\n  else ans += ___;\n  left++;\n} else {\n  if (height[right] >= rightMax) rightMax = height[right];\n  else ans += ___;\n  right--;\n}',
      'hardTemplate':
          'int trap(int[] height) {\n  int L=0, R=height.length-1, Lmax=0, Rmax=0, res=0;\n  while(L < R) {\n    if(height[L] < height[R]) {\n      if(___) ___;\n      else ___;\n      ___;\n    } else {\n      if(___) ___;\n      else ___;\n      ___;\n    }\n  }\n  return res;\n}',
      'blocks': {
        'a': 'leftMax - height[left]',
        'b': 'rightMax - height[right]',
        'c': 'ans++',
      },
      'hardBlocks': {
        'a': 'height[L] >= Lmax',
        'b': 'Lmax = height[L]',
        'c': 'res += Lmax - height[L]',
        'd': 'L++',
        'e': 'height[R] >= Rmax',
        'f': 'Rmax = height[R]',
        'g': 'res += Rmax - height[R]',
        'h': 'R--',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {
        '1': 'a',
        '2': 'b',
        '3': 'c',
        '4': 'd',
        '5': 'e',
        '6': 'f',
        '7': 'g',
        '8': 'h',
      },
    },
    {
      'id': 'z5_p30',
      'zone': 5,
      'subcategory': 'LeetCode Challenges',
      'title': 'Sliding Window Maximum',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Return the max element in each sliding window of size K.',
      'hint':
          'Use a Deque to keep track of indices in decreasing order of values.',
      'codeTemplate':
          'while (!q.isEmpty() && nums[q.peekLast()] <= nums[i]) ___;\nq.addLast(i);\nif (q.peekFirst() == i - k) ___;\nif (i >= k - 1) res[index++] = nums[___];',
      'hardTemplate':
          'int[] maxSlidingWindow(int[] nums, int k) {\n  Deque<Integer> q = new ArrayDeque<>();\n  int[] res = new int[nums.length-k+1];\n  for(int i=0; i<nums.length; i++) {\n    while(!q.isEmpty() && ___) ___;\n    q.addLast(i);\n    if(___) ___;\n    if(i >= k-1) ___;\n  }\n  return res;\n}',
      'blocks': {
        'a': 'q.removeLast()',
        'b': 'q.removeFirst()',
        'c': 'q.peekFirst()',
      },
      'hardBlocks': {
        'a': 'nums[q.peekLast()] <= nums[i]',
        'b': 'q.removeLast()',
        'c': 'q.peekFirst() == i-k',
        'd': 'q.removeFirst()',
        'e': 'res[i-k+1] = nums[q.peekFirst()]',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd', '5': 'e'},
    },

    // ── ZONE 6: Binary Search ──
    {
      'id': 'z6_p1',
      'zone': 6,
      'subcategory': 'Fundamentals',
      'title': 'Standard Binary Search',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Implement the standard binary search algorithm for an ascending sorted array.',
      'hint': 'Start with L=0, R=length-1. Find mid and adjust L or R.',
      'codeTemplate':
          'while (left <= right) {\n  int mid = left + (right - left) / 2;\n  if (arr[mid] == target) return mid;\n  if (arr[mid] < target) ___;\n  else ___;\n}\nreturn -1;',
      'hardTemplate':
          'int search(int[] nums, int target) {\n  int L = 0, R = nums.length - 1;\n  while (___) {\n    int mid = ___;\n    if (nums[mid] == target) ___;\n    else if (nums[mid] < target) ___;\n    else ___;\n  }\n  return -1;\n}',
      'blocks': {
        'a': 'left = mid + 1',
        'b': 'right = mid - 1',
        'c': 'return mid',
      },
      'hardBlocks': {
        'a': 'L <= R',
        'b': 'L + (R-L)/2',
        'c': 'return mid',
        'd': 'L = mid + 1',
        'e': 'R = mid - 1',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd', '5': 'e'},
    },
    {
      'id': 'z6_p2',
      'zone': 6,
      'subcategory': 'Fundamentals',
      'title': 'Order-Agnostic BS',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Search in a sorted array where you don\'t know if it\'s ascending or descending.',
      'hint': 'Compare arr[start] and arr[end] to determine order.',
      'codeTemplate':
          'boolean isAsc = arr[start] < arr[end];\n// ... inside loop\nif (arr[mid] == target) return mid;\nif (isAsc) {\n  if (target < arr[mid]) ___;\n  else ___;\n} else {\n  if (target > arr[mid]) ___;\n  else ___;\n}',
      'hardTemplate':
          'int agnosticSearch(int[] arr, int target) {\n  int s = 0, e = arr.length - 1;\n  boolean isAsc = ___;\n  while(s <= e) {\n    int m = s + (e-s)/2;\n    if(arr[m] == target) return m;\n    if(isAsc) {\n      if(target < arr[m]) ___;\n      else ___;\n    } else {\n      if(target > arr[m]) ___;\n      else ___;\n    }\n  }\n  return -1;\n}',
      'blocks': {
        'a': 'right = mid - 1',
        'b': 'left = mid + 1',
        'c': 'isAsc = true',
      },
      'hardBlocks': {
        'a': 'arr[s] < arr[e]',
        'b': 'e = m - 1',
        'c': 's = m + 1',
        'd': 'e = m - 1',
        'e': 's = m + 1',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'd', '4': 'e'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd', '5': 'e'},
    },
    {
      'id': 'z6_p3',
      'zone': 6,
      'subcategory': 'Fundamentals',
      'title': 'Ceiling of a Number',
      'difficulty': 'Medium',
      'xp': 130,
      'description':
          'Find the smallest number in the array that is greater than or equal to target.',
      'hint': 'Return start pointer at the end of binary search.',
      'codeTemplate':
          'if (target > arr[arr.length - 1]) return -1;\nwhile (start <= end) {\n  int mid = start + (end - start) / 2;\n  if (target < arr[mid]) ___;\n  else if (target > arr[mid]) ___;\n  else return mid;\n}\nreturn ___;',
      'hardTemplate':
          'int findCeiling(int[] arr, int target) {\n  if(target > arr[arr.length-1]) return -1;\n  int s = 0, e = arr.length - 1;\n  while(s <= e) {\n    int m = s + (e-s)/2;\n    if(target == arr[m]) return m;\n    if(target < arr[m]) ___;\n    else ___;\n  }\n  return ___;\n}',
      'blocks': {'a': 'end = mid - 1', 'b': 'start = mid + 1', 'c': 'start'},
      'hardBlocks': {'a': 'e = m - 1', 'b': 's = m + 1', 'c': 's'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z6_p4',
      'zone': 6,
      'subcategory': 'Fundamentals',
      'title': 'Floor of a Number',
      'difficulty': 'Medium',
      'xp': 130,
      'description':
          'Find the largest number in the array that is less than or equal to target.',
      'hint': 'Return end pointer at the end of binary search.',
      'codeTemplate':
          'while (start <= end) {\n  int mid = start + (end - start) / 2;\n  if (target < arr[mid]) ___;\n  else if (target > arr[mid]) ___;\n  else return mid;\n}\nreturn ___;',
      'hardTemplate':
          'int findFloor(int[] arr, int target) {\n  int s = 0, e = arr.length - 1;\n  while(s <= e) {\n    int m = s + (e-s)/2;\n    if(target == arr[m]) return m;\n    if(target < arr[m]) ___;\n    else ___;\n  }\n  return ___;\n}',
      'blocks': {'a': 'end = mid - 1', 'b': 'start = mid + 1', 'c': 'end'},
      'hardBlocks': {'a': 'e = m - 1', 'b': 's = m + 1', 'c': 'e'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z6_p5',
      'zone': 6,
      'subcategory': 'Range Search',
      'title': 'First and Last Position',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find both the starting and ending index of a given target value.',
      'hint': 'Run binary search twice, once for start and once for end.',
      'codeTemplate':
          'int search(int[] nums, int target, boolean findIdx) {\n  while(s <= e) {\n    if(nums[m] < target) s = m+1;\n    else if(nums[m] > target) e = m-1;\n    else {\n      res = m;\n      if(findIdx) ___;\n      else ___;\n    }\n  }\n}',
      'hardTemplate':
          'int find(int[] nums, int target, boolean isFirst) {\n  int s=0, e=nums.length-1, ans=-1;\n  while(s <= e) {\n    int m = s + (e-s)/2;\n    if(target < nums[m]) e = m-1;\n    else if(target > nums[m]) s = m+1;\n    else {\n      ans = m;\n      if(isFirst) ___;\n      else ___;\n    }\n  }\n  return ans;\n}',
      'blocks': {
        'a': 'end = mid - 1',
        'b': 'start = mid + 1',
        'c': 'res = mid',
      },
      'hardBlocks': {'a': 'e = m - 1', 'b': 's = m + 1'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z6_p6',
      'zone': 6,
      'subcategory': 'Infinite Array',
      'title': 'Search in Infinite Array',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Search for a target value in an array where you cannot use arr.length.',
      'hint': 'Double the chunk size (box) every time target is beyond end.',
      'codeTemplate':
          'while (target > arr[end]) {\n  int newStart = end + 1;\n  end = end + (___) * 2;\n  start = newStart;\n}',
      'hardTemplate':
          'int infiniteSearch(int[] arr, int target) {\n  int start = 0, end = 1;\n  while (___) {\n    int temp = end + 1;\n    end = end + (___) * 2;\n    start = temp;\n  }\n  return binarySearch(arr, target, start, end);\n}',
      'blocks': {'a': 'end - start + 1', 'b': 'end', 'c': 'target'},
      'hardBlocks': {'a': 'target > arr[end]', 'b': 'end - start + 1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z6_p7',
      'zone': 6,
      'subcategory': 'Range Search',
      'title': 'Peak Index in Mountain Array',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find the peak element in an array that increases then decreases.',
      'hint':
          'If arr[mid] > arr[mid+1], you are in descending part (peak might be mid).',
      'codeTemplate':
          'while (start < end) {\n  int mid = start + (end - start) / 2;\n  if (arr[mid] > arr[mid + 1]) ___;\n  else ___;\n}\nreturn start;',
      'hardTemplate':
          'int peakIndex(int[] arr) {\n  int s = 0, e = arr.length - 1;\n  while (___) {\n    int m = s + (e-s)/2;\n    if (arr[m] > arr[m+1]) ___;\n    else ___;\n  }\n  return s;\n}',
      'blocks': {'a': 'end = mid', 'b': 'start = mid + 1', 'c': 'mid++'},
      'hardBlocks': {'a': 's < e', 'b': 'e = m', 'c': 's = m + 1'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z6_p8',
      'zone': 6,
      'subcategory': 'Range Search',
      'title': 'Single Element Sorted List',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Every element appears twice except for one. Find it in O(log n).',
      'hint': 'Compare mid with neighbors and look at pair index parity.',
      'codeTemplate':
          'while (low < high) {\n  int mid = low + (high - low) / 2;\n  if (mid % 2 == 1) mid--;\n  if (nums[mid] == nums[mid + 1]) ___;\n  else ___;\n}',
      'hardTemplate':
          'int singleNonDuplicate(int[] nums) {\n  int L = 0, R = nums.length - 1;\n  while (L < R) {\n    int M = L + (R-L)/2;\n    if (M % 2 == 1) ___;\n    if (nums[M] == nums[M+1]) ___;\n    else ___;\n  }\n  return nums[L];\n}',
      'blocks': {'a': 'low = mid + 2', 'b': 'high = mid', 'c': 'mid++'},
      'hardBlocks': {'a': 'M--', 'b': 'L = M + 2', 'c': 'R = M'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z6_p9',
      'zone': 6,
      'subcategory': 'Order-Agnostic BS',
      'title': 'Find in Mountain Array',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Find target in a mountain array. Must use minimal calls.',
      'hint': 'Find peak first, then binary search in both sorted halves.',
      'codeTemplate':
          'int peak = findPeak(arr);\nint res = binarySearch(arr, target, 0, peak, true);\nif (res != -1) return res;\nreturn binarySearch(arr, target, peak + 1, arr.length() - 1, ___);',
      'hardTemplate':
          'int findInMountainArray(int target, MountainArray arr) {\n  int peak = ___;\n  int first = ___;\n  if (first != -1) return first;\n  return ___;\n}',
      'blocks': {'a': 'false', 'b': 'true', 'c': 'peak'},
      'hardBlocks': {
        'a': 'findPeak(arr)',
        'b': 'orderAgnosticBS(arr, target, 0, peak)',
        'c': 'orderAgnosticBS(arr, target, peak+1, arr.length()-1)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z6_p10',
      'zone': 6,
      'subcategory': 'Sorted Rotated',
      'title': 'Rotated Sorted Search',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Search for target in sorted array that has been rotated.',
      'hint':
          'Find the pivot (max element) or use the half-based search logic.',
      'codeTemplate':
          'if (arr[mid] > arr[mid + 1]) return mid;\nif (arr[mid] < arr[mid - 1]) return mid - 1;\nif (arr[start] >= arr[mid]) ___;\nelse ___;',
      'hardTemplate':
          'int findPivot(int[] arr) {\n  int s=0, e=arr.length-1;\n  while(s <= e) {\n    int m = s+(e-s)/2;\n    if(m < e && arr[m] > arr[m+1]) ___;\n    if(m > s && arr[m] < arr[m-1]) ___;\n    if(arr[s] >= arr[m]) ___;\n    else ___;\n  }\n  return -1;\n}',
      'blocks': {'a': 'end = mid - 1', 'b': 'start = mid + 1', 'c': 'mid'},
      'hardBlocks': {
        'a': 'return m',
        'b': 'return m-1',
        'c': 'e = m - 1',
        'd': 's = m + 1',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z6_p11',
      'zone': 6,
      'subcategory': 'Search in Matrix',
      'title': 'Search in 2D Matrix',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Search for a target in a matrix where each row is sorted and the first integer of each row is greater than the last integer of the previous row.',
      'hint':
          'Treat the 2D matrix as a flattened 1D array: index i corresponds to matrix[i / cols][i % cols].',
      'codeTemplate':
          'int row = mid / cols;\nint col = mid % cols;\nif (matrix[row][col] == target) return true;\nif (matrix[row][col] < target) ___;\nelse ___;\n}',
      'hardTemplate':
          'boolean searchMatrix(int[][] matrix, int target) {\n  int m = matrix.length, n = matrix[0].length;\n  int L = 0, R = m * n - 1;\n  while (L <= R) {\n    int mid = L + (R-L)/2;\n    int val = ___;\n    if (val == target) return true;\n    if (val < target) ___;\n    else ___;\n  }\n  return false;\n}',
      'blocks': {'a': 'left = mid + 1', 'b': 'right = mid - 1', 'c': 'mid'},
      'hardBlocks': {
        'a': 'matrix[mid / n][mid % n]',
        'b': 'L = mid + 1',
        'c': 'R = mid - 1',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z6_p12',
      'zone': 6,
      'subcategory': 'Search in Matrix',
      'title': 'Row-Column Sorted Search',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Search in a matrix where rows are sorted and columns are sorted. Start from top-right or bottom-left.',
      'hint': 'If target < current, move left. If target > current, move down.',
      'codeTemplate':
          'int r = 0, c = cols - 1;\nwhile (r < rows && c >= 0) {\n  if (matrix[r][c] == target) return new int[]{r, c};\n  if (matrix[r][c] < target) ___;\n  else ___;\n}',
      'hardTemplate':
          'int[] search(int[][] matrix, int target) {\n  int r = 0, c = matrix[0].length - 1;\n  while (___) {\n    if (matrix[r][c] == target) ___;\n    if (matrix[r][c] < target) ___;\n    else ___;\n  }\n  return new int[]{-1, -1};\n}',
      'blocks': {'a': 'r++', 'b': 'c--', 'c': 'r--'},
      'hardBlocks': {
        'a': 'r < matrix.length && c >= 0',
        'b': 'return new int[]{r, c}',
        'c': 'r++',
        'd': 'c--',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z6_p13',
      'zone': 6,
      'subcategory': 'Search Variations',
      'title': 'Find Element in Bitonic Array',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'A bitonic array increases then decreases. Find the target element.',
      'hint':
          'Find peak, then binary search on left (ascending) and right (descending) sides.',
      'codeTemplate':
          'int peak = findPeak(arr);\nint res = orderAgnosticBS(arr, target, 0, peak);\nif (res != -1) return res;\nreturn orderAgnosticBS(arr, target, peak + 1, ___);',
      'hardTemplate':
          'int searchBitonic(int[] arr, int target) {\n  int peak = findPeak(arr);\n  int firstTry = ___;\n  if (firstTry != -1) ___;\n  return ___;\n}',
      'blocks': {'a': 'arr.length - 1', 'b': 'peak - 1', 'c': '0'},
      'hardBlocks': {
        'a': 'binarySearch(arr, target, 0, peak, true)',
        'b': 'return firstTry',
        'c': 'binarySearch(arr, target, peak+1, arr.length-1, false)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z6_p14',
      'zone': 6,
      'subcategory': 'Search Variations',
      'title': 'Count Occurrences',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Find how many times a target appears in a sorted array.',
      'hint': 'Find first index and last index. Count = last - first + 1.',
      'codeTemplate':
          'int first = findIdx(arr, target, true);\nif (first == -1) return 0;\nint last = findIdx(arr, target, false);\nreturn ___ - ___ + 1;',
      'hardTemplate':
          'int count(int[] arr, int target) {\n  int f = findIdx(arr, target, true);\n  if (f == -1) ___;\n  return ___;\n}',
      'blocks': {'a': 'last', 'b': 'first', 'c': 'ans'},
      'hardBlocks': {
        'a': 'return 0',
        'b': 'findIdx(arr, target, false) - f + 1',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z6_p15',
      'zone': 6,
      'subcategory': 'Search Variations',
      'title': 'Search in Nearly Sorted',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'In a nearly sorted array, element at i could be at i-1, i, or i+1. Search for target.',
      'hint': 'Check mid-1, mid, and mid+1 in each iteration.',
      'codeTemplate':
          'if (arr[mid] == target) return mid;\nif (mid > start && arr[mid - 1] == target) return mid - 1;\nif (mid < end && arr[mid + 1] == target) return mid + 1;\nif (target < arr[mid]) ___;\nelse ___;',
      'hardTemplate':
          'int searchNearlySorted(int[] arr, int target) {\n  int s=0, e=arr.length-1;\n  while(s <= e) {\n    int m=s+(e-s)/2;\n    if(arr[m] == target) return m;\n    if(m > s && ___) return m-1;\n    if(m < e && ___) return m+1;\n    if(target < arr[m]) ___;\n    else ___;\n  }\n  return -1;\n}',
      'blocks': {'a': 'right = mid - 2', 'b': 'left = mid + 2', 'c': 'mid--'},
      'hardBlocks': {
        'a': 'arr[m-1] == target',
        'b': 'arr[m+1] == target',
        'c': 'e = m-2',
        'd': 's = m+2',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z6_p16',
      'zone': 6,
      'subcategory': 'Optimization',
      'title': 'Integer Square Root',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Compute the square root of x using binary search (return integer part).',
      'hint': 'Binary search between 1 and x. Compare mid * mid with x.',
      'codeTemplate':
          'while (left <= right) {\n  long mid = left + (right - left) / 2;\n  if (mid * mid == x) return (int)mid;\n  if (mid * mid < x) {\n    ans = (int)mid;\n    ___;\n  } else ___;\n}',
      'hardTemplate':
          'int mySqrt(int x) {\n  if (x == 0) return 0;\n  int L = 1, R = x, res = 0;\n  while (L <= R) {\n    int mid = L + (R-L)/2;\n    if (mid <= x/mid) {\n      ___;\n      ___;\n    } else ___;\n  }\n  return res;\n}',
      'blocks': {'a': 'left = mid + 1', 'b': 'right = mid - 1', 'c': 'mid++'},
      'hardBlocks': {'a': 'res = mid', 'b': 'L = mid + 1', 'c': 'R = mid - 1'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z6_p17',
      'zone': 6,
      'subcategory': 'Optimization',
      'title': 'Search in Infinite Array II',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Similar to standard infinite search, but find the first occurrence of 1 in sorted array of 0s and 1s.',
      'hint':
          'Find range where 1 exists, then use binary search for first index.',
      'codeTemplate':
          'while (arr[end] == 0) {\n  start = end;\n  end *= 2;\n}\nreturn ___ (arr, 1, start, end);',
      'hardTemplate':
          'int firstOne(int[] arr) {\n  int s=0, e=1;\n  while(arr[e] == 0) {\n    s = e; e *= 2;\n  }\n  return ___;\n}',
      'blocks': {
        'a': 'findFirstIndex',
        'b': 'findLastIndex',
        'c': 'binarySearch',
      },
      'hardBlocks': {'a': 'findFirstIdx(arr, 1, s, e)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z6_p18',
      'zone': 6,
      'subcategory': 'Sorted Rotated',
      'title': 'Rotated Search with Duplicates',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Search in rotated array that contains duplicates.',
      'hint':
          'If arr[start] == arr[mid] == arr[end], we can\'t tell which half is sorted; skip duplicates by incrementing start and decrementing end.',
      'codeTemplate':
          'if (arr[start] == arr[mid] && arr[mid] == arr[end]) {\n  ___;\n  ___;\n  continue;\n}',
      'hardTemplate':
          'int findPivotWithDuplicates(int[] arr) {\n  int s=0, e=arr.length-1;\n  while(s <= e) {\n    int m = s+(e-s)/2;\n    if(m < e && arr[m] > arr[m+1]) return m;\n    if(m > s && arr[m] < arr[m-1]) return m-1;\n    if(arr[m] == arr[s] && arr[m] == arr[e]) {\n      if(___) return s; s++;\n      if(___) return e-1; e--;\n    }\n    // ... more logic\n  }\n}',
      'blocks': {'a': 'start++', 'b': 'end--', 'c': 'mid++'},
      'hardBlocks': {'a': 'arr[s] > arr[s+1]', 'b': 'arr[e] < arr[e-1]'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z6_p19',
      'zone': 6,
      'subcategory': 'Optimization',
      'title': 'Find Rotation Count',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Find how many times a sorted array has been rotated.',
      'hint': 'Rotation count = pivot index + 1.',
      'codeTemplate': 'int pivot = findPivot(arr);\nreturn ___ + 1;',
      'hardTemplate':
          'int countRotations(int[] arr) {\n  int p = findPivot(arr);\n  if (p == -1) ___;\n  return ___;\n}',
      'blocks': {'a': 'pivot', 'b': '0', 'c': 'arr.length'},
      'hardBlocks': {'a': 'return 0', 'b': 'p + 1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z6_p20',
      'zone': 6,
      'subcategory': 'Search Variations',
      'title': 'Smallest Letter Greater Than Target',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find the smallest character in the array that is strictly greater than target. Wrap around if none exists.',
      'hint': 'Use standard binary search and return arr[start % length].',
      'codeTemplate':
          'while (start <= end) {\n  if (target < letters[mid]) end = mid - 1;\n  else ___;\n}\nreturn letters[___];',
      'hardTemplate':
          'char nextGreatestLetter(char[] letters, char target) {\n  int s = 0, e = letters.length - 1;\n  while (s <= e) {\n    int m = s + (e-s)/2;\n    if (target < letters[m]) e = m - 1;\n    else ___;\n  }\n  return letters[___];\n}',
      'blocks': {
        'a': 'start = mid + 1',
        'b': 'start % letters.length',
        'c': 'end',
      },
      'hardBlocks': {'a': 's = m + 1', 'b': 's % letters.length'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 7: Sorting ──
    {
      'id': 'z7_p1',
      'zone': 7,
      'subcategory': 'Fundamentals',
      'title': 'Bubble Sort',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Repeatedly swap adjacent elements if they are in the wrong order. The largest element "bubbles" to the end.',
      'hint':
          'In each pass, compare arr[j] and arr[j-1]. Swap if arr[j] < arr[j-1].',
      'codeTemplate':
          'for (int i = 0; i < arr.length; i++) {\n  for (int j = 1; j < arr.length - i; j++) {\n    if (arr[j] < arr[j - 1]) {\n      int temp = arr[j];\n      arr[j] = ___;\n      ___ = temp;\n    }\n  }\n}',
      'hardTemplate':
          'void bubbleSort(int[] arr) {\n  for (int i = 0; i < arr.length; i++) {\n    boolean swapped = false;\n    for (int j = 1; j < arr.length - i; j++) {\n      if (___) {\n        ___;\n        swapped = true;\n      }\n    }\n    if (!swapped) ___;\n  }\n}',
      'blocks': {'a': 'arr[j-1]', 'b': 'arr[j]', 'c': 'temp'},
      'hardBlocks': {
        'a': 'arr[j] < arr[j-1]',
        'b': 'swap(arr, j, j-1)',
        'c': 'break',
      },
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z7_p2',
      'zone': 7,
      'subcategory': 'Fundamentals',
      'title': 'Selection Sort',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Select the maximum element in the remaining unsorted array and swap it with the last element of the unsorted part.',
      'hint':
          'Find the index of the maximum element in range [0, lastIndex], then swap.',
      'codeTemplate':
          'for (int i = 0; i < arr.length; i++) {\n  int last = arr.length - i - 1;\n  int maxIndex = getMaxIndex(arr, 0, last);\n  ___(arr, maxIndex, last);\n}',
      'hardTemplate':
          'void selectionSort(int[] arr) {\n  for (int i = 0; i < arr.length; i++) {\n    int last = arr.length - i - 1;\n    int maxIndex = ___;\n    ___;\n  }\n}',
      'blocks': {'a': 'swap', 'b': 'sort', 'c': 'move'},
      'hardBlocks': {
        'a': 'getMaxIndex(arr, 0, last)',
        'b': 'swap(arr, maxIndex, last)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p3',
      'zone': 7,
      'subcategory': 'Fundamentals',
      'title': 'Insertion Sort',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Sort the array part by part. Pick an element and "insert" it into its correct position in the sorted part on its left.',
      'hint':
          'For each element at i, move it left while it is smaller than its predecessor.',
      'codeTemplate':
          'for (int i = 0; i < arr.length - 1; i++) {\n  for (int j = i + 1; j > 0; j--) {\n    if (arr[j] < arr[j - 1]) {\n      ___;\n    } else {\n      ___;\n    }\n  }\n}',
      'blocks': {'a': 'swap(arr, j, j-1)', 'b': 'break', 'c': 'continue'},
      'solution': {'1': 'a', '2': 'b'},
      'hardTemplate':
          'void insertionSort(int[] arr) {\n  for (int i = 0; i < arr.length - 1; i++) {\n    for (int j = i + ___; j > 0; j--) {\n      if (arr[j] < arr[j - 1]) {\n        ___;\n      } else {\n        ___;\n      }\n    }\n  }\n}',
      'hardBlocks': {'a': '1', 'b': 'swap(arr, j, j-1)', 'c': 'break'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z7_p4',
      'zone': 7,
      'subcategory': 'Fundamentals',
      'title': 'Cycle Sort (Concept)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Cycle sort is a comparison sort that is optimal in terms of the total number of writes to the memory.',
      'hint':
          'Each element is written either 0 or 1 times to its correct position.',
      'codeTemplate':
          'int correctPos = countSmaller(arr, i);\nif (correctPos == i) continue;\nwhile (arr[correctPos] == item) correctPos++;\n___(arr, item, correctPos);',
      'hardTemplate':
          'void cycleSort(int[] arr) {\n  for (int start = 0; start <= arr.length - 2; start++) {\n    int item = arr[start];\n    int pos = start;\n    for (int i = start + 1; i < arr.length; i++)\n      if (arr[i] < item) ___;\n    if (pos == start) continue;\n    // ... more logic\n  }\n}',
      'blocks': {'a': 'swap', 'b': 'replace', 'c': 'pos++'},
      'hardBlocks': {'a': 'pos++'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z7_p5',
      'zone': 7,
      'subcategory': 'Cyclic Sort',
      'title': 'Standard Cyclic Sort',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'When integers are given in range 1 to N, use Cyclic Sort to sort in O(N).',
      'hint':
          'If element is not at index val-1, swap it with the element at index val-1.',
      'codeTemplate':
          'int i = 0;\nwhile (i < arr.length) {\n  int correct = arr[i] - 1;\n  if (arr[i] != arr[correct]) {\n    ___(arr, i, correct);\n  } else {\n    ___;\n  }\n}',
      'hardTemplate':
          'void cyclicSort(int[] arr) {\n  int i = 0;\n  while (i < arr.length) {\n    int correct = ___;\n    if (arr[i] != arr[correct]) {\n      ___;\n    } else {\n      ___;\n    }\n  }\n}',
      'blocks': {'a': 'swap', 'b': 'i++', 'c': 'i--'},
      'hardBlocks': {
        'a': 'arr[i] - 1',
        'b': 'swap(arr, i, correct)',
        'c': 'i++',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z7_p6',
      'zone': 7,
      'subcategory': 'Cyclic Sort',
      'title': 'Find Missing Number',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find the only number missing from an array of 0 to N.',
      'hint':
          'Same as Cyclic Sort, but range is 0 to N. If arr[i] < nums.length, swap to correct index.',
      'codeTemplate':
          'if (nums[i] < nums.length && nums[i] != nums[nums[i]]) {\n  swap(nums, i, nums[i]);\n} else {\n  ___;\n}\n// after loop\nfor(int j=0; j<nums.length; j++) if(nums[j] != j) return ___;',
      'hardTemplate':
          'int missingNumber(int[] nums) {\n  int i = 0;\n  while (i < nums.length) {\n    int correct = nums[i];\n    if (___) swap(nums, i, correct);\n    else i++;\n  }\n  for (int j = 0; j < nums.length; j++) {\n    if (nums[j] != j) return ___;\n  }\n  return nums.length;\n}',
      'blocks': {'a': 'i++', 'b': 'j', 'c': 'i'},
      'hardBlocks': {
        'a': 'nums[i] < nums.length && nums[i] != nums[correct]',
        'b': 'j',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p7',
      'zone': 7,
      'subcategory': 'Cyclic Sort',
      'title': 'Find All Disappeared Numbers',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find all integers in range [1, n] that do not appear in arr.',
      'hint':
          'Perform Cyclic Sort, then collect indices where arr[i] != i + 1.',
      'codeTemplate':
          'cyclicSort(nums);\nList<Integer> ans = new ArrayList<>();\nfor(int i=0; i<nums.length; i++) {\n  if(nums[i] != i + 1) ans.add(___);\n}',
      'hardTemplate':
          'List<Integer> findDisappearedNumbers(int[] nums) {\n  sort(nums);\n  List<Integer> res = new ArrayList<>();\n  for (int i = 0; i < nums.length; i++) {\n    if (nums[i] != i + 1) ___;\n  }\n  return res;\n}',
      'blocks': {'a': 'i + 1', 'b': 'nums[i]', 'c': 'i'},
      'hardBlocks': {'a': 'res.add(i + 1)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z7_p8',
      'zone': 7,
      'subcategory': 'Cyclic Sort',
      'title': 'Find the Duplicate Number',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'In an array of N+1 integers where each is in [1, N], find the one duplicate.',
      'hint':
          'During Cyclic Sort swap, if the target position already has that number, you found the duplicate.',
      'codeTemplate':
          'if (nums[i] != i + 1) {\n  int correct = nums[i] - 1;\n  if (nums[i] != nums[correct]) {\n    swap(nums, i, correct);\n  } else {\n    return ___;\n  }\n} else {\n  ___;\n}',
      'hardTemplate':
          'int findDuplicate(int[] nums) {\n  int i = 0;\n  while (i < nums.length) {\n    if (nums[i] != i + 1) {\n      int correct = nums[i] - 1;\n      if (nums[i] != nums[correct]) swap(nums, i, correct);\n      else ___;\n    } else ___; \n  }\n  return -1;\n}',
      'blocks': {'a': 'nums[i]', 'b': 'i++', 'c': 'i'},
      'hardBlocks': {'a': 'return nums[i]', 'b': 'i++'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p9',
      'zone': 7,
      'subcategory': 'Cyclic Sort',
      'title': 'Find All Duplicates',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find all numbers that appear twice in array of range [1, n].',
      'hint': 'Cyclic Sort, then iterate and pick numbers where arr[i] != i+1.',
      'codeTemplate':
          'cyclicSort(nums);\nfor(int i=0; i<nums.length; i++) {\n  if(nums[i] != i + 1) ans.add(___);\n}',
      'hardTemplate':
          'List<Integer> findDuplicates(int[] nums) {\n  cyclicSort(nums);\n  List<Integer> res = new ArrayList<>();\n  for(int i=0; i<nums.length; i++) {\n    if(nums[i] != i+1) ___;\n  }\n  return res;\n}',
      'blocks': {'a': 'nums[i]', 'b': 'i + 1', 'c': 'i'},
      'hardBlocks': {'a': 'res.add(nums[i])'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z7_p10',
      'zone': 7,
      'subcategory': 'Cyclic Sort',
      'title': 'Set Mismatch',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'One number in range [1, n] is duplicated and one is missing. Find both.',
      'hint':
          'Cyclic Sort, find index i where arr[i] != i+1. Duplicate is arr[i], missing is i+1.',
      'codeTemplate':
          'cyclicSort(nums);\nfor(int i=0; i<nums.length; i++) {\n  if(nums[i] != i + 1) return new int[]{___, ___};\n}',
      'hardTemplate':
          'int[] findErrorNums(int[] nums) {\n  sort(nums);\n  for(int i=0; i<nums.length; i++) {\n    if(nums[i] != i + 1) return ___;\n  }\n  return new int[]{-1, -1};\n}',
      'blocks': {'a': 'nums[i]', 'b': 'i + 1', 'c': 'i'},
      'hardBlocks': {'a': 'new int[]{nums[i], i + 1}'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z7_p11',
      'zone': 7,
      'subcategory': 'Efficient Sorting',
      'title': 'Merge Sort (Top Down)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Divide the array into two halves, recursively sort them, and then "Merge" the sorted halves.',
      'hint': 'Merging two sorted arrays takes O(N) time.',
      'codeTemplate':
          'void mergeSort(int[] arr, int s, int e) {\n  if (e - s <= 1) return;\n  int mid = (s + e) / 2;\n  mergeSort(arr, s, mid);\n  mergeSort(arr, mid, e);\n  ___(arr, s, mid, e);\n}',
      'hardTemplate':
          'void mergeSort(int[] arr, int s, int e) {\n  if (e - s <= 1) return;\n  int mid = s + (e - s) / 2;\n  ___;\n  ___;\n  merge(arr, s, mid, e);\n}',
      'blocks': {'a': 'merge', 'b': 'sort', 'c': 'partition'},
      'hardBlocks': {
        'a': 'mergeSort(arr, s, mid)',
        'b': 'mergeSort(arr, mid, e)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p12',
      'zone': 7,
      'subcategory': 'Efficient Sorting',
      'title': 'Quick Sort (Partitioning)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Pick a pivot and put it at its correct sorted position. Elements smaller than pivot go left, larger go right.',
      'hint':
          'Quick sort is unstable but in-place and often faster than Merge Sort.',
      'codeTemplate':
          'int pivot = arr[low + (high - low) / 2];\nwhile (s <= e) {\n  while (arr[s] < pivot) s++;\n  while (arr[e] > pivot) e--;\n  if (s <= e) {\n    ___(arr, s, e);\n    s++; e--;\n  }\n}',
      'hardTemplate':
          'void quickSort(int[] arr, int low, int high) {\n  if (low >= high) return;\n  int s = low, e = high;\n  int m = s + (e - s) / 2;\n  int pivot = arr[m];\n  while (s <= e) {\n    while (arr[s] < pivot) ___;\n    while (arr[e] > pivot) ___;\n    if (s <= e) { ___ ; s++; e--; }\n  }\n  ___;\n  ___;\n}',
      'blocks': {'a': 'swap', 'b': 's++', 'c': 'e--'},
      'hardBlocks': {
        'a': 's++',
        'b': 'e--',
        'c': 'swap(arr, s, e)',
        'd': 'quickSort(arr, low, e)',
        'e': 'quickSort(arr, s, high)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd', '5': 'e'},
    },
    {
      'id': 'z7_p13',
      'zone': 7,
      'subcategory': 'Specialized Sorting',
      'title': 'Counting Sort',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Use a frequency array (count array) to sort elements. Only works when the range is known and small.',
      'hint': 'Time: O(N + K) where K is the range of numbers.',
      'codeTemplate':
          'int[] count = new int[max + 1];\nfor (int num : arr) count[num]++;\nint index = 0;\nfor (int i = 0; i <= max; i++) {\n  while (count[i] > 0) {\n    arr[index++] = ___;\n    ___;\n  }\n}',
      'blocks': {'a': 'i', 'b': 'count[i]--', 'c': 'count[i]++'},
      'hardTemplate':
          'void countingSort(int[] arr, int max) {\n  int[] f = new int[max + 1];\n  for(int x : arr) ___;\n  int j = 0;\n  for(int i = 0; i <= max; i++) {\n    while(f[i] > 0) { ___ ; ___ ; }\n  }\n}',
      'hardBlocks': {'a': 'f[x]++', 'b': 'arr[j++] = i', 'c': 'f[i]--'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z7_p14',
      'zone': 7,
      'subcategory': 'Specialized Sorting',
      'title': 'Radix Sort (Intro)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Sort numbers digit by digit starting from the least significant digit using a stable sort (usually counting sort).',
      'hint': 'Divide by 10, 100, 1000... to extract each digit.',
      'codeTemplate':
          'for (int exp = 1; max / exp > 0; exp *= 10) {\n  ___(arr, exp);\n}',
      'hardTemplate':
          'void radixSort(int[] arr) {\n  int m = getMax(arr);\n  for (int exp = 1; m / exp > 0; exp *= 10) {\n    ___;\n  }\n}',
      'blocks': {
        'a': 'countingSortByDigit',
        'b': 'bubbleSort',
        'c': 'quickSort',
      },
      'hardBlocks': {'a': 'countSort(arr, exp)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z7_p15',
      'zone': 7,
      'subcategory': 'Specialized Sorting',
      'title': 'Bucket Sort Concept',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Distribute elements into several buckets, then sort each bucket individually.',
      'hint':
          'Useful for floating-point numbers distributed uniformly in [0, 1].',
      'codeTemplate':
          'List<Float>[] buckets = new ArrayList[n];\nfor (float x : arr) {\n  int bi = (int) (n * x);\n  buckets[bi].add(x);\n}\nfor (int i = 0; i < n; i++) ___(buckets[i]);',
      'hardTemplate':
          'void bucketSort(float[] arr) {\n  int n = arr.length;\n  List<Float>[] b = new ArrayList[n];\n  for(int i=0; i<n; i++) b[i] = new ArrayList<>();\n  for(float x : arr) ___ ;\n  for(int i=0; i<n; i++) ___ ;\n  // ... concat results\n}',
      'blocks': {
        'a': 'Collections.sort',
        'b': 'Collections.reverse',
        'c': 'buckets.add',
      },
      'hardBlocks': {
        'a': 'b[(int)(n*x)].add(x)',
        'b': 'Collections.sort(b[i])',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p16',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Sort Colors (75)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Given array with 0s, 1s, and 2s, sort them in-place in one pass (Dutch National Flag Algorithm).',
      'hint':
          'Use three pointers: low (boundary of 0s), mid (iterator), high (boundary of 2s).',
      'codeTemplate':
          'if (nums[mid] == 0) {\n  swap(nums, low, mid);\n  low++; mid++;\n} else if (nums[mid] == 1) {\n  ___;\n} else {\n  swap(nums, mid, high);\n  ___;\n}',
      'hardTemplate':
          'void sortColors(int[] nums) {\n  int lo=0, mid=0, hi=nums.length-1;\n  while(mid <= hi) {\n    if(nums[mid] == 0) { swap(nums, lo++, mid++); }\n    else if(nums[mid] == 1) { ___ ; }\n    else { ___ ; }\n  }\n}',
      'blocks': {'a': 'mid++', 'b': 'high--', 'c': 'low++'},
      'hardBlocks': {'a': 'mid++', 'b': 'swap(nums, mid, hi--)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p17',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'First Missing Positive (41)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Find the smallest missing positive integer in O(N) time and constant space.',
      'hint':
          'Exemption to Cyclic Sort: Only swap if value is in range [1, N] and not already at correct index.',
      'codeTemplate':
          'if (nums[i] > 0 && nums[i] <= n && nums[i] != nums[nums[i] - 1]) {\n  ___(nums, i, nums[i] - 1);\n} else {\n  ___;\n}',
      'hardTemplate':
          'int firstMissingPositive(int[] nums) {\n  int i = 0, n = nums.length;\n  while (i < n) {\n    int correct = nums[i] - 1;\n    if (nums[i] > 0 && nums[i] <= n && nums[i] != nums[correct]) ___;\n    else ___;\n  }\n  for (int j = 0; j < n; j++) if (nums[j] != j + 1) return ___;\n  return n + 1;\n}',
      'blocks': {'a': 'swap', 'b': 'i++', 'c': 'i--'},
      'hardBlocks': {'a': 'swap(nums, i, correct)', 'b': 'i++', 'c': 'j + 1'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z7_p18',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Merge Sorted Array (88)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Merge nums2 into nums1 such that the resulting array is sorted. nums1 has extra space at the end.',
      'hint':
          'Work backwards from the end of both arrays to avoid overwriting elements in nums1.',
      'codeTemplate':
          'while (j >= 0) {\n  if (i >= 0 && nums1[i] > nums2[j]) {\n    nums1[k--] = nums1[i--];\n  } else {\n    ___ = ___;\n  }\n}',
      'hardTemplate':
          'void merge(int[] nums1, int m, int[] nums2, int n) {\n  int p1 = m-1, p2 = n-1, p = m+n-1;\n  while (p2 >= 0) {\n    if (p1 >= 0 && nums1[p1] > nums2[p2]) ___;\n    else ___;\n  }\n}',
      'hardBlocks': {
        'a': 'nums1[p--] = nums1[p1--]',
        'b': 'nums1[p--] = nums2[p2--]',
      },
      'blocks': {'a': 'nums1[k--]', 'b': 'nums2[j--]', 'c': 'i--'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p19',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Majority Element (169)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find the element that appears more than n/2 times. Assume it always exists.',
      'hint':
          'While Boyer-Moore is O(N), a simple Sorting-based solution is picking nums[n/2].',
      'codeTemplate': 'Arrays.sort(nums);\nreturn nums[___];',
      'hardTemplate':
          'int majorityElement(int[] nums) {\n  ___;\n  return nums[___];\n}',
      'blocks': {'a': 'nums.length / 2', 'b': '0', 'c': 'nums.length'},
      'hardBlocks': {'a': 'Arrays.sort(nums)', 'b': 'nums.length / 2'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p20',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Find All Disappeared II',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Same as "Find Disappeared Numbers" but use O(1) space (not counting output) and one pass.',
      'hint':
          'Use indexing trick: for each val, negate the element at index abs(val)-1.',
      'codeTemplate':
          'for (int i = 0; i < nums.length; i++) {\n  int index = Math.abs(nums[i]) - 1;\n  if (nums[index] > 0) ___ = -___;\n}',
      'hardTemplate':
          'List<Integer> findMissing(int[] nums) {\n  for(int x : nums) {\n    int idx = Math.abs(x) - 1;\n    if(nums[idx] > 0) ___ ;\n  }\n  List<Integer> res = new ArrayList<>();\n  for(int i=0; i<nums.length; i++) {\n    if(nums[i] > 0) ___ ;\n  }\n  return res;\n}',
      'blocks': {'a': 'nums[index]', 'b': 'nums[i]', 'c': 'index'},
      'hardBlocks': {'a': 'nums[idx] *= -1', 'b': 'res.add(i + 1)'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },

    {
      'id': 'z7_p21',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Assign Cookies (455)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Greedy sorting. Maximize the number of content children by assigning cookies of appropriate sizes.',
      'hint': 'Sort both arrays and use two pointers to match size with greed.',
      'codeTemplate':
          'Arrays.sort(g);\nArrays.sort(s);\nint i = 0, j = 0;\nwhile (i < g.length && j < s.length) {\n  if (s[j] >= g[i]) ___; \n  ___;\n}',
      'hardTemplate':
          'int findContentChildren(int[] g, int[] s) {\n  ___;\n  ___;\n  int i=0, j=0;\n  while(i < g.length && j < s.length) {\n    if(s[j] >= g[i]) ___;\n    ___;\n  }\n  return i;\n}',
      'blocks': {'a': 'i++', 'b': 'j++', 'c': 'return i'},
      'hardBlocks': {
        'a': 'Arrays.sort(g)',
        'b': 'Arrays.sort(s)',
        'c': 'i++',
        'd': 'j++',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z7_p22',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Array Partition (561)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Group n numbers into n/2 pairs such that the sum of min(a, b) is maximized.',
      'hint':
          'Sort the array. Maximizing min(a,b) means pairing closest elements.',
      'codeTemplate':
          'Arrays.sort(nums);\nint sum = 0;\nfor (int i = 0; i < nums.length; i += 2) {\n  ___ += ___;\n}',
      'hardTemplate':
          'int arrayPairSum(int[] nums) {\n  ___;\n  int ans = 0;\n  for(int i=0; i<nums.length; i+=2) ___ ;\n  return ans;\n}',
      'blocks': {'a': 'sum', 'b': 'nums[i]', 'c': 'i'},
      'hardBlocks': {'a': 'Arrays.sort(nums)', 'b': 'ans += nums[i]'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p23',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Third Maximum Number (414)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find the third distinct maximum number. If it doesn\'t exist, return the maximum.',
      'hint':
          'Use a Set to pick distinct elements, sort them, and return based on count.',
      'codeTemplate':
          'TreeSet<Integer> set = new TreeSet<>();\nfor (int n : nums) set.add(n);\nif (set.size() < 3) return ___;\nreturn set.___();',
      'hardTemplate':
          'int thirdMax(int[] nums) {\n  TreeSet<Integer> set = new TreeSet<>();\n  for(int x : nums) set.add(x);\n  if(set.size() < 3) return ___;\n  set.pollLast();\n  set.pollLast();\n  return ___;\n}',
      'blocks': {'a': 'set.last()', 'b': 'pollLast', 'c': 'set.first()'},
      'hardBlocks': {'a': 'set.last()', 'b': 'set.last()'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p24',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Squares of Sorted Array (977)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Given a sorted array, return a sorted array of the squares of each number.',
      'hint':
          'While O(N log N) works (square then sort), O(N) is possible using two pointers since extremes have the largest squares.',
      'codeTemplate':
          'while (i <= j) {\n  if (Math.abs(nums[i]) > Math.abs(nums[j])) {\n    res[k--] = nums[i] * nums[i];\n    ___;\n  } else {\n    res[k--] = nums[j] * nums[j];\n    ___;\n  }\n}',
      'hardTemplate':
          'int[] sortedSquares(int[] nums) {\n  int n = nums.length, i=0, j=n-1, k=n-1;\n  int[] res = new int[n];\n  while(i <= j) {\n    if(Math.abs(nums[i]) > Math.abs(nums[j])) { ___ ; ___ ; }\n    else { ___ ; ___ ; }\n  }\n  return res;\n}',
      'blocks': {'a': 'i++', 'b': 'j--', 'c': 'k--'},
      'hardBlocks': {
        'a': 'res[k--] = nums[i]*nums[i]',
        'b': 'i++',
        'c': 'res[k--] = nums[j]*nums[j]',
        'd': 'j--',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z7_p25',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Maximum Product of Three (628)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find three numbers in an array whose product is maximum.',
      'hint':
          'Sort the array. The max product could be (max1*max2*max3) OR (min1*min2*max1) if negatives exist.',
      'codeTemplate':
          'Arrays.sort(nums);\nint n = nums.length;\nint p1 = nums[n-1] * nums[n-2] * nums[n-3];\nint p2 = ___ * ___ * ___;\nreturn Math.max(p1, p2);',
      'blocks': {'a': 'nums[0]', 'b': 'nums[1]', 'c': 'nums[n-1]'},
      'hardTemplate':
          'int maxProduct(int[] nums) {\n  Arrays.sort(nums);\n  int n = nums.length;\n  return Math.max(___, ___);\n}',
      'hardBlocks': {
        'a': 'nums[n-1]*nums[n-2]*nums[n-3]',
        'b': 'nums[0]*nums[1]*nums[n-1]',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p26',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Sort Array By Parity (905)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Move all even integers to the beginning followed by all odd integers.',
      'hint':
          'Two pointers (left, right). If left is odd and right is even, swap.',
      'codeTemplate':
          'while (i < j) {\n  if (nums[i] % 2 > nums[j] % 2) {\n    ___(nums, i, j);\n  }\n  if (nums[i] % 2 == 0) ___;\n  if (nums[j] % 2 != 0) ___;\n}',
      'hardTemplate':
          'int[] sortParity(int[] nums) {\n  int i=0, j=nums.length-1;\n  while(i < j) {\n    if(nums[i]%2 != 0 && nums[j]%2 == 0) ___ ;\n    if(nums[i]%2 == 0) ___ ;\n    if(nums[j]%2 != 0) ___ ;\n  }\n  return nums;\n}',
      'blocks': {'a': 'swap', 'b': 'i++', 'c': 'j--'},
      'hardBlocks': {'a': 'swap(nums, i++, j--)', 'b': 'i++', 'c': 'j--'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z7_p27',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Largest Number (179)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Arrange integers to form the largest possible number.',
      'hint': 'Custom comparator: compare (s1 + s2) with (s2 + s1).',
      'codeTemplate':
          'Arrays.sort(strs, (a, b) -> (___).compareTo(___));\nif (strs[0].equals("0")) return "0";',
      'hardTemplate':
          'String largestNumber(int[] nums) {\n  String[] s = new String[nums.length];\n  for(int i=0; i<nums.length; i++) s[i] = String.valueOf(nums[i]);\n  Arrays.sort(s, (a, b) -> (___).compareTo(___));\n  if(s[0].equals("0")) return "0";\n  // ... join and return\n}',
      'blocks': {'a': 'b + a', 'b': 'a + b', 'c': 'a'},
      'hardBlocks': {'a': 'b + a', 'b': 'a + b'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p28',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Maximum Gap (164)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Find the maximum difference between successive elements in sorted form. Must be O(N).',
      'hint': 'Use Bucket Sort or Radix Sort to achieve linear time.',
      'codeTemplate':
          'radixSort(nums);\nint maxGap = 0;\nfor (int i = 1; i < nums.length; i++) {\n  maxGap = Math.max(maxGap, ___ - ___);\n}',
      'hardTemplate':
          'int maximumGap(int[] nums) {\n  if(nums.length < 2) return 0;\n  ___;\n  int gap = 0;\n  for(int i=1; i<nums.length; i++) gap = Math.max(gap, ___ );\n  return gap;\n}',
      'blocks': {'a': 'nums[i]', 'b': 'nums[i-1]', 'c': 'nums[0]'},
      'hardBlocks': {'a': 'radixSort(nums)', 'b': 'nums[i] - nums[i-1]'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p29',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Kth Largest Element (215)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find the kth largest element. Can you do it in O(N) average?',
      'hint':
          'Use QuickSelect (partition logic) to find the element without full sorting.',
      'codeTemplate':
          'while (true) {\n  int p = partition(nums, left, right);\n  if (p == k) return nums[p];\n  if (p < k) ___;\n  else ___;\n}',
      'hardTemplate':
          'int findKth(int[] nums, int k) {\n  int n = nums.length, L=0, R=n-1, target=n-k;\n  while(L <= R) {\n    int p = partition(nums, L, R);\n    if(p == target) return nums[p];\n    if(p < target) ___ ; else ___ ;\n  }\n  return -1;\n}',
      'blocks': {'a': 'left = p + 1', 'b': 'right = p - 1', 'c': 'return'},
      'hardBlocks': {'a': 'L = p + 1', 'b': 'R = p - 1'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z7_p30',
      'zone': 7,
      'subcategory': 'LeetCode Challenges',
      'title': 'Sort Characters by Freq (451)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Sort string in decreasing order based on frequency of characters.',
      'hint':
          'Count frequencies, use a Bucket Sort (index = frequency) or a Max-Heap.',
      'codeTemplate':
          'Map<Character, Integer> counts = new HashMap<>();\nfor(char c : s.toCharArray()) counts.put(c, counts.getOrDefault(c, 0) + 1);\nList<Character>[] buckets = new List[s.length() + 1];\n// ... more logic\nfor(int i = buckets.length - 1; i >= 0; i--) {\n  if (___ != null) { \n    for(char c : buckets[i]) ___ ; \n  }\n}',
      'hardTemplate':
          'String frequencySort(String s) {\n  Map<Character, Integer> map = new HashMap<>();\n  for(char c : s.toCharArray()) map.put(c, map.getOrDefault(c, 0)+1);\n  List<Character>[] b = new List[s.length()+1];\n  for(char c : map.keySet()) {\n    int f = map.get(c);\n    if(b[f] == null) b[f] = new ArrayList<>();\n    b[f].add(c);\n  }\n  StringBuilder sb = new StringBuilder();\n  for(int i=b.length-1; i>=0; i--) {\n    if(___) for(char c : b[i]) for(int j=0; j<i; j++) ___;\n  }\n  return sb.toString();\n}',
      'blocks': {'a': 'buckets[i]', 'b': 'appendToResult(c, i)', 'c': 'i--'},
      'hardBlocks': {'a': 'b[i] != null', 'b': 'sb.append(c)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    // ── ZONE 8: Time Complexity Analysis ──
    {
      'id': 'z8_p1',
      'zone': 8,
      'subcategory': 'Basics',
      'title': 'Big O Notation Definition',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Big O notation describes the upper bound of the growth rate of an algorithm as the input size N increases.',
      'hint': 'It ignores constants and lower-order terms.',
      'codeTemplate':
          '// Given T(N) = 3N^2 + 5N + 10\n// The Big O complexity is ___',
      'hardTemplate':
          '// T(N) = aN^k + bN^{k-1} + ... + c\n// Rule: Only keep the highest degree and remove coefficients.\n// If T(N) = 15N^3 + 100N log N\n// The Big-O is ___',
      'blocks': {'a': 'O(N^2)', 'b': 'O(N)', 'c': 'O(1)'},
      'hardBlocks': {'a': 'O(N^3)', 'b': 'O(N^2)', 'c': 'O(N log N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p2',
      'zone': 8,
      'subcategory': 'Basics',
      'title': 'Growth Rate Comparison',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Which of the following growth rates is the FASTEST (worst performance for large N)?',
      'hint': 'Polynomial < Exponential.',
      'codeTemplate':
          'Order (slowest to fastest): \nO(1) < O(log N) < O(N) < O(N log N) < ___\n',
      'hardTemplate':
          'Which of these is the MOST efficient for N=1,000,000?\n___',
      'blocks': {'a': 'O(N^2)', 'b': 'O(2^N)', 'c': 'O(N!)'},
      'hardBlocks': {'a': 'O(1)', 'b': 'O(log N)', 'c': 'O(N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p3',
      'zone': 8,
      'subcategory': 'Loop Analysis',
      'title': 'Linear Loop O(N)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Analyze the complexity of a single loop iterating from 0 to N.',
      'hint': 'The number of operations is directly proportional to N.',
      'codeTemplate':
          'for (int i = 0; i < N; i++) {\n  count++;\n}\n// Complexity: ___',
      'hardTemplate':
          'for (int i = 0; i < N; i = i + 5) {\n  // Work O(1)\n}\n// Complexity is ___ (Remember: constants are ignored)',
      'blocks': {'a': 'O(N)', 'b': 'O(N/5)', 'c': 'O(1)'},
      'hardBlocks': {'a': 'O(N)', 'b': 'O(N/5)', 'c': 'O(k)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p4',
      'zone': 8,
      'subcategory': 'Loop Analysis',
      'title': 'Nested Loops O(N^2)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'A loop inside another loop, both running from 0 to N.',
      'hint': 'Multiply the complexities of nested loops.',
      'codeTemplate':
          'for (int i = 0; i < N; i++) {\n  for (int j = 0; j < N; j++) {\n    // O(1) work\n  }\n}\n// Complexity: ___',
      'hardTemplate':
          'for (int i = 0; i < N; i++) {\n  for (int j = i; j < N; j++) {\n    // O(1) ops\n  }\n}\n// The sum 1+2+...+N is N(N+1)/2.\n// Complexity is ___',
      'blocks': {'a': 'O(N^2)', 'b': 'O(2N)', 'c': 'O(N log N)'},
      'hardBlocks': {'a': 'O(N^2)', 'b': 'O(N)', 'c': 'O(N^3)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p5',
      'zone': 8,
      'subcategory': 'Loop Analysis',
      'title': 'Sequential Loops O(A+B)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Two loops executed one after the other with different input sizes.',
      'hint':
          'Add the complexities. Since they are independent, we keep both variables.',
      'codeTemplate':
          'for (int i = 0; i < A; i++) { ... }\nfor (int j = 0; j < B; j++) { ... }\n// Complexity: ___',
      'blocks': {'a': 'O(A + B)', 'b': 'O(A * B)', 'c': 'O(max(A,B))'},
      'solution': {'1': 'a'},
      'hardTemplate':
          'for (int i = 0; i < N; i++) { ... }\nfor (int j = 0; j < M; j++) {\n  for (int k = 0; k < M; k++) { ... }\n}\n// Complexity is ___',
      'hardBlocks': {'a': 'O(N + M^2)', 'b': 'O(N * M^2)', 'c': 'O(N + M)'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p6',
      'zone': 8,
      'subcategory': 'Loop Analysis',
      'title': 'Dependent Nested Loops',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'The inner loop limit depends on the outer loop index.',
      'hint': 'Write out the total iterations: 1 + 2 + 3 + ... + N.',
      'codeTemplate':
          'for (int i = 1; i <= N; i++) {\n  for (int j = 1; j <= i; j++) {\n    // ...\n  }\n}\n// Complexity: ___',
      'hardTemplate':
          'for (int i = 1; i <= N; i++) {\n  for (int j = 1; j <= N; j += i) {\n    // ... Harmonic series logic\n  }\n}\n// Complexity is ___',
      'blocks': {'a': 'O(N^2)', 'b': 'O(N)', 'c': 'O(N log N)'},
      'hardBlocks': {'a': 'O(N log N)', 'b': 'O(N^2)', 'c': 'O(N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p7',
      'zone': 8,
      'subcategory': 'Loop Analysis',
      'title': 'Triple Nested Loops',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Three nested loops, each going from 0 to N.',
      'hint': 'N * N * N work.',
      'codeTemplate':
          'for(int i=0; i<N; i++)\n  for(int j=0; j<N; j++)\n    for(int k=0; k<N; k++)\n      // O(1)\n// Complexity: ___',
      'hardTemplate':
          'for(int i=0; i<N; i++)\n  for(int j=0; j<i; j++)\n    for(int k=0; k<j; k++)\n      // O(1)\n// Complexity is still higher order: ___',
      'blocks': {'a': 'O(N^3)', 'b': 'O(3N)', 'c': 'O(N!)'},
      'hardBlocks': {'a': 'O(N^3)', 'b': 'O(N^2)', 'c': 'O(N log N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p8',
      'zone': 8,
      'subcategory': 'Basics',
      'title': 'Best vs Worst Case',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'In Linear Search, what are the best and worst case complexities?',
      'hint': 'Best case: element is at first index. Worst: element not found.',
      'codeTemplate': 'Best Case: ___\nWorst Case: ___',
      'blocks': {'a': 'O(1)', 'b': 'O(N)', 'c': 'O(log N)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardTemplate':
          'int find(int[] arr, int x) {\n  for(int i=0; i<arr.length; i++) \n    if(arr[i] == x) return i;\n  return -1;\n}\n// Average Case (assuming uniform distribution) is ___',
      'hardBlocks': {'a': 'O(N)', 'b': 'O(1)', 'c': 'O(log N)'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p9',
      'zone': 8,
      'subcategory': 'Basics',
      'title': 'Constant Time O(1)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Identifying operations that do not depend on input size N.',
      'hint': 'Arithmetic, indexing an array, or simple assignments are O(1).',
      'codeTemplate': 'int x = arr[0] + 5 * 10;\n// Complexity: ___',
      'hardTemplate':
          'void swap(int[] arr, int i, int j) {\n  int temp = arr[i];\n  arr[i] = arr[j];\n  arr[j] = temp;\n}\n// Complexity of swap() is ___',
      'blocks': {'a': 'O(1)', 'b': 'O(N)', 'c': 'O(2)'},
      'hardBlocks': {'a': 'O(1)', 'b': 'O(N)', 'c': 'O(log N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p10',
      'zone': 8,
      'subcategory': 'Basics',
      'title': 'Variable Limits',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'What happens when two loops have different, independent limits N and M?',
      'hint': 'We cannot simplify to N if M is not related to N.',
      'codeTemplate':
          'for(int i=0; i<N; i++)\n  for(int j=0; j<M; j++)\n// Complexity is ___',
      'hardTemplate':
          'for(int i=0; i<N; i++) { ... }\nfor(int j=0; j<M; j++) {\n  for(int k=0; k<N; k++) { ... }\n}\n// Complexity is ___',
      'blocks': {'a': 'O(N * M)', 'b': 'O(N^2)', 'c': 'O(N + M)'},
      'hardBlocks': {'a': 'O(N + M*N)', 'b': 'O(N * M)', 'c': 'O(N^2 + M^2)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p11',
      'zone': 8,
      'subcategory': 'Logarithmic',
      'title': 'Binary Search Complexity',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'How many times can you divide N by 2 until you reach 1?',
      'hint': 'This process is the definition of log base 2 of N.',
      'codeTemplate':
          'int low = 0, high = N - 1;\nwhile (low <= high) {\n  int mid = low + (high - low) / 2;\n  if (target == arr[mid]) return mid;\n  if (target < arr[mid]) high = mid - 1;\n  else low = mid + 1;\n}\n// Complexity: ___',
      'hardTemplate':
          'while (N > 1) {\n  N = N / 2;\n  count++;\n}\n// Complexity is ___',
      'blocks': {'a': 'O(log N)', 'b': 'O(N)', 'c': 'O(1)'},
      'hardBlocks': {'a': 'O(log N)', 'b': 'O(N log N)', 'c': 'O(sqrt N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p12',
      'zone': 8,
      'subcategory': 'Logarithmic',
      'title': 'Logarithmic Loop (Multiplication)',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'The iterator doubles in each step.',
      'hint': 'Growth is exponential, so time is logarithmic.',
      'codeTemplate':
          'for (int i = 1; i < N; i = i * 2) {\n  // count++;\n}\n// Complexity: ___',
      'hardTemplate':
          'int i = 1;\nwhile (i < N) {\n  i = i << 1; // Left shift is same as * 2\n}\n// Complexity is ___',
      'blocks': {'a': 'O(log N)', 'b': 'O(N)', 'c': 'O(N^2)'},
      'hardBlocks': {'a': 'O(log N)', 'b': 'O(log^2 N)', 'c': 'O(1)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p13',
      'zone': 8,
      'subcategory': 'Loop Analysis',
      'title': 'Square Root Complexity O(sqrt N)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'The loop runs as long as i * i <= N.',
      'hint': 'This is equivalent to i <= sqrt(N).',
      'codeTemplate':
          'for (int i = 1; i * i <= N; i++) {\n  // logic\n}\n// Complexity: ___',
      'hardTemplate':
          'for (int i = 1; i * i <= N; i++) {\n  for (int j = 1; j <= 100; j++) {\n    // O(1) ops\n  }\n}\n// Complexity is ___',
      'blocks': {'a': 'O(sqrt N)', 'b': 'O(N^2)', 'c': 'O(log N)'},
      'hardBlocks': {'a': 'O(sqrt N)', 'b': 'O(N)', 'c': 'O(100 sqrt N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p14',
      'zone': 8,
      'subcategory': 'Loop Analysis',
      'title': 'N log N Complexity',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'A linear outer loop combined with a logarithmic inner loop.',
      'hint': 'Multiply O(N) by O(log N).',
      'codeTemplate':
          'for (int i = 0; i < N; i++) {\n  for (int j = 1; j < N; j *= 2) {\n    // ...\n  }\n}\n// Complexity: ___',
      'hardTemplate':
          'mergeSort(arr); // Complexity is ___\n// This algorithm divides array and merges results in linear time.',
      'blocks': {'a': 'O(N log N)', 'b': 'O(N^2)', 'c': 'O(log N)'},
      'hardBlocks': {'a': 'O(N log N)', 'b': 'O(N log^2 N)', 'c': 'O(2^N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p15',
      'zone': 8,
      'subcategory': 'Space Complexity',
      'title': 'Constant Space O(1)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Memory used does not grow with input size N.',
      'hint': 'Allocating 2-3 variables always uses same space.',
      'codeTemplate': 'int x = 5, y = 10, sum = 0;\n// Space Complexity: ___',
      'hardTemplate':
          'void rotate(int[] arr) {\n  int temp = arr[0]; \n  // logic to shift remaining\n}\n// Auxiliary Space Complexity is ___',
      'blocks': {'a': 'O(1)', 'b': 'O(N)', 'c': 'O(k)'},
      'hardBlocks': {'a': 'O(1)', 'b': 'O(N)', 'c': 'O(k)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p16',
      'zone': 8,
      'subcategory': 'Space Complexity',
      'title': 'Linear Space O(N)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Space increases linearly with N.',
      'hint': 'An array of size N uses O(N) space.',
      'codeTemplate': 'int[] result = new int[N];\n// Space Complexity: ___',
      'hardTemplate':
          'List<Integer> list = new ArrayList<>();\nfor(int i=0; i<N; i++) list.add(i);\n// Space Complexity is ___',
      'blocks': {'a': 'O(N)', 'b': 'O(1)', 'c': 'O(N log N)'},
      'hardBlocks': {'a': 'O(N)', 'b': 'O(1)', 'c': 'O(log N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p17',
      'zone': 8,
      'subcategory': 'Space Complexity',
      'title': 'Quadratic Space O(N^2)',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Space grows with the square of N.',
      'hint': 'A matrix of size N x N uses O(N^2) elements.',
      'codeTemplate':
          'int[][] matrix = new int[N][N];\n// Space Complexity: ___',
      'hardTemplate':
          'Adjacency Matrix for Graph with V nodes:\nint[][] adj = new int[V][V];\n// Space Complexity is ___',
      'blocks': {'a': 'O(N^2)', 'b': 'O(N)', 'c': 'O(2N)'},
      'hardBlocks': {'a': 'O(V^2)', 'b': 'O(V)', 'c': 'O(E)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p18',
      'zone': 8,
      'subcategory': 'Advanced',
      'title': 'Recursion Time (Factorial)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Analyzing growth of a recursive call stack.',
      'hint': 'T(N) = T(N-1) + O(1) repeats N times.',
      'codeTemplate':
          'int fact(int n) {\n  if(n <= 1) return 1;\n  return n * fact(n - 1);\n}\n// Time Complexity: ___',
      'hardTemplate':
          'int sumArray(int[] arr, int n) {\n  if(n <= 0) return 0;\n  return arr[n-1] + sumArray(arr, n-1);\n}\n// Recursive calls: N. Each call: O(1).\n// Time Complexity is ___',
      'blocks': {'a': 'O(N)', 'b': 'O(1)', 'c': 'O(log N)'},
      'hardBlocks': {'a': 'O(N)', 'b': 'O(log N)', 'c': 'O(2^N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p19',
      'zone': 8,
      'subcategory': 'Space Complexity',
      'title': 'Recursive Stack Space',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Every recursive call adds a frame to the stack.',
      'hint':
          'Space is proportional to the maximum depth of the recursion tree.',
      'codeTemplate':
          'void print(int n) {\n  if(n == 0) return;\n  print(n - 1);\n}\n// Space Complexity: ___',
      'hardTemplate':
          'int depth = getMaxDepth(root);\n// If binary tree is skewed, recursion depth is N.\n// Worst-case Space Complexity is ___',
      'blocks': {'a': 'O(N)', 'b': 'O(1)', 'c': 'O(log N)'},
      'hardBlocks': {'a': 'O(N)', 'b': 'O(log N)', 'c': 'O(H)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p20',
      'zone': 8,
      'subcategory': 'Advanced',
      'title': 'Exponential Time O(2^N)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Algorithms where each step branches into two or more subproblems.',
      'hint': 'T(N) = T(N-1) + T(N-2). Tree depth N, nodes double each level.',
      'codeTemplate':
          'int fib(int n) {\n  if(n <= 1) return n;\n  return fib(n-1) + fib(n-2);\n}\n// Time Complexity: ___',
      'hardTemplate':
          'void combinations(String s, String out) {\n  if(s.length() == 0) print(out);\n  combinations(s.substring(1), out + s.charAt(0));\n  combinations(s.substring(1), out);\n}\n// Time Complexity is ___',
      'blocks': {'a': 'O(2^N)', 'b': 'O(N^2)', 'c': 'O(N!)'},
      'hardBlocks': {'a': 'O(2^N)', 'b': 'O(N!)', 'c': 'O(3^N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p21',
      'zone': 8,
      'subcategory': 'Algorithm Analysis',
      'title': 'Complexity of Bubble Sort',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Bubble sort uses nested loops to compare and swap adjacent elements.',
      'hint': 'Two nested loops from 0 to N.',
      'codeTemplate':
          'Bubble Sort:\nTime Complexity (Worst Case): ___\nSpace Complexity: ___',
      'hardTemplate':
          'void bubbleSort(int[] arr) {\n  for(int i=0; i<n; i++)\n    for(int j=1; j<n-i; j++)\n      if(arr[j] < arr[j-1]) swap(arr, j, j-1);\n}\n// Time: ___, Space: ___',
      'blocks': {'a': 'O(N^2)', 'b': 'O(1)', 'c': 'O(N)'},
      'hardBlocks': {'a': 'O(N^2)', 'b': 'O(1)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z8_p22',
      'zone': 8,
      'subcategory': 'Algorithm Analysis',
      'title': 'Complexity of Merge Sort',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Merge Sort uses Divide and Conquer and an auxiliary array.',
      'hint': 'N log N time but needs extra memory for merging.',
      'codeTemplate':
          'Merge Sort:\nTime Complexity: ___\nSpace Complexity: ___',
      'hardTemplate':
          'T(N) = 2T(N/2) + O(N)\n// By Master Theorem: ___\n// Auxiliary Space for Merge: ___',
      'blocks': {'a': 'O(N log N)', 'b': 'O(N)', 'c': 'O(1)'},
      'hardBlocks': {'a': 'O(N log N)', 'b': 'O(N)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z8_p23',
      'zone': 8,
      'subcategory': 'Algorithm Analysis',
      'title': 'Complexity of Selection Sort',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Selection sort always scans the unsorted part to find the minimum.',
      'hint': 'There is no "early exit" in selection sort, unlike bubble sort.',
      'codeTemplate': 'Selection Sort:\nBest/Average/Worst Case Time: ___\n',
      'hardTemplate':
          'Selection sort makes O(N) swaps but ___ comparisons ALWAYS.',
      'blocks': {'a': 'O(N^2)', 'b': 'O(N)', 'c': 'O(N log N)'},
      'hardBlocks': {'a': 'O(N^2)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p24',
      'zone': 8,
      'subcategory': 'Algorithm Analysis',
      'title': 'Linear vs Binary Search',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Comparison of search strategies on a SORTED array.',
      'hint':
          'Linear is O(N), Binary is O(log N). log N is much faster for large N.',
      'codeTemplate': 'Binary Search Time: ___\nLinear Search Time: ___',
      'hardTemplate':
          'Searching for target in sorted array of 1,000,000 elements:\nLinear Search Worst: 1,000,000 ops\nBinary Search Worst: ~___ ops',
      'blocks': {'a': 'O(log N)', 'b': 'O(N)', 'c': 'O(1)'},
      'hardBlocks': {'a': '20', 'b': '100', 'c': '500'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p25',
      'zone': 8,
      'subcategory': 'Advanced',
      'title': 'Optimization Choice (Two Sum)',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Why use a Hashmap for Two Sum?',
      'hint': 'It trades space for time.',
      'codeTemplate': 'Brute Force (Nested): ___\nHashmap (Single Pass): ___',
      'hardTemplate':
          'Brute Force: O(N^2) time, O(1) space.\nHashmap: ___ time, ___ space.',
      'blocks': {'a': 'O(N)', 'b': 'O(N^2)', 'c': 'O(1)'},
      'hardBlocks': {'a': 'O(N)', 'b': 'O(N)'},
      'solution': {'1': 'b', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z8_p26',
      'zone': 8,
      'subcategory': 'Advanced',
      'title': 'Optimization (Fibonacci)',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Comparing recursive vs iterative Fibonacci.',
      'hint': 'Simple recursion is exponential due to overlapping subproblems.',
      'codeTemplate': 'Recursive fib(n): ___\nIterative fib(n): ___',
      'hardTemplate':
          'Time complexity of Fibonacci with Memoization (DP) is ___',
      'blocks': {'a': 'O(2^N)', 'b': 'O(N)', 'c': 'O(log N)'},
      'hardBlocks': {'a': 'O(N)', 'b': 'O(N^2)', 'c': 'O(2^N)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p27',
      'zone': 8,
      'subcategory': 'Advanced',
      'title': 'Matrix Search Optimization',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Searching in a N x N matrix.',
      'hint': 'Brute force is O(N^2), specialized search can be faster.',
      'codeTemplate': 'Brute Force: ___\nRow-Binary Search: ___',
      'hardTemplate': 'Searching in sorted matrix (Staircase Search) is ___',
      'blocks': {'a': 'O(N^2)', 'b': 'O(N log N)', 'c': 'O(N)'},
      'hardBlocks': {'a': 'O(N)', 'b': 'O(N log N)', 'c': 'O(N^2)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p28',
      'zone': 8,
      'subcategory': 'Advanced',
      'title': 'Amortized Complexity',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'The average time per operation over a long sequence.',
      'hint':
          'Inserting into an ArrayList is usually O(1), but O(N) when it resizes.',
      'codeTemplate':
          'ArrayList.add() Amortized Time: ___\nWorst Case (Resize): ___',
      'hardTemplate':
          'Amortized O(1) means the total time for N operations is ___',
      'blocks': {'a': 'O(1)', 'b': 'O(N)', 'c': 'O(log N)'},
      'hardBlocks': {'a': 'O(N)', 'b': 'O(N^2)', 'c': 'O(1)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p29',
      'zone': 8,
      'subcategory': 'Advanced',
      'title': 'Bit Manipulation Complexity',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Most bitwise operations (AND, OR, XOR, SHIFT) work on word size.',
      'hint': 'Word size is constant (e.g., 32 or 64 bits).',
      'codeTemplate':
          'Check if odd (N & 1): ___\nFind bit count (Kernighan): ___',
      'hardTemplate': 'Calculating population count of a 32-bit integer is ___',
      'blocks': {'a': 'O(1)', 'b': 'O(log N)', 'c': 'O(N)'},
      'hardBlocks': {'a': 'O(1)', 'b': 'O(32)', 'c': 'O(log N)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z8_p30',
      'zone': 8,
      'subcategory': 'Advanced',
      'title': 'Complex Analysis Challenge',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Identify the complexity of this structure: for(i=1; i<N; i*=2) for(j=0; j<i; j++) count++;',
      'hint': 'Sum of powers of 2: 1 + 2 + 4 + ... + N.',
      'codeTemplate':
          'Total operations: 1 + 2 + 4 + ... + N = 2N - 1\nComplexity: ___',
      'hardTemplate':
          'for (int i = 1; i < N; i++) {\n  for (int j = 1; j < N; j += i) {\n    // count++;\n  }\n}\n// Total work: N/1 + N/2 + N/3 + ... + N/N\n// Complexity is ___',
      'blocks': {'a': 'O(N)', 'b': 'O(N^2)', 'c': 'O(N log N)'},
      'hardBlocks': {'a': 'O(N log N)', 'b': 'O(N^2)', 'c': 'O(N)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    // ── ZONE 9: Math ──
    {
      'id': 'z9_p1',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Even or Odd (Bitwise)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Check if a number is even or odd using the bitwise AND operator.',
      'hint': 'n & 1 is 1 if odd, 0 if even.',
      'codeTemplate': 'boolean isOdd(int n) {\n  return (___) == 1;\n}',
      'hardTemplate': 'boolean isEven(int n) {\n  return (___) == 0;\n}',
      'blocks': {'a': 'n & 1', 'b': 'n % 2', 'c': 'n ^ 1'},
      'hardBlocks': {'a': 'n & 1', 'b': 'n % 2', 'c': 'n | 1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p2',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Prime Check O(sqrt N)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Determine if a number N is prime by checking factors up to sqrt(N).',
      'hint': 'If no factor is found up to sqrt(N), the number is prime.',
      'codeTemplate':
          'for (int i = 2; i * i <= n; i++) {\n  if (n % i == 0) return ___;\n}\nreturn true;',
      'hardTemplate':
          'public boolean isPrime(int n) {\n  if (n <= 1) ___;\n  for (int i = 2; ___ <= n; i++) {\n    if (n % i == 0) ___;\n  }\n  return ___;\n}',
      'blocks': {'a': 'false', 'b': 'true', 'c': 'null'},
      'hardBlocks': {'a': 'return false', 'b': 'i * i', 'c': 'return true'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'a', '4': 'c'},
    },
    {
      'id': 'z9_p3',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Find All Factors',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Find all divisors of N efficiently and print them in sorted order.',
      'hint': 'Iterate up to sqrt(N). If i divides N, then N/i also divides N.',
      'codeTemplate':
          'for (int i = 1; i * i <= n; i++) {\n  if (n % i == 0) {\n    if (n / i == i) print(i);\n    else { print(i); print(___); }\n  }\n}',
      'hardTemplate':
          'void printFactors(int n) {\n  List<Integer> list = new ArrayList<>();\n  for (int i = 1; ___ <= n; i++) {\n    if (n % i == 0) {\n      System.out.print(i + " ");\n      if (n/i != i) list.add(___);\n    }\n  }\n  for (int j = list.size()-1; j >= 0; j--) ___\n}',
      'blocks': {'a': 'n / i', 'b': 'n - i', 'c': 'i * i'},
      'hardBlocks': {
        'a': 'i * i',
        'b': 'n / i',
        'c': 'System.out.print(list.get(j) + " ");',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z9_p4',
      'zone': 9,
      'subcategory': 'GCD & Factors',
      'title': 'GCD Euclidean Algorithm',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find the Greatest Common Divisor of two numbers using subtraction or modulo.',
      'hint': 'gcd(a, b) = gcd(b, a % b) until b is 0.',
      'codeTemplate':
          'while (b != 0) {\n  int temp = b;\n  b = a % b;\n  a = ___;\n}\nreturn a;',
      'hardTemplate':
          'int gcd(int a, int b) {\n  if (a == 0) return ___;\n  return gcd(___, a);\n}',
      'blocks': {'a': 'temp', 'b': 'b', 'c': 'a % b'},
      'hardBlocks': {'a': 'b', 'b': 'b % a', 'c': 'b / a'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z9_p5',
      'zone': 9,
      'subcategory': 'GCD & Factors',
      'title': 'Find LCM',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find the Least Common Multiple of A and B.',
      'hint': 'LCM * GCD = A * B.',
      'codeTemplate': 'int lcm = (a * b) / ___ ;',
      'hardTemplate':
          'int getLCM(int a, int b) {\n  return ( ___ ) / gcd(a, b);\n}',
      'blocks': {'a': 'gcd(a, b)', 'b': 'a + b', 'c': 'a % b'},
      'hardBlocks': {'a': 'a * b', 'b': 'a + b', 'c': 'a'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p6',
      'zone': 9,
      'subcategory': 'Sieve & Primes',
      'title': 'Sieve of Eratosthenes',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Generate all prime numbers up to N by iteratively marking multiples of found primes as non-prime.',
      'hint':
          'Start from 2, mark 4, 6, 8... Then next prime is 3, mark 6, 9...',
      'codeTemplate':
          'boolean[] primes = new boolean[n + 1];\nfor (int i = 2; i * i <= n; i++) {\n  if (!primes[i]) {\n    for (int j = i * 2; j <= n; j += ___) {\n      primes[j] = true;\n    }\n  }\n}',
      'hardTemplate':
          'void sieve(int n) {\n  boolean[] isNotPrime = new boolean[n+1];\n  for (int i = 2; ___ <= n; i++) {\n    if (___) {\n      for (int j = ___ ; j <= n; j += i) {\n        isNotPrime[j] = true;\n      }\n    }\n  }\n}',
      'blocks': {'a': 'i', 'b': 'j', 'c': '2'},
      'hardBlocks': {'a': 'i * i', 'b': '!isNotPrime[i]', 'c': 'i * i'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z9_p7',
      'zone': 9,
      'subcategory': 'Modular Math',
      'title': 'Modular Exponentiation',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Calculate (base^exp) % mod efficiently using Binary Exponentiation.',
      'hint':
          'If exp is odd: res = (res * base) % mod, exp--. If even: base = (base * base) % mod, exp /= 2.',
      'codeTemplate':
          'long res = 1;\nwhile (exp > 0) {\n  if (exp % 2 == 1) res = (res * base) % mod;\n  base = (___) % mod;\n  exp /= 2;\n}',
      'hardTemplate':
          'long power(long x, long y, long p) {\n  long res = 1; x = x % p;\n  while (y > 0) {\n    if ((y & 1) != 0) res = (res * x) % p;\n    y = ___;\n    x = (___) % p;\n  }\n  return res;\n}',
      'blocks': {'a': 'base * base', 'b': 'base + base', 'c': 'base'},
      'hardBlocks': {'a': 'y >> 1', 'b': 'x * x', 'c': 'x + x'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z9_p8',
      'zone': 9,
      'subcategory': 'Roots & Powers',
      'title': 'Fast Power O(log N)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Implement pow(x, n) which calculates x to the power n.',
      'hint': 'Use recursion or iteration with bitwise shifts for O(log N).',
      'codeTemplate':
          'double myPow(double x, int n) {\n  if (n == 0) return 1;\n  if (n < 0) { x = 1/x; n = -n; }\n  double res = myPow(x, n/2);\n  if (n % 2 == 0) return ___ * ___ ;\n  return res * res * x;\n}',
      'blocks': {'a': 'res', 'b': 'x', 'c': '1'},
      'hardBlocks': {'a': 'res * res', 'b': 'res', 'c': 'x'},
      'hardTemplate':
          'double pow(double x, int n) {\n  if(n == 0) return 1.0;\n  double res = pow(x, n/2);\n  return n%2 == 0 ? ___ : n>0 ? ___ * x : ___ / x;\n}',
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'a', '3': 'a'},
    },
    {
      'id': 'z9_p9',
      'zone': 9,
      'subcategory': 'Roots & Powers',
      'title': 'Square Root (Binary Search)',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Find the integer square root of N using Binary Search.',
      'hint':
          'Search range is [1, N]. If mid * mid <= N, it could be the answer.',
      'codeTemplate':
          'while (s <= e) {\n  long mid = s + (e - s) / 2;\n  if (mid * mid <= n) { ans = mid; s = mid + 1; }\n  else ___ = mid - 1;\n}',
      'hardTemplate':
          'int mySqrt(int x) {\n  if(x < 2) return x;\n  int l = 2, r = x / 2;\n  while(l <= r) {\n    int m = l + (r - l) / 2;\n    long num = (long)m * m;\n    if (num > x) ___;\n    else if (num < x) ___;\n    else return m;\n  }\n  return ___;\n}',
      'blocks': {'a': 'e', 'b': 's', 'c': 'ans'},
      'hardBlocks': {'a': 'r = m - 1', 'b': 'l = m + 1', 'c': 'r'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z9_p10',
      'zone': 9,
      'subcategory': 'Roots & Powers',
      'title': 'Newton-Raphson Sqrt',
      'difficulty': 'Hard',
      'xp': 200,
      'description':
          'Find the square root of a number using the iterative Newton-Raphson approximation.',
      'hint': 'root = (x + (n / x)) / 2. Repeat until error is minimal.',
      'codeTemplate':
          'double x = n;\ndouble root;\nwhile (true) {\n  root = 0.5 * (x + (n / x));\n  if (Math.abs(root - x) < 0.0001) break;\n  x = ___;\n}',
      'hardTemplate':
          'double sqrt(double n) {\n  double x = n;\n  while (true) {\n    double next = ___ * (x + n/x);\n    if (Math.abs(next - x) < 1e-7) return next;\n    x = next;\n  }\n}',
      'blocks': {'a': 'root', 'b': 'n', 'c': 'x'},
      'hardBlocks': {'a': '0.5', 'b': '2.0', 'c': 'x'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    // ── ZONE 10: Recursion ──
    {
      'id': 'z9_p11',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Count Digits',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find the number of digits in a number N using the logarithmic approach.',
      'hint': 'Number of digits = log10(N) + 1.',
      'codeTemplate': 'int countDigits(int n) {\n  return (int)(___) + 1;\n}',
      'hardTemplate':
          'int countDigits(int n) {\n  if (n == 0) return 1;\n  return (int)(___) + 1;\n}',
      'blocks': {
        'a': 'Math.log10(n)',
        'b': 'Math.log(n)',
        'c': 'Math.pow(10, n)',
      },
      'hardBlocks': {
        'a': 'Math.log10(Math.abs(n))',
        'b': 'Math.log(n)',
        'c': 'n',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p12',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Reverse Number',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Reverse the digits of an integer N.',
      'hint': 'Extract last digit using % 10, then remove it using / 10.',
      'codeTemplate':
          'while (n > 0) {\n  int rem = n % 10;\n  rev = rev * 10 + ___\n  n = n / 10;\n}',
      'hardTemplate':
          'int reverse(int n) {\n  long rev = 0;\n  while (n != 0) {\n    rev = rev * 10 + n % 10;\n    n /= 10;\n  }\n  return (rev < Integer.MIN_VALUE || rev > Integer.MAX_VALUE) ? ___ : (int)rev;\n}',
      'blocks': {'a': 'rem', 'b': 'n', 'c': '10'},
      'hardBlocks': {'a': '0', 'b': 'rev', 'c': 'n'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p13',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Palindrome Number',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Check if a number is a palindrome (reads same forwards and backwards).',
      'hint': 'Reverse the number and compare it with the original.',
      'codeTemplate':
          'int original = n;\n// ... reverse logic\nreturn ___ == original;',
      'hardTemplate':
          'boolean isPalindrome(int x) {\n  if (x < 0 || (x % 10 == 0 && x != 0)) return false;\n  int rev = 0;\n  while (x > rev) {\n    rev = rev * 10 + x % 10;\n    x /= 10;\n  }\n  return x == rev || x == ___\n}',
      'blocks': {'a': 'rev', 'b': 'n', 'c': '0'},
      'hardBlocks': {'a': 'rev / 10', 'b': 'rev', 'c': 'x'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p14',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Armstrong Number',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'An Armstrong number is a number that is equal to the sum of cubes of its digits.',
      'hint': 'Sum of d^3 for digits d of N.',
      'codeTemplate':
          'while (n > 0) {\n  int d = n % 10;\n  sum += (___);\n  n /= 10;\n}',
      'hardTemplate':
          'boolean isArmstrong(int n) {\n  int original = n, sum = 0;\n  while (n > 0) {\n    int d = n % 10;\n    sum += (___);\n    n /= 10;\n  }\n  return sum == original;\n}',
      'blocks': {'a': 'd * d * d', 'b': 'd * d', 'c': 'Math.pow(d, 3)'},
      'hardBlocks': {'a': 'd * d * d', 'b': 'Math.pow(d, 3)', 'c': 'd'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p15',
      'zone': 9,
      'subcategory': 'Sieve & Primes',
      'title': 'Prime Factorization',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Find the prime factors of N optimally.',
      'hint': 'Divide N by smallest prime 2, then 3, until N becomes 1.',
      'codeTemplate':
          'for (int i = 2; i * i <= n; i++) {\n  while (n % i == 0) {\n    print(i);\n    n /= ___\n  }\n}\nif (n > 1) print(n);',
      'hardTemplate':
          'void getPrimeFactors(int n) {\n  for (int i = 2; ___ <= n; i++) {\n    while (n % i == 0) {\n      System.out.print(i + " ");\n      n /= i;\n    }\n  }\n  if (n > 1) ___ \n}',
      'blocks': {'a': 'i', 'b': 'n', 'c': '2'},
      'hardBlocks': {
        'a': 'i * i',
        'b': 'System.out.print(n);',
        'c': 'System.out.print(i);',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z9_p16',
      'zone': 9,
      'subcategory': 'Sieve & Primes',
      'title': 'Distinct Prime Factors',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Calculate the product of distinct prime factors of N.',
      'hint':
          'Similar to prime factorization, but multiply each factor only once.',
      'codeTemplate':
          'long prod = 1;\nfor (int i = 2; i * i <= n; i++) {\n  if (n % i == 0) {\n    prod *= i;\n    while (n % i == 0) n /= ___\n  }\n}',
      'hardTemplate':
          'long distinctProduct(int n) {\n  long res = 1;\n  for(int i=2; i*i<=n; i++) {\n    if(n%i == 0) {\n      res *= i;\n      while(n%i == 0) n /= i;\n    }\n  }\n  if(n > 1) ___ \n  return res;\n}',
      'blocks': {'a': 'i', 'b': 'prod', 'c': 'n'},
      'hardBlocks': {'a': 'res *= n;', 'b': 'res *= i;', 'c': 'return res;'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p17',
      'zone': 9,
      'subcategory': 'Sieve & Primes',
      'title': 'Smallest Prime Factor (SPF)',
      'difficulty': 'Hard',
      'xp': 200,
      'description':
          'Use a sieve to precalculate the Smallest Prime Factor (SPF) for every number up to N.',
      'hint':
          'Modify the Sieve of Eratosthenes to store the smallest prime instead of just true/false.',
      'codeTemplate':
          'int[] spf = new int[n + 1];\nfor (int i = 2; i <= n; i++) {\n  if (spf[i] == 0) {\n    for (int j = i; j <= n; j += i) {\n      if (spf[j] == 0) spf[j] = ___ ;\n    }\n  }\n}',
      'hardTemplate':
          'void precomputeSPF(int n) {\n  int[] spf = new int[n+1];\n  for(int i=2; i<=n; i++) {\n    if(spf[i] == 0) {\n      spf[i] = i;\n      for(int j=i*i; j<=n; j+=i) {\n        if(spf[j] == 0) ___ = i;\n      }\n    }\n  }\n}',
      'blocks': {'a': 'i', 'b': 'j', 'c': '0'},
      'hardBlocks': {'a': 'spf[j]', 'b': 'spf[i]', 'c': 'spf[n]'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p18',
      'zone': 9,
      'subcategory': 'Modular Math',
      'title': 'Modular Inverse (Fermat)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Find the modular multiplicative inverse of A modulo M using Fermat\'s Little Theorem (works if M is prime).',
      'hint': 'Inverse(A) ≡ A^(M-2) (mod M).',
      'codeTemplate': 'long inverse = power(a, ___, m);',
      'hardTemplate':
          'long modInverse(long a, long m) {\n  // Condition: m must be prime\n  return power(a, ___ , m);\n}',
      'blocks': {'a': 'm - 2', 'b': 'm - 1', 'c': 'm'},
      'hardBlocks': {'a': 'm - 2', 'b': 'm - 1', 'c': 'm'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p19',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Sum of Digits',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Calculate the sum of digits of a number N.',
      'hint': 'Iteratively extract digits using modulo 10.',
      'codeTemplate':
          'int sum = 0;\nwhile (n > 0) {\n  sum += n % 10;\n  n = ___ ;\n}',
      'hardTemplate':
          'int sumDigits(int n) {\n  int sum = 0;\n  while (n != 0) {\n    sum += Math.abs(___);\n    n /= 10;\n  }\n  return sum;\n}',
      'blocks': {'a': 'n / 10', 'b': 'n % 10', 'c': 'n - 10'},
      'hardBlocks': {'a': 'n % 10', 'b': 'n / 10', 'c': 'n'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p20',
      'zone': 9,
      'subcategory': 'Basics',
      'title': 'Check Power of Two (Bitwise)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Check if a number is a power of 2 using bitwise logic.',
      'hint': 'A power of 2 has only one bit set. n & (n - 1) will be 0.',
      'codeTemplate': 'return (n > 0) && ((___) == 0);',
      'hardTemplate':
          'boolean isPowerOfTwo(int n) {\n  if (n <= 0) return false;\n  return ( ___ ) == 0;\n}',
      'blocks': {'a': 'n & (n-1)', 'b': 'n & n', 'c': 'n | (n-1)'},
      'hardBlocks': {'a': 'n & (n - 1)', 'b': 'n ^ (n - 1)', 'c': 'n & 1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    // ── ZONE 11: Backtracking ──
    {
      'id': 'z9_p21',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Count Primes (LC 204)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Count the number of prime numbers less than a non-negative number n.',
      'hint': 'Use the Sieve of Eratosthenes for O(N log log N).',
      'codeTemplate':
          'int countPrimes(int n) {\n  boolean[] isP = new boolean[n];\n  int count = 0;\n  for (int i = 2; i < n; i++) {\n    if (!isP[i]) {\n      count++;\n      for (int j = 2 * i; j < n; j += ___) isP[j] = true;\n    }\n  }\n  return count;\n}',
      'hardTemplate':
          'int countPrimes(int n) {\n  if (n <= 2) return 0;\n  boolean[] composite = new boolean[n];\n  int count = 0;\n  for (int i = 2; i < n; i++) {\n    if (composite[i]) continue;\n    count++;\n    for (long j = (long)i * i; j < n; j += i) ___ = true;\n  }\n  return count;\n}',
      'blocks': {'a': 'i', 'b': 'count', 'c': '2'},
      'hardBlocks': {
        'a': 'composite[(int)j]',
        'b': 'composite[i]',
        'c': 'isP[j]',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p22',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Power of Three (LC 326)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Given an integer n, return true if it is a power of three.',
      'hint':
          'The largest power of 3 in a 32-bit int is 3^19 = 1162261467. n is power of 3 if it divides this constant.',
      'codeTemplate': 'return n > 0 && (___ % n == 0);',
      'hardTemplate':
          'boolean isPowerOfThree(int n) {\n  if (n <= 0) return false;\n  // 1162261467 = 3^19\n  return ___ % n == 0;\n}',
      'blocks': {'a': '1162261467', 'b': 'Math.pow(3, 19)', 'c': '3'},
      'hardBlocks': {'a': '1162261467', 'b': 'Integer.MAX_VALUE', 'c': '3'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p23',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Happy Number (LC 202)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'A happy number is defined by replacing the number by the sum of squares of its digits, until it reaches 1.',
      'hint':
          'Use Floyd\'s Cycle-finding algorithm (slow and fast pointers) to detect infinite loops.',
      'codeTemplate':
          'int slow = n, fast = n;\ndo {\n  slow = getNext(slow);\n  fast = getNext(getNext(___));\n} while (slow != fast);\nreturn slow == 1;',
      'hardTemplate':
          'boolean isHappy(int n) {\n  int slow = n, fast = getNext(n);\n  while (fast != 1 && slow != fast) {\n    slow = getNext(slow);\n    fast = getNext(___);\n  }\n  return fast == 1;\n}',
      'blocks': {'a': 'fast', 'b': 'slow', 'c': 'getNext(n)'},
      'hardBlocks': {'a': 'getNext(fast)', 'b': 'fast', 'c': 'slow'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p24',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Perfect Number (LC 507)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'A perfect number is a positive integer that is equal to the sum of its positive divisors, excluding the number itself.',
      'hint': 'Iterate up to sqrt(N) to find all divisors.',
      'codeTemplate':
          'for (int i = 2; i * i <= num; i++) {\n  if (num % i == 0) {\n    sum += i;\n    if (i * i != num) sum += ___;\n  }\n}',
      'hardTemplate':
          'boolean checkPerfectNumber(int num) {\n  if (num <= 1) return false;\n  int sum = 1;\n  for (int i = 2; i * i <= num; i++) {\n    if (___) {\n      sum += i + (i * i == num ? 0 : ___);\n    }\n  }\n  return sum == num;\n}',
      'blocks': {'a': 'num / i', 'b': 'num % i', 'c': 'i'},
      'hardBlocks': {'a': 'num % i == 0', 'b': 'num / i', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z9_p25',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Self Dividing Numbers (LC 728)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'A self-dividing number is a number that is divisible by every digit it contains.',
      'hint':
          'For each number in the range, check if all its digits are non-zero and divide the number.',
      'codeTemplate':
          'while (temp > 0) {\n  int d = temp % 10;\n  if (d == 0 || n % d != 0) return ___;\n  temp /= 10;\n}',
      'hardTemplate':
          'boolean isSelfDividing(int n) {\n  for (int temp = n; temp > 0; temp /= 10) {\n    int d = temp % 10;\n    if (___) return false;\n  }\n  return true;\n}',
      'blocks': {'a': 'false', 'b': 'true', 'c': 'null'},
      'hardBlocks': {
        'a': 'd == 0 || n % d != 0',
        'b': 'd == 0',
        'c': 'n % d != 0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p26',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Sum of Square Numbers (LC 633)',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Check if a non-negative integer c can be expressed as a^2 + b^2 = c.',
      'hint': 'Use two pointers from 0 and sqrt(c).',
      'codeTemplate':
          'long a = 0, b = (long)Math.sqrt(c);\nwhile (a <= b) {\n  long sum = a * a + b * b;\n  if (sum == c) return true;\n  if (sum < c) ___;\n  else ___;\n}',
      'hardTemplate':
          'boolean judgeSquareSum(int c) {\n  long i = 0, j = (long)Math.sqrt(c);\n  while (i <= j) {\n    long cur = i * i + j * j;\n    if (cur == c) return true;\n    if (cur < c) ___;\n    else ___;\n  }\n  return false;\n}',
      'blocks': {'a': 'a++', 'b': 'b--', 'c': 'return false'},
      'hardBlocks': {'a': 'i++', 'b': 'j--', 'c': 'return false'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z9_p27',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Closest Divisors (LC 1390)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find two integers whose product is either (num + 1) or (num + 2) and whose absolute difference is minimal.',
      'hint':
          'Search for factors of (num+1) and (num+2) starting from their square roots downwards.',
      'codeTemplate':
          'for (int i = (int)Math.sqrt(num + 2); i > 0; i--) {\n  if ((num + 1) % i == 0) return new int[]{i, (num + 1) / i};\n  if ((num + 2) % i == 0) return ___ ;\n}',
      'hardTemplate':
          'int[] closestDivisors(int num) {\n  for (int i = (int)Math.sqrt(num + 2); i >= 1; i--) {\n    if ((num + 1) % i == 0) return new int[]{i, (num + 1) / i};\n    if (___) return new int[]{i, (num + 2) / i};\n  }\n  return new int[]{}; \n}',
      'blocks': {
        'a': 'new int[]{i, (num + 2) / i}',
        'b': 'new int[]{i, i}',
        'c': 'null',
      },
      'hardBlocks': {
        'a': '(num + 2) % i == 0',
        'b': 'num % i == 0',
        'c': 'i * i == num',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z9_p28',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Complex Number Multiplication (LC 537)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Multiply two complex numbers (a+bi) and (c+di) to get (ac-bd) + (ad+bc)i.',
      'hint':
          'Parse the real and imaginary parts using split("+") and string manipulation.',
      'codeTemplate':
          'int real = a * c - b * d;\nint imag = a * d + b * c;\nreturn ___ + "+" + ___ + "i";',
      'hardTemplate':
          'String multiply(String num1, String num2) {\n  int[] c1 = parse(num1), c2 = parse(num2);\n  int r = c1[0]*c2[0] - c1[1]*c2[1];\n  int i = c1[0]*c2[1] + c1[1]*c2[0];\n  return ___ + "+" + ___ + "i";\n}',
      'blocks': {'a': 'real', 'b': 'imag', 'c': '""'},
      'hardBlocks': {'a': 'r', 'b': 'i', 'c': '""'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z9_p29',
      'zone': 9,
      'subcategory': 'LC Mix',
      'title': 'Super Pow (LC 372)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Calculate a^b % 1337 where b is a very large positive integer given as an array.',
      'hint':
          'a^123 % 1337 = (a^120 * a^3) % 1337 = ((a^12)^10 * a^3) % 1337. Use recursion.',
      'codeTemplate':
          'if (index < 0) return 1;\nint last = b[index];\nreturn (pow(superPow(a, b, index - 1), 10) * pow(a, last)) % ___ ;',
      'hardTemplate':
          'int superPow(int a, int[] b) {\n  return helper(a, b, b.length - 1);\n}\nint helper(int a, int[] b, int i) {\n  if (i < 0) return 1;\n  int p1 = pow(helper(a, b, i - 1), 10);\n  int p2 = pow(a, b[i]);\n  return (___ * ___) % 1337;\n}',
      'blocks': {'a': '1337', 'b': 'mod', 'c': 'base'},
      'hardBlocks': {'a': 'p1', 'b': 'p2', 'c': '1337'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z9_p30',
      'zone': 9,
      'subcategory': 'Roots & Powers',
      'title': 'Excel Sheet Column Number (LC 171)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Convert an Excel column title (A, B, C... Z, AA, AB...) to its corresponding column number.',
      'hint': 'Base 26 conversion. result = result * 26 + (char - \'A\' + 1).',
      'codeTemplate':
          'for (int i = 0; i < s.length(); i++) {\n  int d = s.charAt(i) - \'A\' + 1;\n  res = res * 26 + ___ ;\n}',
      'hardTemplate':
          'int titleToNumber(String s) {\n  int res = 0;\n  for (char c : s.toCharArray()) {\n    res = res * 26 + ( ___ );\n  }\n  return res;\n}',
      'blocks': {'a': 'd', 'b': '26', 'c': 'i'},
      'hardBlocks': {'a': "c - 'A' + 1", 'b': 'c', 'c': "c - 'A'"},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    // ── ZONE 10: Recursion ──
    {
      'id': 'z10_p1',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Recursive Factorial',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Calculate N! using recursion.',
      'hint': 'n! = n * (n-1)! and 1! = 1.',
      'codeTemplate':
          'int factorial(int n) {\n  if (n <= 1) return 1;\n  return n * ___(n - 1);\n}',
      'hardTemplate':
          'int fact(int n) {\n  return (n <= 1) ? ___ : n * ___(n - 1);\n}',
      'blocks': {'a': 'factorial', 'b': 'fact', 'c': 'return'},
      'hardBlocks': {'a': '1', 'b': 'fact', 'c': 'fact(n)'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p2',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Recursive Fibonacci',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find the Nth Fibonacci number using recursion.',
      'hint': 'fib(n) = fib(n-1) + fib(n-2).',
      'codeTemplate':
          'int fib(int n) {\n  if (n < 2) return n;\n  return ___(n - 1) + ___(n - 2);\n}',
      'hardTemplate':
          'int fib(int n) {\n  if (n < 2) return ___;\n  return ___ + ___;\n}',
      'blocks': {'a': 'fib', 'b': 'fibonacci', 'c': 'f'},
      'hardBlocks': {'a': 'n', 'b': 'fib(n-1)', 'c': 'fib(n-2)'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z10_p3',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Sum of Digits (Recursive)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find the sum of digits of N using recursion.',
      'hint': 'Sum(n) = (n % 10) + Sum(n / 10).',
      'codeTemplate':
          'int sumDigits(int n) {\n  if (n == 0) return 0;\n  return (n % 10) + ___(n / 10);\n}',
      'hardTemplate':
          'int sum(int n) {\n  if (n == 0) return 0;\n  return ( ___) + sum(___);\n}',
      'blocks': {'a': 'sumDigits', 'b': 'sum', 'c': 'n'},
      'hardBlocks': {'a': 'n % 10', 'b': 'n / 10', 'c': 'n'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p4',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Product of Digits',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find the product of digits of N using recursion.',
      'hint': 'Base case: if n%10 == n, return n.',
      'codeTemplate':
          'int prodDigits(int n) {\n  if (n % 10 == n) return n;\n  return (n % 10) * ___(n / 10);\n}',
      'hardTemplate':
          'int prod(int n) {\n  if (n % 10 == n) return ___;\n  return (n % 10) * prod(___);\n}',
      'blocks': {'a': 'prodDigits', 'b': 'prod', 'c': 'n'},
      'hardBlocks': {'a': 'n', 'b': 'n / 10', 'c': 'n'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p5',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Count Zeros',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Count occurrences of 0 in number N using recursion.',
      'hint': 'Pass an accumulator or check last digit and recurse.',
      'codeTemplate':
          'int count(int n, int c) {\n  if (n == 0) return c;\n  if (n % 10 == 0) return count(n / 10, ___);\n  return count(n / 10, c);\n}',
      'hardTemplate':
          'int helper(int n, int c) {\n  if (n == 0) return c;\n  return helper(n / 10, (___) ? c + 1 : c);\n}',
      'blocks': {'a': 'c + 1', 'b': 'c', 'c': '1'},
      'hardBlocks': {'a': 'n % 10 == 0', 'b': 'n % 2 == 0', 'c': 'true'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p6',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Number of Steps (LC 1342)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Recursive steps to reduce a number to zero: if even divide by 2, else subtract 1.',
      'hint': 'This is a helper function pattern.',
      'codeTemplate':
          'int numberOfSteps(int n) {\n  return helper(n, 0);\n}\nint helper(int n, int steps) {\n  if (n == 0) return steps;\n  if (n % 2 == 0) return helper(n / 2, ___);\n  return helper(n - 1, ___);\n}',
      'blocks': {'a': 'steps + 1', 'b': 'steps', 'c': '1'},
      'hardBlocks': {'a': 'steps + 1', 'b': 'steps + 1', 'c': 'steps'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p7',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Recursive Sum of N',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find result of 1 + 2 + ... + N.',
      'hint': 'sum(n) = n + sum(n-1).',
      'codeTemplate':
          'int sum(int n) {\n  if (n <= 1) return n;\n  return n + ___(n - 1);\n}',
      'hardTemplate':
          'int sum(int n) {\n  return (n <= 1) ? n : ___ + sum(___);\n}',
      'blocks': {'a': 'sum', 'b': 'n', 'c': '1'},
      'hardBlocks': {'a': 'n', 'b': 'n - 1', 'c': 'n + 1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p8',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Recursive Reverse',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Reverse a number N recursively.',
      'hint': 'Use a global helper or pass current reversed value.',
      'codeTemplate':
          'void reverse(int n) {\n  if (n == 0) return;\n  int rem = n % 10;\n  sum = sum * 10 + rem;\n  reverse(___);\n}',
      'hardTemplate':
          'int rev(int n, int digits) {\n  if (n % 10 == n) return n;\n  int rem = n % 10;\n  return rem * (int)Math.pow(10, ___) + rev(n / 10, ___);\n}',
      'blocks': {'a': 'n / 10', 'b': 'n', 'c': 'n % 10'},
      'hardBlocks': {'a': 'digits - 1', 'b': 'digits - 1', 'c': 'digits'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p9',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Binary Search (Recursive)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Implement Binary Search using recursion.',
      'hint': 'Pass s and e as parameters.',
      'codeTemplate':
          'int search(int[] arr, int target, int s, int e) {\n  if (s > e) return -1;\n  int m = s + (e - s) / 2;\n  if (arr[m] == target) return m;\n  if (target < arr[m]) return search(arr, target, s, ___);\n  return search(arr, target, ___, e);\n}',
      'blocks': {'a': 'm - 1', 'b': 'm + 1', 'c': 'm'},
      'hardBlocks': {'a': 'm - 1', 'b': 'm + 1', 'c': 'm'},
      'hardTemplate':
          'int bs(int[] a, int t, int s, int e) {\n  if (s > e) return -1;\n  int m = s + (e-s)/2;\n  if (a[m] == t) return m;\n  return t < a[m] ? bs(a, t, s, ___) : bs(a, t, ___, e);\n}',
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p10',
      'zone': 10,
      'subcategory': 'Basics',
      'title': 'Power (Recursive)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Calculate a^b using recursion.',
      'hint': 'a^b = a * a^(b-1).',
      'codeTemplate':
          'int power(int a, int b) {\n  if (b == 0) return 1;\n  return a * ___(a, b - 1);\n}',
      'hardTemplate':
          'int power(int a, int b) {\n  if (b == 0) ___ ;\n  return ___ * power(a, ___ );\n}',
      'blocks': {'a': 'power', 'b': 'a', 'c': 'b'},
      'hardBlocks': {'a': 'return 1', 'b': 'a', 'c': 'b - 1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },

    {
      'id': 'z10_p11',
      'zone': 10,
      'subcategory': 'Arrays',
      'title': 'Check if Array is Sorted',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Check if an array is sorted in ascending order using recursion.',
      'hint': 'Check if arr[i] < arr[i+1] and recurse for i+1.',
      'codeTemplate':
          'boolean isSorted(int[] arr, int i) {\n  if (i == arr.length - 1) return true;\n  return arr[i] < arr[i + 1] && ___(arr, i + 1);\n}',
      'hardTemplate':
          'boolean isSorted(int[] arr, int i) {\n  if (i == arr.length - 1) ___ ;\n  return ___ && isSorted(arr, i + 1);\n}',
      'blocks': {'a': 'isSorted', 'b': 'sorted', 'c': 'return'},
      'hardBlocks': {
        'a': 'return true',
        'b': 'arr[i] <= arr[i+1]',
        'c': 'i < arr.length',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p12',
      'zone': 10,
      'subcategory': 'Arrays',
      'title': 'Linear Search (Recursive)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Perform Linear Search on an array recursively.',
      'hint': 'Check arr[i] == target. If not, search in rest of array.',
      'codeTemplate':
          'int find(int[] arr, int target, int i) {\n  if (i == arr.length) return -1;\n  if (arr[i] == target) return i;\n  return ___(arr, target, i + 1);\n}',
      'hardTemplate':
          'int search(int[] a, int t, int i) {\n  if (i == a.length) return -1;\n  return a[i] == t ? ___ : search(a, t, ___);\n}',
      'blocks': {'a': 'find', 'b': 'search', 'c': 'i'},
      'hardBlocks': {'a': 'i', 'b': 'i + 1', 'c': 'a.length'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p13',
      'zone': 10,
      'subcategory': 'Arrays',
      'title': 'Find All Indices',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Find all indices of a target value in an array and return as a List.',
      'hint':
          'Pass the list in parameters or create it in each call (less efficient).',
      'codeTemplate':
          'List<Integer> findAll(int[] arr, int target, int i, List<Integer> list) {\n  if (i == arr.length) return list;\n  if (arr[i] == target) list.add(i);\n  return ___(arr, target, i + 1, list);\n}',
      'hardTemplate':
          'List<Integer> findIndices(int[] arr, int target, int i, List<Integer> list) {\n  if (i == arr.length) return list;\n  if (arr[i] == target) ___ ;\n  return findIndices(arr, target, ___, list);\n}',
      'blocks': {'a': 'findAll', 'b': 'find', 'c': 'list'},
      'hardBlocks': {'a': 'list.add(i)', 'b': 'i + 1', 'c': 'i'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p14',
      'zone': 10,
      'subcategory': 'Arrays',
      'title': 'Rotated Binary Search (Recursion)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Find target in a rotated sorted array using recursive binary search.',
      'hint': 'Check which half is sorted and decide where to search.',
      'codeTemplate':
          'if (arr[s] <= arr[m]) {\n  if (target >= arr[s] && target <= arr[m]) return search(arr, target, s, m - 1);\n  else return search(arr, target, ___, e);\n}',
      'hardTemplate':
          'int rbs(int[] a, int t, int s, int e) {\n  int m = s+(e-s)/2;\n  if(a[m]==t) return m;\n  if(a[s]<=a[m]) {\n    if(t>=a[s] && t<=a[m]) return rbs(a, t, s, m-1);\n    else return rbs(a, t, ___, e);\n  } else {\n    if(t>=a[m] && t<=a[e]) return rbs(a, t, ___, e);\n    else return rbs(a, t, s, m-1);\n  }\n}',
      'blocks': {'a': 'm + 1', 'b': 's', 'c': 'e'},
      'hardBlocks': {'a': 'm + 1', 'b': 'm + 1', 'c': 's'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p15',
      'zone': 10,
      'subcategory': 'Patterns',
      'title': 'Recursive Triangle 1',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Print a downward triangle (****, ***, **, *) using recursion.',
      'hint': 'Outer loop is the recursion level, inner loop prints stars.',
      'codeTemplate':
          'void triangle(int r, int c) {\n  if (r == 0) return;\n  if (c < r) {\n    System.out.print("*");\n    triangle(r, ___);\n  } else {\n    System.out.println();\n    triangle(___, 0);\n  }\n}',
      'hardTemplate':
          'void pattern(int r, int c) {\n  if (r == 0) return;\n  if (c < r) {\n    triangle(r, c + 1);\n    System.out.print("*");\n  } else {\n    triangle(___, 0);\n    System.out.println();\n  }\n}',
      'blocks': {'a': 'c + 1', 'b': 'r - 1', 'c': 'r'},
      'hardBlocks': {'a': 'r - 1', 'b': 'r + 1', 'c': '0'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p16',
      'zone': 10,
      'subcategory': 'Patterns',
      'title': 'Recursive Bubble Sort',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Implement Bubble Sort using recursion by leveraging triangle patterns.',
      'hint': 'One parameter for passes, one for internal swaps.',
      'codeTemplate':
          'void bubble(int[] arr, int r, int c) {\n  if (r == 0) return;\n  if (c < r) {\n    if (arr[c] > arr[c + 1]) swap(arr, c, c + 1);\n    bubble(arr, r, ___);\n  } else {\n    bubble(arr, ___, 0);\n  }\n}',
      'hardTemplate':
          'void bubbleSort(int[] a, int r, int c) {\n  if (r == 0) return;\n  if (c < r) {\n    if (a[c] > a[c+1]) swap(a, c, c+1);\n    bubbleSort(a, r, ___);\n  } else bubbleSort(a, ___, 0);\n}',
      'blocks': {'a': 'c + 1', 'b': 'r - 1', 'c': '0'},
      'hardBlocks': {'a': 'c + 1', 'b': 'r - 1', 'c': '0'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p17',
      'zone': 10,
      'subcategory': 'Patterns',
      'title': 'Recursive Selection Sort',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Implement Selection Sort using recursion.',
      'hint': 'Track the max element index and swap at end of row.',
      'codeTemplate':
          'void selection(int[] arr, int r, int c, int max) {\n  if (r == 0) return;\n  if (c < r) {\n    if (arr[c] > arr[max]) selection(arr, r, c + 1, ___);\n    else selection(arr, r, c + 1, max);\n  } else {\n    swap(arr, max, r - 1);\n    selection(arr, ___, 0, 0);\n  }\n}',
      'hardTemplate':
          'void select(int[] a, int r, int c, int m) {\n  if (r == 0) return;\n  if (c < r) select(a, r, c + 1, a[c] > a[m] ? ___ : m);\n  else {\n    swap(a, m, r - 1);\n    select(a, ___, 0, 0);\n  }\n}',
      'blocks': {'a': 'c', 'b': 'r - 1', 'c': '0'},
      'hardBlocks': {'a': 'c', 'b': 'r - 1', 'c': 'm'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p18',
      'zone': 10,
      'subcategory': 'Strings',
      'title': 'Skip a Character',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Remove all occurrences of a specific character (e.g. \'a\') from a string recursively.',
      'hint':
          'Result = char + recurse(rest) if not \'a\', else just recurse(rest).',
      'codeTemplate':
          'String skip(String s) {\n  if (s.isEmpty()) return "";\n  char ch = s.charAt(0);\n  if (ch == \'a\') return ___(s.substring(1));\n  else return ch + ___(s.substring(1));\n}',
      'hardTemplate':
          'String skip(String s) {\n  if (s.isEmpty()) return "";\n  char ch = s.charAt(0);\n  return (ch == \'a\') ? ___ : ch + ___ ;\n}',
      'blocks': {'a': 'skip', 'b': 's', 'c': '""'},
      'hardBlocks': {
        'a': 'skip(s.substring(1))',
        'b': 'skip(s.substring(1))',
        'c': 's',
      },
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p19',
      'zone': 10,
      'subcategory': 'Strings',
      'title': 'Skip a String (Apple)',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Remove the word "apple" from a string recursively.',
      'hint': 'Use s.startsWith("apple").',
      'codeTemplate':
          'String skipApple(String s) {\n  if (s.isEmpty()) return "";\n  if (s.startsWith("apple")) return skipApple(s.substring(___));\n  else return s.charAt(0) + skipApple(s.substring(1));\n}',
      'hardTemplate':
          'String skipApple(String s) {\n  if (s.isEmpty()) return "";\n  if (s.startsWith("apple")) return ___ ;\n  return s.charAt(0) + ___ ;\n}',
      'blocks': {'a': '5', 'b': 'apple', 'c': '1'},
      'hardBlocks': {
        'a': 'skipApple(s.substring(5))',
        'b': 'skipApple(s.substring(1))',
        'c': 's',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p20',
      'zone': 10,
      'subcategory': 'Strings',
      'title': 'Recursive Subsets',
      'difficulty': 'Hard',
      'xp': 200,
      'description': 'Generate all subsets (power set) of a string.',
      'hint': 'At each step, either take the character or leave it.',
      'codeTemplate':
          'void subsets(String p, String up) {\n  if (up.isEmpty()) {\n    print(p);\n    return;\n  }\n  char ch = up.charAt(0);\n  subsets(p + ch, up.substring(1));\n  subsets(p, ___(1));\n}',
      'hardTemplate':
          'void sub(String processed, String unprocessed) {\n  if (unprocessed.isEmpty()) {\n    System.out.println(processed);\n    return;\n  }\n  char ch = unprocessed.charAt(0);\n  sub(processed + ch, ___);\n  sub(processed, ___);\n}',
      'blocks': {'a': 'up.substring', 'b': 'p', 'c': 'ch'},
      'hardBlocks': {
        'a': 'unprocessed.substring(1)',
        'b': 'unprocessed.substring(1)',
        'c': 'unprocessed',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 12: Object Oriented Programming ──
    {
      'id': 'z12_p1',
      'zone': 12,
      'subcategory': 'Basics',
      'title': 'Classes & Objects',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Object-Oriented Programming. Create a basic class and instantiate an object.',
      'hint':
          'Use the `new` keyword to create an object from a class blueprint.',
      'codeTemplate':
          'class Student {\n  int rno;\n  String name;\n  float marks;\n}\n\npublic static void main(String[] args) {\n  Student kunal = new ___();\n  kunal.rno = 13;\n  kunal.name = "Kunal";\n  kunal.marks = 88.5f;\n  System.out.println(kunal.___ );\n}',
      'hardTemplate':
          'class Student { int rno; String name; float marks; }\npublic static void main(String[] args) {\n  ___ kunal = new ___();\n  kunal.rno = 13;\n  System.out.println(kunal.rno);\n}',
      'blocks': {'a': 'Student', 'b': 'name', 'c': 'kunal'},
      'hardBlocks': {'a': 'Student', 'b': 'Student', 'c': 'class'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p2',
      'zone': 12,
      'subcategory': 'Basics',
      'title': 'Constructors & this Keyword',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Initialize object properties using a constructor.',
      'hint':
          'Use the `this` keyword to refer to the current object\'s instance variables.',
      'codeTemplate':
          'class Person {\n  String name;\n  Person(String name) {\n    ___ = name;\n  }\n}\n\npublic static void main(String[] args) {\n  Person p = new Person("Alice");\n}',
      'hardTemplate':
          'class Person {\n  String name;\n  Person(String name) {\n    ___ = ___ ;\n  }\n}',
      'blocks': {'a': 'this.name', 'b': 'name', 'c': 'Person.name'},
      'hardBlocks': {'a': 'this.name', 'b': 'name', 'c': 'this'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p3',
      'zone': 12,
      'subcategory': 'Basics',
      'title': 'Wrapper Classes & final',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Understand how Wrapper Classes and the final keyword work. final prevents re-assignment.',
      'hint':
          'final primitive variables cannot be changed. final references cannot point to a new object.',
      'codeTemplate':
          'class A {\n  final int num = 10;\n  String name;\n}\n\npublic static void main(String[] args) {\n  Integer a = 10;\n  Integer b = 20;\n  final A obj = new A();\n  obj.name = "other name";\n  // obj = new A(); // This is ___ !\n}',
      'hardTemplate':
          'class A { final int num = 10; }\npublic static void main(String[] args) {\n  ___ A obj = new A();\n  // Cannot do obj = new A();\n  System.out.println(obj.num);\n}',
      'blocks': {'a': 'invalid', 'b': 'valid', 'c': 'allowed'},
      'hardBlocks': {'a': 'final', 'b': 'static', 'c': 'const'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z12_p4',
      'zone': 12,
      'subcategory': 'Static',
      'title': 'Static Variables & Methods',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Static members belong to the class, not to any specific instance.',
      'hint':
          'Access static variables using the Class name, e.g., Human.population.',
      'codeTemplate':
          'class Human {\n  String name;\n  static long population;\n  public Human(String name) {\n    this.name = name;\n    ___ += 1;\n  }\n}\n\npublic static void main(String[] args) {\n  Human kunal = new Human("Kunal");\n  Human rahul = new Human("Rahul");\n  System.out.println(Human.___ );\n}',
      'hardTemplate':
          'class Human {\n  String name;\n  ___ long population;\n  public Human(String name) {\n    this.name = name;\n    Human.population += 1;\n  }\n}',
      'blocks': {
        'a': 'Human.population',
        'b': 'population',
        'c': 'this.population',
      },
      'hardBlocks': {'a': 'static', 'b': 'final', 'c': 'public'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z12_p5',
      'zone': 12,
      'subcategory': 'Static',
      'title': 'Singleton Class Pattern',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Create a class that can only have one instance.',
      'hint':
          'Make the constructor private and provide a static method to get the single instance.',
      'codeTemplate':
          'class Singleton {\n  private ___ Singleton instance;\n  ___ Singleton() {}\n  public static Singleton getInstance() {\n    if (instance == null) {\n      instance = new Singleton();\n    }\n    return instance;\n  }\n}',
      'hardTemplate':
          'class Singleton {\n  private static Singleton instance;\n  ___ Singleton() {}\n  public static Singleton getInstance() {\n    if (___ == null) instance = new Singleton();\n    return instance;\n  }\n}',
      'blocks': {'a': 'static', 'b': 'private', 'c': 'public'},
      'hardBlocks': {'a': 'private', 'b': 'instance', 'c': 'this'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p6',
      'zone': 12,
      'subcategory': 'Four Pillars',
      'title': 'Inheritance (extends)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'A mechanism where a new class inherits properties and methods of an existing class.',
      'hint':
          'Use the `extends` keyword. Use `super()` to call the parent class constructor.',
      'codeTemplate':
          'class Box {\n  double l, w, h;\n  Box(double l, double w, double h) {\n    this.l = l; this.w = w; this.h = h;\n  }\n}\nclass BoxWeight ___ Box {\n  double weight;\n  BoxWeight(double l, double w, double h, double weight) {\n    ___(l, w, h);\n    this.weight = weight;\n  }\n}',
      'hardTemplate':
          'class Box { double l, w, h; Box(double l, double w, double h) { this.l=l; this.w=w; this.h=h; } }\nclass BoxWeight ___ Box {\n  double weight;\n  BoxWeight(double l, double w, double h, double weight) {\n    ___(l, w, h);\n    this.weight = weight;\n  }\n}',
      'blocks': {'a': 'extends', 'b': 'super', 'c': 'implements'},
      'hardBlocks': {'a': 'extends', 'b': 'super', 'c': 'this'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p7',
      'zone': 12,
      'subcategory': 'Four Pillars',
      'title': 'Polymorphism (Method Overloading)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Compile-time polymorphism: multiple methods with the same name but different parameters.',
      'hint': 'Change the number of arguments or the type of arguments.',
      'codeTemplate':
          'class MathOp {\n  int sum(int a, int b) {\n    return a + b;\n  }\n  int sum(int a, int b, int c) {\n    return a + b + c;\n  }\n  double sum(double a, ___ b) {\n    return a + b;\n  }\n}\n// In main: Object determines method at ___ time.',
      'hardTemplate':
          'class MathOp {\n  int sum(int a, int b) { return a + b; }\n  int sum(int a, int b, int c) { return a + b + c; }\n  ___ sum(double a, double b) {\n    return a + b;\n  }\n}',
      'blocks': {'a': 'double', 'b': 'compile', 'c': 'int'},
      'hardBlocks': {'a': 'double', 'b': 'int', 'c': 'float'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z12_p8',
      'zone': 12,
      'subcategory': 'Four Pillars',
      'title': 'Polymorphism (Method Overriding)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Run-time polymorphism: A subclass provides a specific implementation of a method provided by its superclass.',
      'hint':
          'The method signature must exactly match the parent\'s method. It depends on the object type.',
      'codeTemplate':
          'class Shapes {\n  void area() { System.out.println("I am in shapes"); }\n}\nclass Circle extends Shapes {\n  @Override\n  void ___() {\n    System.out.println("Area is pi * r * r");\n  }\n}\n// Shapes shape = new Circle(); shape.area(); calls ___ \'s area.',
      'hardTemplate':
          'class Shapes { void area() { System.out.println("Shapes"); } }\nclass Circle extends Shapes {\n  ___ \n  void area() {\n    System.out.println("Circle");\n  }\n}',
      'blocks': {'a': 'area', 'b': 'Circle', 'c': 'Shapes'},
      'hardBlocks': {'a': '@Override', 'b': '@Super', 'c': '@Overload'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z12_p9',
      'zone': 12,
      'subcategory': 'Four Pillars',
      'title': 'Encapsulation (Access Modifiers)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Hiding the internal state and requiring all interaction to be performed through an object\'s methods.',
      'hint':
          'Make instance variables private and provide public getter and setter methods.',
      'codeTemplate':
          'class BankAccount {\n  ___ double balance;\n  public double getBalance() {\n    return balance;\n  }\n  public void deposit(double amount) {\n    if (amount > 0) ___ += amount;\n  }\n}',
      'hardTemplate':
          'class BankAccount {\n  private double balance;\n  public double ___() {\n    return balance;\n  }\n  public void ___(double d) {\n    balance += d;\n  }\n}',
      'blocks': {'a': 'private', 'b': 'this.balance', 'c': 'public'},
      'hardBlocks': {'a': 'getBalance', 'b': 'setBalance', 'c': 'deposit'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'c'},
    },
    {
      'id': 'z12_p10',
      'zone': 12,
      'subcategory': 'Four Pillars',
      'title': 'Abstraction (Abstract Classes)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Hiding implementation details and showing only functionality to the user.',
      'hint':
          'Abstract classes cannot be instantiated. Abstract methods have no body.',
      'codeTemplate':
          '___ class Parent {\n  ___ void career();\n  void normal() {\n    System.out.println("This is a normal method");\n  }\n}\nclass Son extends Parent {\n  @Override\n  void career() {\n    System.out.println("I want to be a coder");\n  }\n}',
      'hardTemplate':
          'abstract class Parent { abstract void career(); }\nclass Son ___ Parent {\n  @Override\n  void ___() {\n    System.out.println("Coder");\n  }\n}',
      'blocks': {'a': 'abstract', 'b': 'abstract', 'c': 'interface'},
      'hardBlocks': {'a': 'extends', 'b': 'career', 'c': 'implements'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p11',
      'zone': 12,
      'subcategory': 'Interfaces & Packages',
      'title': 'Interfaces',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'An interface is a completely "abstract class" that is used to group related methods with empty bodies.',
      'hint': 'Use the `interface` keyword and `implements` to use it.',
      'codeTemplate':
          'interface Animal {\n  public void animalSound();\n  public void sleep();\n}\nclass Pig ___ Animal {\n  public void animalSound() {\n    System.out.println("The pig says: wee wee");\n  }\n  public void ___() {\n    System.out.println("Zzz");\n  }\n}',
      'hardTemplate':
          '___ Animal { void animalSound(); void sleep(); }\nclass Pig ___ Animal {\n  public void animalSound() { System.out.println("wee wee"); }\n  public void sleep() { System.out.println("Zzz"); }\n}',
      'blocks': {'a': 'implements', 'b': 'sleep', 'c': 'extends'},
      'hardBlocks': {'a': 'interface', 'b': 'implements', 'c': 'extends'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p12',
      'zone': 12,
      'subcategory': 'Interfaces & Packages',
      'title': 'Multiple Inheritance (Interfaces)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Java does not support multiple inheritance with classes, but it does with interfaces.',
      'hint': 'A class can implement multiple interfaces separated by commas.',
      'codeTemplate':
          'interface Engine {\n  void start();\n}\ninterface Media {\n  void play();\n}\nclass Car ___ Engine, Media {\n  public void start() { System.out.println("Engine starts"); }\n  public void ___() { System.out.println("Media plays"); }\n}',
      'hardTemplate':
          'interface Engine { void start(); }\ninterface Media { void play(); }\nclass Car ___ Engine, ___ {\n  public void start() {}\n  public void play() {}\n}',
      'blocks': {'a': 'implements', 'b': 'play', 'c': 'extends'},
      'hardBlocks': {'a': 'implements', 'b': 'Media', 'c': 'extends'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p13',
      'zone': 12,
      'subcategory': 'Interfaces & Packages',
      'title': 'Access Modifiers',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Understand public, private, protected, and default (no modifier).',
      'hint':
          'Protected members are accessible within the same package and by subclasses in other packages.',
      'codeTemplate':
          'class Base {\n  ___ int data = 10; // accessible in subclasses\n  private int secret = 20;\n}\nclass Derived extends Base {\n  void show() {\n    System.out.println("Data: " + ___ );\n    // System.out.println(secret); // Error!\n  }\n}',
      'hardTemplate':
          'class Base {\n  ___ int data = 10;\n  ___ int secret = 20;\n}\nclass Derived extends Base {\n  void show() {\n    System.out.println(data);\n  }\n}',
      'blocks': {'a': 'protected', 'b': 'data', 'c': 'secret'},
      'hardBlocks': {'a': 'protected', 'b': 'private', 'c': 'public'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p14',
      'zone': 12,
      'subcategory': 'Interfaces & Packages',
      'title': 'Packages & Import',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Organize classes into namespaces.',
      'hint':
          'The statement `package` must be at the top of the file. Use `import` to use classes from other packages.',
      'codeTemplate':
          '___ com.example.math;\n\n___ java.util.Scanner;\n\nclass Calculator {\n  // code\n}',
      'hardTemplate':
          '___ com.example.math;\n___ java.util.Scanner;\nclass Calculator { }',
      'blocks': {'a': 'package', 'b': 'import', 'c': 'include'},
      'hardBlocks': {'a': 'package', 'b': 'import', 'c': 'namespace'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p15',
      'zone': 12,
      'subcategory': 'Object Class',
      'title': 'Object Class (toString & equals)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Every class in Java is directly or indirectly derived from the Object class.',
      'hint':
          'Override toString() for custom string representation, and equals() for logical equality.',
      'codeTemplate':
          'class Student {\n  int id;\n  Student(int id) { this.id = id; }\n  @Override\n  public String ___() {\n    return "Student " + id;\n  }\n  @Override\n  public boolean ___(Object obj) {\n    return this.id == ((Student)obj).id;\n  }\n}',
      'hardTemplate':
          'class Student {\n  int id;\n  Student(int id) { this.id = id; }\n  ___ \n  public String toString() { return "Student " + id; }\n  ___ \n  public boolean equals(Object obj) {\n    return this.id == ((Student)obj).id;\n  }\n}',
      'blocks': {'a': 'toString', 'b': 'equals', 'c': 'hashCode'},
      'hardBlocks': {'a': '@Override', 'b': '@Override', 'c': '@Super'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p16',
      'zone': 12,
      'subcategory': 'Object Class',
      'title': 'Object Cloning',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Create an exact copy of an object using the clone() method.',
      'hint':
          'The class must implement the `Cloneable` interface and override `clone()`.',
      'codeTemplate':
          'class Person ___ Cloneable {\n  int age;\n  public Object clone() throws CloneNotSupportedException {\n    return super.___();\n  }\n}',
      'hardTemplate':
          'class Person ___ ___ {\n  int age;\n  public Object clone() throws CloneNotSupportedException {\n    return super.clone();\n  }\n}',
      'blocks': {'a': 'implements', 'b': 'clone', 'c': 'extends'},
      'hardBlocks': {'a': 'implements', 'b': 'Cloneable', 'c': 'extends'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p17',
      'zone': 12,
      'subcategory': 'Exceptions',
      'title': 'Exception Handling (try-catch)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Handle run-time errors so the normal flow of the application is maintained.',
      'hint':
          'Put risky code in `try` block, handle it in `catch`, and run mandatory code in `finally`.',
      'codeTemplate':
          '___ {\n  int data = 50 / 0;\n} ___(ArithmeticException e) {\n  System.out.println(e);\n} ___ {\n  System.out.println("Always executed");\n}',
      'hardTemplate':
          '___ { int data = 50 / 0; }\n___ (ArithmeticException e) { System.out.println(e); }\n___ { System.out.println("Always executed"); }',
      'blocks': {'a': 'try', 'b': 'catch', 'c': 'finally'},
      'hardBlocks': {'a': 'try', 'b': 'catch', 'c': 'finally'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z12_p18',
      'zone': 12,
      'subcategory': 'Exceptions',
      'title': 'throw vs throws',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Understand throwing an exception explicitly vs declaring it in the method signature.',
      'hint':
          '`throw` actually throws the exception inside method body. `throws` is in method signature declaring it might throw.',
      'codeTemplate':
          'static void checkAge(int age) ___ Exception {\n  if (age < 18) {\n    ___ new Exception("Access denied");\n  }\n}',
      'hardTemplate':
          'static void checkAge(int age) ___ Exception {\n  if (age < 18) {\n    ___ new Exception("Access denied");\n  }\n}',
      'blocks': {'a': 'throws', 'b': 'throw', 'c': 'Throws'},
      'hardBlocks': {'a': 'throws', 'b': 'throw', 'c': 'catch'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p19',
      'zone': 12,
      'subcategory': 'Exceptions',
      'title': 'Custom Exceptions',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Create your own Exception class.',
      'hint': 'Extend the `Exception` or `RuntimeException` class.',
      'codeTemplate':
          'class MyCustomException ___ Exception {\n  public MyCustomException(String message) {\n    ___(message);\n  }\n}\n// Throw like: throw new MyCustomException("Error");',
      'hardTemplate':
          'class MyCustomException ___ Exception {\n  public MyCustomException(String message) {\n    ___(message);\n  }\n}',
      'blocks': {'a': 'extends', 'b': 'super', 'c': 'implements'},
      'hardBlocks': {'a': 'extends', 'b': 'super', 'c': 'this'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p20',
      'zone': 12,
      'subcategory': 'Generics',
      'title': 'Generic Class',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Create classes that work with any data type.',
      'hint': 'Use angle brackets <T> to define type parameters.',
      'codeTemplate':
          'class CustomGenList<___> {\n  Object[] data = new Object[10];\n  int size = 0;\n  public void add(___ num) {\n    data[size++] = num;\n  }\n}\n// Usage: CustomGenList<Integer> list = new CustomGenList<>();',
      'hardTemplate':
          'class CustomGenList<___> {\n  Object[] data = new Object[10];\n  int size = 0;\n  public void add(___ element) {\n    data[size++] = element;\n  }\n}',
      'blocks': {'a': 'T', 'b': 'T', 'c': 'Object'},
      'hardBlocks': {'a': 'T', 'b': 'T', 'c': 'E'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p21',
      'zone': 12,
      'subcategory': 'Generics',
      'title': 'Generic Methods',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Create a single method that can accept different types of arguments.',
      'hint':
          'Declare the type parameter <T> before the return type of the method.',
      'codeTemplate':
          'class Printer {\n  public static <___> void printArray(___[] array) {\n    for (___ element : array) {\n      System.out.println(element);\n    }\n  }\n}\n// Usage: Printer.printArray(intArray); Printer.printArray(stringArray);',
      'hardTemplate':
          'class Printer {\n  public static ___ void printArray(___[] array) {\n    for (___ e : array) System.out.println(e);\n  }\n}',
      'blocks': {'a': 'T', 'b': 'T', 'c': 'T'},
      'hardBlocks': {'a': '<T>', 'b': 'T', 'c': 'T'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z12_p22',
      'zone': 12,
      'subcategory': 'Generics',
      'title': 'Wildcards in Generics',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'The question mark (?) represents an unknown type, used as a wildcard.',
      'hint':
          'Use `<? extends Number>` to accept Number and its subclasses (Integer, Double).',
      'codeTemplate':
          'public void drawAll(List<___ ___ Shape> shapes) {\n  for (Shape s : shapes) {\n    s.draw();\n  }\n}\n// This accepts List<Circle>, List<Rectangle> etc.',
      'hardTemplate':
          'public void drawAll(List<___ ___ Shape> shapes) {\n  for (Shape s : shapes) { s.draw(); }\n}',
      'blocks': {'a': '?', 'b': 'extends', 'c': 'super'},
      'hardBlocks': {'a': '?', 'b': 'extends', 'c': 'super'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p23',
      'zone': 12,
      'subcategory': 'Lambda Expressions',
      'title': 'Lambda Basics',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'A short block of code which takes in parameters and returns a value.',
      'hint': 'Syntax: parameter -> expression',
      'codeTemplate':
          'ArrayList<Integer> numbers = new ArrayList<>();\nnumbers.add(5); numbers.add(9);\nnumbers.forEach( (n) ___ { System.out.println(___ ); } );',
      'hardTemplate':
          'ArrayList<Integer> nums = new ArrayList<>();\nnums.add(5); nums.add(9);\nnums.forEach(___ ___ System.out.println(___));',
      'blocks': {'a': '->', 'b': 'n', 'c': '=>'},
      'hardBlocks': {'a': 'n', 'b': '->', 'c': 'n'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z12_p24',
      'zone': 12,
      'subcategory': 'Lambda Expressions',
      'title': 'Lambda with Interface',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Implementing a functional interface (interface with a single method) using a lambda expression.',
      'hint': 'Variable of interface type = (params) -> { body }',
      'codeTemplate':
          'interface StringFunction {\n  String run(String str);\n}\npublic static void main(String[] args) {\n  StringFunction exclaim = (s) ___ s + "!";\n  StringFunction ask = (s) ___ s + "?";\n  System.out.println(exclaim.run("Hello"));\n}',
      'hardTemplate':
          'interface StringFunction { String run(String str); }\npublic static void main(String[] args) {\n  StringFunction exclaim = ___ ___ ___ + "!";\n  System.out.println(exclaim.run("Hello"));\n}',
      'blocks': {'a': '->', 'b': '->', 'c': '=>'},
      'hardBlocks': {'a': '(s)', 'b': '->', 'c': 's'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z12_p25',
      'zone': 12,
      'subcategory': 'Collections',
      'title': 'ArrayList Operations',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Dynamic array available in java.util package.',
      'hint':
          'Use `add()` to append, `get()` to access, and `set()` to modify.',
      'codeTemplate':
          'ArrayList<String> cars = new ArrayList<>();\ncars.___( "Volvo" );\ncars.___( "BMW" );\ncars.___( 0, "Opel" ); // Change Volvo to Opel\nSystem.out.println(cars.___ (0));',
      'hardTemplate':
          'ArrayList<String> cars = new ArrayList<>();\ncars.___( "Volvo" );\ncars.___( 0, "Opel" );\nSystem.out.println(cars.___ (0));',
      'blocks': {'a': 'add', 'b': 'add', 'c': 'set', 'd': 'get'},
      'hardBlocks': {'a': 'add', 'b': 'set', 'c': 'get'},
      'solution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z12_p26',
      'zone': 12,
      'subcategory': 'Collections',
      'title': 'LinkedList Operations',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Doubly linked list from java.util package.',
      'hint':
          'Has additional methods for adding/removing at start/end like `addFirst()`, `removeLast()`.',
      'codeTemplate':
          'LinkedList<String> cars = new LinkedList<>();\ncars.add("Volvo");\ncars.add("BMW");\ncars.___("Mazda");\ncars.___();\nSystem.out.println(cars);',
      'hardTemplate':
          'LinkedList<String> cars = new LinkedList<>();\ncars.add("Volvo");\ncars.___("Mazda");\ncars.___();\nSystem.out.println(cars);',
      'blocks': {'a': 'addFirst', 'b': 'removeLast', 'c': 'push'},
      'hardBlocks': {'a': 'addFirst', 'b': 'removeLast', 'c': 'pop'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p27',
      'zone': 12,
      'subcategory': 'Collections',
      'title': 'Iterator',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'An Iterator is an object that can be used to loop through collections.',
      'hint':
          'Use `hasNext()` to check if there are more elements, and `next()` to get the element.',
      'codeTemplate':
          'ArrayList<String> cars = new ArrayList<>();\nIterator<String> it = cars.___();\nwhile(it.___()) {\n  System.out.println(it.___());\n}',
      'hardTemplate':
          'ArrayList<String> cars = new ArrayList<>();\nIterator<String> it = cars.___();\nwhile(it.___()) {\n  System.out.println(it.___());\n}',
      'blocks': {'a': 'iterator', 'b': 'hasNext', 'c': 'next'},
      'hardBlocks': {'a': 'iterator', 'b': 'hasNext', 'c': 'next'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z12_p28',
      'zone': 12,
      'subcategory': 'Advanced Types',
      'title': 'Enums (Enumerations)',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'A special "class" that represents a group of constants.',
      'hint':
          'Use the `enum` keyword instead of `class`. Constants are uppercase.',
      'codeTemplate':
          '___ Level {\n  LOW,\n  MEDIUM,\n  HIGH\n}\npublic static void main(String[] args) {\n  Level myVar = Level.___ ;\n  System.out.println(myVar);\n}',
      'hardTemplate':
          '___ Level {\n  LOW, MEDIUM, HIGH\n}\npublic static void main(String[] args) {\n  Level myVar = ___ .MEDIUM;\n  System.out.println(myVar);\n}',
      'blocks': {'a': 'enum', 'b': 'MEDIUM', 'c': 'class'},
      'hardBlocks': {'a': 'enum', 'b': 'Level', 'c': 'class'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p29',
      'zone': 12,
      'subcategory': 'Advanced Types',
      'title': 'Enums with Switch',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Enums are commonly used in switch statements to check for corresponding values.',
      'hint': 'In switch, just use the constant name `LOW`, not `Level.LOW`.',
      'codeTemplate':
          'Level myVar = Level.MEDIUM;\nswitch(___) {\n  case ___:\n    System.out.println("Low level");\n    break;\n  case MEDIUM:\n    System.out.println("Medium level");\n    break;\n  case HIGH:\n    System.out.println("High level");\n    break;\n}',
      'hardTemplate':
          'Level myVar = Level.MEDIUM;\nswitch(___) {\n  case ___ :\n    System.out.println("Low level"); break;\n  case MEDIUM:\n    System.out.println("Medium level"); break;\n}',
      'blocks': {'a': 'myVar', 'b': 'LOW', 'c': 'Level.LOW'},
      'hardBlocks': {'a': 'myVar', 'b': 'LOW', 'c': 'Level.LOW'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z12_p30',
      'zone': 12,
      'subcategory': 'Memory',
      'title': 'Garbage Collection',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Java reclaims memory of unused objects automatically. You can request it manually (rarely guaranteed).',
      'hint': 'Use `System.gc()` to request JVM to run the Garbage Collector.',
      'codeTemplate':
          'class Test {\n  public void finalize() {\n    System.out.println("Object is garbage collected");\n  }\n  public static void main(String[] args) {\n    Test s1 = new Test();\n    Test s2 = new Test();\n    s1 = null;\n    s2 = null;\n    ___.___();\n  }\n}',
      'hardTemplate':
          'class Test {\n  public void finalize() { System.out.println("Collected"); }\n  public static void main(String[] args) {\n    Test s1 = new Test();\n    s1 = null;\n    System.___();\n  }\n}',
      'blocks': {'a': 'System', 'b': 'gc', 'c': 'Runtime'},
      'hardBlocks': {'a': 'gc', 'b': 'free', 'c': 'collect'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },

    // ── ZONE 13: Linked List ──
    {
      'id': 'z13_p1',
      'zone': 13,
      'title': 'Reverse Linked List',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Linked List. Reverse a singly linked list in O(N) time.',
      'hint': 'Use prev, current, and nextNode pointers.',
      'codeTemplate':
          'ListNode reverse(ListNode head) {\n  ListNode prev = null, curr = head;\n  while (curr != null) {\n    ListNode nxt = curr.next;\n    curr.next = ___;\n    ___ = curr;\n    curr = nxt;\n  }\n  return prev;\n}',
      'blocks': {'a': 'prev', 'b': 'curr.next', 'c': 'head'},
      'solution': {
        '1': 'a',
        '2': 'a',
      }, // wait 2 should be prev = curr. So block should have prev. Let's fix this.
      'lesson': [
        {
          'type': 'text',
          'visualizer': 'node',
          'title': 'Linked List Structure',
          'content':
              'A Linked List is a series of nodes. Each node points to the next one. To reverse it, we just need to flip the arrows!',
          'data': [1, null, 2, null, 3, null, 4],
          'highlights': <int, int>{},
          'pointers': <int, String>{},
        },
        {
          'type': 'text',
          'visualizer': 'node',
          'title': 'Track Pointers',
          'content':
              'We maintain three pointers: prev (initially null), curr (at head), and nxt.',
          'data': [1, null, 2, null, 3, null, 4],
          'highlights': {0: AppTheme.accentYellow.value},
          'pointers': {0: 'curr/head'},
        },
        {
          'type': 'text',
          'visualizer': 'node',
          'title': 'Flip the Arrow',
          'content':
              'We save next (2), flip curr.next to point to prev (null), then shift prev and curr forward.',
          'data': [1, null, 2, null, 3, null, 4],
          'highlights': {
            0: AppTheme.matrixGreen.value,
            2: AppTheme.accentYellow.value,
          },
          'pointers': {0: 'prev', 2: 'curr'},
        },
      ],
    },

    {
      'id': 'z10_p21',
      'zone': 10,
      'subcategory': 'Strings',
      'title': 'Recursive Permutations',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Generate all permutations of a string recursively.',
      'hint':
          'Insert the next character at all possible positions in processed string.',
      'codeTemplate':
          'void permutations(String p, String up) {\n  if (up.isEmpty()) {\n    print(p);\n    return;\n  }\n  char ch = up.charAt(0);\n  for (int i = 0; i <= p.length(); i++) {\n    String f = p.substring(0, i);\n    String s = p.substring(i, p.length());\n    permutations(f + ch + s, ___(1));\n  }\n}',
      'hardTemplate':
          'void perm(String p, String up) {\n  if (up.isEmpty()) { System.out.println(p); return; }\n  char ch = up.charAt(0);\n  for (int i = 0; i <= p.length(); i++) {\n    perm(___ + ch + ___, up.substring(1));\n  }\n}',
      'blocks': {'a': 'up.substring', 'b': 'p', 'c': 'i'},
      'hardBlocks': {
        'a': 'p.substring(0, i)',
        'b': 'p.substring(i)',
        'c': 'up',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p22',
      'zone': 10,
      'subcategory': 'Strings',
      'title': 'Subsequences with ASCII',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Generate subsets including both character and its ASCII value.',
      'hint': 'Three recursive calls: take char, ignore char, take ASCII.',
      'codeTemplate':
          'void subseqAscii(String p, String up) {\n  if (up.isEmpty()) return;\n  char ch = up.charAt(0);\n  subseqAscii(p + ch, up.substring(1));\n  subseqAscii(p, up.substring(1));\n  subseqAscii(p + (___), up.substring(1));\n}',
      'hardTemplate':
          'void subAscii(String p, String up) {\n  if (up.isEmpty()) return;\n  char ch = up.charAt(0);\n  subAscii(p + ch, up.substring(1));\n  subAscii(p, up.substring(1));\n  subAscii(p + (___), ___);\n}',
      'blocks': {'a': '(int)ch', 'b': 'ch', 'c': 'p'},
      'hardBlocks': {'a': '(int)ch', 'b': 'up.substring(1)', 'c': 'p'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z10_p23',
      'zone': 10,
      'subcategory': 'LC Mix',
      'title': 'Letter Combinations (LC 17)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Find all letter combinations of a phone number keypad.',
      'hint': 'Map digits to letters and recurse.',
      'codeTemplate':
          'void pad(String p, String up) {\n  if (up.isEmpty()) return;\n  int digit = up.charAt(0) - \'0\';\n  for (int i = (digit - 1) * 3; i < digit * 3; i++) {\n    char ch = (char)(\'a\' + i);\n    pad(p + ch, ___(1));\n  }\n}',
      'hardTemplate':
          'List<String> combinations(String p, String up) {\n  if (up.isEmpty()) return List.of(p);\n  int digit = up.charAt(0) - \'0\';\n  List<String> list = new ArrayList<>();\n  for (int i = (digit-2)*3; i < (digit-1)*3; i++) {\n    list.addAll(combinations(p + (char)(\'a\' + i), ___));\n  }\n  return list;\n}',
      'blocks': {'a': 'up.substring', 'b': 'p', 'c': 'digit'},
      'hardBlocks': {'a': 'up.substring(1)', 'b': 'up', 'c': 'p'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p24',
      'zone': 10,
      'subcategory': 'LC Mix',
      'title': 'Dice Sums',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Find total combinations of dice rolls to hit a target sum recursively.',
      'hint': 'Target decreases with each roll.',
      'codeTemplate':
          'int dice(String p, int target) {\n  if (target == 0) return 1;\n  int count = 0;\n  for (int i = 1; i <= 6 && i <= target; i++) {\n    count += dice(p + i, ___ );\n  }\n  return count;\n}',
      'hardTemplate':
          'int diceComb(int target) {\n  if (target == 0) return 1;\n  int res = 0;\n  for (int i = 1; i <= 6 && i <= target; i++) {\n    res += ___(target - i);\n  }\n  return res;\n}',
      'blocks': {'a': 'target - i', 'b': 'target', 'c': 'i'},
      'hardBlocks': {'a': 'diceComb', 'b': 'target', 'c': 'dice'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p25',
      'zone': 10,
      'subcategory': 'LC Mix',
      'title': 'Combination Sum (LC 39)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find all unique combinations of candidates that sum to target (any number can be reused).',
      'hint': 'Stay on same index to reuse, or move to next.',
      'codeTemplate':
          'void findComb(int i, int target, List<Integer> curr) {\n  if (target == 0) { res.add(new ArrayList<>(curr)); return; }\n  if (target < 0 || i == n) return;\n  curr.add(nums[i]);\n  findComb(i, target - nums[i], curr);\n  ___;\n  findComb(i + 1, target, curr);\n}',
      'hardTemplate':
          'void helper(int idx, int tar, List<Integer> ds) {\n  if (idx == arr.length) {\n    if (tar == 0) ans.add(new ArrayList<>(ds));\n    return;\n  }\n  if (arr[idx] <= tar) {\n    ds.add(arr[idx]);\n    helper(idx, tar - arr[idx], ds);\n    ___;\n  }\n  helper(idx + 1, tar, ds);\n}',
      'blocks': {
        'a': 'curr.remove(curr.size() - 1)',
        'b': 'curr.add(nums[i])',
        'c': 'return',
      },
      'hardBlocks': {
        'a': 'ds.remove(ds.size() - 1)',
        'b': 'ds.clear()',
        'c': 'idx++',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p26',
      'zone': 10,
      'subcategory': 'LC Mix',
      'title': 'Subsets (LC 78)',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Given an integer array nums of unique elements, return all possible subsets (the power set).',
      'hint': 'Standard take/not-take recursion.',
      'codeTemplate':
          'void subset(int i, List<Integer> curr) {\n  if (i == nums.length) { res.add(new ArrayList<>(curr)); return; }\n  curr.add(nums[i]);\n  subset(i + 1, curr);\n  ___;\n  subset(i + 1, curr);\n}',
      'hardTemplate':
          'void solve(int i, List<Integer> temp) {\n  if (i == nums.length) {\n    ans.add(new ArrayList<>(temp));\n    return;\n  }\n  temp.add(nums[i]);\n  solve(i + 1, temp);\n  ___ ;\n  solve(i + 1, temp);\n}',
      'blocks': {
        'a': 'curr.remove(curr.size() - 1)',
        'b': 'return',
        'c': 'curr.clear()',
      },
      'hardBlocks': {
        'a': 'temp.remove(temp.size() - 1)',
        'b': 'i++',
        'c': 'temp.add(0)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p27',
      'zone': 10,
      'subcategory': 'LC Mix',
      'title': 'Subset II (LC 90)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Return all possible subsets of an array that may contain duplicates. The solution must not contain duplicate subsets.',
      'hint': 'Sort the array and skip duplicates in for loop.',
      'codeTemplate':
          'for (int j = i; j < nums.length; j++) {\n  if (j > i && nums[j] == nums[j - 1]) ___ ;\n  curr.add(nums[j]);\n  find(j + 1, curr);\n  curr.remove(curr.size() - 1);\n}',
      'hardTemplate':
          'void func(int idx, List<Integer> ds) {\n  ans.add(new ArrayList<>(ds));\n  for (int i = idx; i < nums.length; i++) {\n    if (i > idx && nums[i] == nums[i-1]) ___ ;\n    ds.add(nums[i]);\n    func(i + 1, ds);\n    ds.remove(ds.size() - 1);\n  }\n}',
      'blocks': {'a': 'continue', 'b': 'break', 'c': 'return'},
      'hardBlocks': {'a': 'continue', 'b': 'return', 'c': 'break'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p28',
      'zone': 10,
      'subcategory': 'LC Mix',
      'title': 'Permutations (LC 46)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Given an array nums of distinct integers, return all the possible permutations.',
      'hint': 'Swap elements or use a frequency array/mask.',
      'codeTemplate':
          'void backtrack(List<Integer> curr) {\n  if (curr.size() == nums.length) { res.add(new ArrayList<>(curr)); return; }\n  for (int i = 0; i < nums.length; i++) {\n    if (___) continue;\n    visited[i] = true; curr.add(nums[i]);\n    backtrack(curr);\n    visited[i] = false; curr.remove(curr.size() - 1);\n  }\n}',
      'hardTemplate':
          'void recurse(List<Integer> ds, boolean[] v) {\n  if (ds.size() == nums.length) {\n    ans.add(new ArrayList<>(ds));\n    return;\n  }\n  for (int i = 0; i < nums.length; i++) {\n    if (!v[i]) {\n      v[i] = true;\n      ds.add(nums[i]);\n      recurse(ds, v);\n      v[i] = false;\n      ___ ;\n    }\n  }\n}',
      'blocks': {
        'a': 'visited[i]',
        'b': '!visited[i]',
        'c': 'curr.contains(nums[i])',
      },
      'hardBlocks': {
        'a': 'ds.remove(ds.size() - 1)',
        'b': 'ds.clear()',
        'c': 'v[i] = false',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p29',
      'zone': 10,
      'subcategory': 'LC Mix',
      'title': 'Letter Case Permutation (LC 784)',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Transform character at index into uppercase/lowercase and recurse.',
      'hint': 'If digit just recurse next, if letter do both cases.',
      'codeTemplate':
          'if (Character.isDigit(s.charAt(i))) backtrack(s, i + 1, curr + s.charAt(i));\nelse {\n  backtrack(s, i + 1, curr + Character.toLowerCase(s.charAt(i)));\n  backtrack(s, i + 1, curr + ___ );\n}',
      'hardTemplate':
          'void solve(String s, int i, String res) {\n  if (i == s.length()) { ans.add(res); return; }\n  char c = s.charAt(i);\n  if (Character.isDigit(c)) solve(s, i + 1, res + c);\n  else {\n    solve(s, i + 1, res + Character.toLowerCase(c));\n    solve(s, i + 1, ___ );\n  }\n}',
      'blocks': {
        'a': 'Character.toUpperCase(s.charAt(i))',
        'b': 's.charAt(i)',
        'c': '""',
      },
      'hardBlocks': {
        'a': 'res + Character.toUpperCase(c)',
        'b': 'res + c',
        'c': 'res',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z10_p30',
      'zone': 10,
      'subcategory': 'LC Mix',
      'title': 'Generate Parentheses (LC 22)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Generate all combinations of n pairs of well-formed parentheses.',
      'hint': 'Track count of open and close brackets.',
      'codeTemplate':
          'void generate(String s, int open, int close, int n) {\n  if (s.length() == 2 * n) { res.add(s); return; }\n  if (open < n) generate(s + "(", open + 1, close, n);\n  if (___) generate(s + ")", open, close + 1, n);\n}',
      'hardTemplate':
          'void backtrack(String s, int o, int c, int n) {\n  if (s.length() == 2 * n) { ans.add(s); return; }\n  if (o < n) backtrack(s + "(", ___, c, n);\n  if (c < o) backtrack(s + ")", o, ___, n);\n}',
      'blocks': {'a': 'close < open', 'b': 'close < n', 'c': 'open < n'},
      'hardBlocks': {'a': 'o + 1', 'b': 'c + 1', 'c': 'o'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 11: Backtracking ──
    {
      'id': 'z11_p1',
      'zone': 11,
      'subcategory': 'Maze Basics',
      'title': 'Maze Count Paths',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Count total number of paths from (0,0) to target in a maze (Right and Down moves only).',
      'hint': 'Base case: if r=1 or c=1, only 1 path remains.',
      'codeTemplate':
          'int count(int r, int c) {\n  if (r == 1 || c == 1) return 1;\n  int left = count(r - 1, c);\n  int right = count(r, c - 1);\n  return ___ + ___;\n}',
      'hardTemplate':
          'int count(int r, int c) {\n  if (r == 1 || c == 1) ___ ;\n  return count(r - 1, c) + ___ ;\n}',
      'blocks': {'a': 'left', 'b': 'right', 'c': 'return'},
      'hardBlocks': {'a': 'return 1', 'b': 'count(r, c - 1)', 'c': '0'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p2',
      'zone': 11,
      'subcategory': 'Maze Basics',
      'title': 'Maze Print Paths',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Print all possible paths string (D for Down, R for Right) in a 3x3 maze.',
      'hint': 'Pass the "processed" string along with row/column.',
      'codeTemplate':
          'void path(String p, int r, int c) {\n  if (r == 1 && c == 1) {\n    System.out.println(p);\n    return;\n  }\n  if (r > 1) path(p + \'D\', r - 1, c);\n  if (c > 1) path(p + \'R\', r, ___);\n}',
      'hardTemplate':
          'void path(String p, int r, int c) {\n  if (r == 1 && c == 1) { System.out.println(p); return; }\n  if (r > 1) path(p + \'D\', ___, c);\n  if (c > 1) path(___, r, c - 1);\n}',
      'blocks': {'a': 'c - 1', 'b': 'r', 'c': 'D'},
      'hardBlocks': {'a': 'r - 1', 'b': 'p + \'R\'', 'c': 'c'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p3',
      'zone': 11,
      'subcategory': 'Maze Basics',
      'title': 'Maze Paths Diagonal',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Print paths including Diagonal moves (D, R, and V for Diagonal/Vertical-Horizontal).',
      'hint': 'Add a third recursive call for (r-1, c-1).',
      'codeTemplate':
          'if (r > 1 && c > 1) path(p + \'V\', r - 1, c - 1);\nif (r > 1) path(p + \'D\', r - 1, c);\nif (c > 1) path(p + \'R\', r, ___);',
      'hardTemplate':
          'void path(String p, int r, int c) {\n  if (r == 1 && c == 1) { System.out.println(p); return; }\n  if (r > 1 && c > 1) path(p + \'V\', ___, ___);\n  if (r > 1) path(p + \'H\', r - 1, c);\n  if (c > 1) path(p + \'V\', r, c - 1);\n}',
      'blocks': {'a': 'c - 1', 'b': 'p', 'c': 'r'},
      'hardBlocks': {'a': 'r - 1', 'b': 'c - 1', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p4',
      'zone': 11,
      'subcategory': 'Maze with Obstacles',
      'title': 'Maze with River',
      'difficulty': 'Medium',
      'xp': 120,
      'description':
          'Stop recursing if you hit an obstacle (represented by false in a boolean matrix).',
      'hint': 'If !maze[r][c], return/backtrack.',
      'codeTemplate':
          'void path(String p, boolean[][] maze, int r, int c) {\n  if (r == maze.length - 1 && c == maze[0].length - 1) {\n    System.out.println(p);\n    return;\n  }\n  if (!___[r][c]) return;\n  if (r < maze.length - 1) path(p + \'D\', maze, r + 1, c);\n  if (c < maze[0].length - 1) path(p + \'R\', maze, r, c + 1);\n}',
      'hardTemplate':
          'void path(String p, boolean[][] m, int r, int c) {\n  if (r == m.length - 1 && c == m[0].length - 1) { System.out.println(p); return; }\n  if (___) return;\n  if (r < m.length - 1) path(p + \'D\', m, r + 1, c);\n  if (c < m[0].length - 1) path(___, m, r, c + 1);\n}',
      'blocks': {'a': 'maze', 'b': 'm', 'c': '!maze[r][c]'},
      'hardBlocks': {'a': '!m[r][c]', 'b': 'p + \'R\'', 'c': 'true'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p5',
      'zone': 11,
      'subcategory': 'All Paths',
      'title': 'Backtracking Intro (U,D,L,R)',
      'difficulty': 'Hard',
      'xp': 200,
      'description':
          'Allow moves in all 4 directions. Use backtracking to avoid infinite loops.',
      'hint': 'Mark current cell as false, recurse, then restore it to true.',
      'codeTemplate':
          'maze[r][c] = false;\nif (r < maze.length - 1) allPath(p + \'D\', maze, r + 1, c);\nif (c < maze[0].length - 1) allPath(p + \'R\', maze, r, c + 1);\nif (r > 0) allPath(p + \'U\', maze, r - 1, c);\nif (c > 0) allPath(p + \'L\', maze, r, c - 1);\nmaze[r][c] = ___ ;',
      'hardTemplate':
          'void solve(String p, boolean[][] m, int r, int c) {\n  if (r == m.length - 1 && c == m[0].length - 1) { System.out.println(p); return; }\n  if (!m[r][c]) return;\n  m[r][c] = ___ ;\n  // recursive calls ...\n  m[r][c] = ___ ;\n}',
      'blocks': {'a': 'true', 'b': 'false', 'c': 'null'},
      'hardBlocks': {'a': 'false', 'b': 'true', 'c': 'm[r][c]'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p6',
      'zone': 11,
      'subcategory': 'All Paths',
      'title': 'Print Matrix & Path',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Print the 2D matrix representing the path with step numbers.',
      'hint': 'Use an integer array `path[][]` to store step count.',
      'codeTemplate':
          'path[r][c] = step;\nif (r == maze.length - 1 && c == maze[0].length - 1) {\n  printMatrix(path);\n  return;\n}\nmaze[r][c] = false;\nallPath(p + \'D\', maze, ___, path, step + 1);\nmaze[r][c] = true;\npath[r][c] = 0;',
      'hardTemplate':
          'void allPath(String p, boolean[][] m, int r, int c, int[][] pM, int s) {\n  if (r == m.length-1 && c == m[0].length-1) { pM[r][c] = s; print(pM); return; }\n  if (!m[r][c]) return;\n  m[r][c] = false;\n  pM[r][c] = ___ ;\n  // recursions ...\n  m[r][c] = true;\n  pM[r][c] = ___ ;\n}',
      'blocks': {'a': 'r + 1', 'b': 'step', 'c': '0'},
      'hardBlocks': {'a': 's', 'b': '0', 'c': 's + 1'},
      'solution': {'1': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p7',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'N-Queens Count',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Return the number of ways to place N queens on an NxN board.',
      'hint': 'Check column and diagonals for safety.',
      'codeTemplate':
          'int queens(boolean[][] board, int row) {\n  if (row == board.length) return 1;\n  int count = 0;\n  for (int col = 0; col < board.length; col++) {\n    if (isSafe(board, row, col)) {\n      board[row][col] = true;\n      count += queens(board, ___);\n      board[row][col] = false;\n    }\n  }\n  return count;\n}',
      'hardTemplate':
          'int solve(boolean[][] b, int r) {\n  if (r == b.length) return 1;\n  int c = 0;\n  for (int i = 0; i < b.length; i++) {\n    if (isSafe(b, r, i)) {\n      ___ ;\n      c += solve(b, ___);\n      ___ ;\n    }\n  }\n  return c;\n}',
      'blocks': {'a': 'row + 1', 'b': 'row', 'c': '1'},
      'hardBlocks': {
        'a': 'b[r][i] = true',
        'b': 'r + 1',
        'c': 'b[r][i] = false',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z11_p8',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'N-Queens Safety Check',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Implement the `isSafe` check for N-Queens diagonally.',
      'hint': 'Check vertical row, left diagonal, and right diagonal.',
      'codeTemplate':
          '// Right Diagonal\nint maxRight = Math.min(row, board.length - col - 1);\nfor (int i = 1; i <= maxRight; i++) {\n  if (___[row - i][col + i]) return false;\n}',
      'hardTemplate':
          'boolean isSafe(boolean[][] b, int r, int c) {\n  for(int i=0; i<r; i++) if(b[i][c]) return false;\n  int l = Math.min(r, c);\n  for(int i=1; i<=l; i++) if(___) return false;\n  int ri = Math.min(r, b.length-c-1);\n  for(int i=1; i<=ri; i++) if(___) return false;\n  return true;\n}',
      'blocks': {'a': 'board', 'b': 'b', 'c': 'row'},
      'hardBlocks': {
        'a': 'b[r-i][c-i]',
        'b': 'b[r-i][c+i]',
        'c': 'b[r+i][c+i]',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p9',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'N-Knights',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Place N knights such that no two attack each other.',
      'hint': 'Similar to Queens, check 8 possible "L" moves.',
      'codeTemplate':
          'if (col == board.length) {\n  knights(board, row + 1, 0, knights);\n  return;\n}\nif (isSafe(board, row, col)) {\n  board[row][col] = true;\n  knights(board, row, col + 1, ___ - 1);\n  board[row][col] = false;\n}',
      'hardTemplate':
          'void k(boolean[][] b, int r, int c, int n) {\n  if (n == 0) { display(b); return; }\n  if (r == b.length-1 && c == b.length) return;\n  if (c == b.length) { k(b, r+1, 0, n); return; }\n  if (isSafe(b, r, c)) {\n    b[r][c] = true;\n    k(b, r, c + 1, ___);\n    ___ ;\n  }\n  k(b, r, c + 1, n);\n}',
      'blocks': {'a': 'knights', 'b': 'row', 'c': 'col'},
      'hardBlocks': {'a': 'n - 1', 'b': 'b[r][c] = false', 'c': 'n'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p10',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'Sudoku Solver (isValid)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Implement the logic to check if a number can be placed in a 9x9 Sudoku cell.',
      'hint': 'Check row, column, and the 3x3 sub-grid.',
      'codeTemplate':
          'int rowStart = row - row % 3;\nint colStart = col - col % 3;\nfor (int r = rowStart; r < rowStart + 3; r++) {\n  for (int c = colStart; c < colStart + 3; c++) {\n    if (board[r][c] == (char)(num + \'0\')) return ___;\n  }\n}',
      'hardTemplate':
          'boolean isSafe(int[][] b, int r, int c, int n) {\n  for(int i=0; i<9; i++) if(b[r][i]==n || b[i][c]==n) return false;\n  int rs = r - r%3, cs = c - c%3;\n  for(int i=rs; i<rs+3; i++) {\n    for(int j=cs; j<cs+3; j++) if(___) return false;\n  }\n  return true;\n}',
      'blocks': {'a': 'false', 'b': 'true', 'c': 'num'},
      'hardBlocks': {'a': 'b[i][j] == n', 'b': 'b[r][c] == n', 'c': 'n == 9'},
      'solution': {'1': 'a'},
    },

    {
      'id': 'z11_p11',
      'zone': 11,
      'subcategory': 'Maze with Obstacles',
      'title': 'Maze Obstacles (Returning List)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find all paths in a maze with obstacles and return them as a List of strings.',
      'hint': 'Combine results from horizontal and vertical calls.',
      'codeTemplate':
          'List<String> pathList(String p, boolean[][] m, int r, int c) {\n  if (r == m.length - 1 && c == m[0].length - 1) {\n    List<String> list = new ArrayList<>();\n    list.add(p);\n    return list;\n  }\n  List<String> ans = new ArrayList<>();\n  if (!m[r][c]) return ans;\n  if (r < m.length - 1) ans.addAll(pathList(p + \'D\', m, r + 1, c));\n  if (c < m[0].length - 1) ans.addAll(___(p + \'R\', m, r, c + 1));\n  return ans;\n}',
      'hardTemplate':
          'List<String> solve(String p, boolean[][] m, int r, int c) {\n  if (r == m.length-1 && c == m[0].length-1) return List.of(p);\n  if (___) return new ArrayList<>();\n  List<String> list = new ArrayList<>();\n  if (r < m.length-1) list.addAll(solve(p + \'D\', m, r + 1, c));\n  if (c < m[0].length-1) list.addAll(___);\n  return list;\n}',
      'blocks': {'a': 'pathList', 'b': 'ans', 'c': 'return'},
      'hardBlocks': {
        'a': '!m[r][c]',
        'b': 'solve(p + \'R\', m, r, c + 1)',
        'c': 'true',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p12',
      'zone': 11,
      'subcategory': 'All Paths',
      'title': 'Rat in a Maze - All Directions',
      'difficulty': 'Hard',
      'xp': 200,
      'description':
          'Rat can move in all 4 directions (U, D, L, R). Find if it can reach the target.',
      'hint': 'Backtrack by marking the path as visited and unmarking it.',
      'codeTemplate':
          'm[r][c] = 0;\nif (r < n - 1) solve(r + 1, c, m, n, p + \'D\');\nif (c < n - 1) solve(r, c + 1, m, n, p + \'R\');\nif (r > 0) solve(r - 1, c, m, n, p + \'U\');\nif (c > 0) solve(r, c - 1, m, n, p + \'L\');\n___ = 1;',
      'hardTemplate':
          'void solve(int r, int c, int[][] m, int n, String p) {\n  if (r == n - 1 && c == n - 1) { ans.add(p); return; }\n  if (m[r][c] == 0) return;\n  m[r][c] = ___ ;\n  // D, L, R, U moves ...\n  m[r][c] = ___ ;\n}',
      'blocks': {'a': 'm[r][c]', 'b': 'n', 'c': 'p'},
      'hardBlocks': {'a': '0', 'b': '1', 'c': 'm[r][c]'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p13',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'M-Coloring Problem',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Check if it is possible to color a graph with M colors such that no two adjacent vertices have the same color.',
      'hint': 'Try every color for a vertex and check safety.',
      'codeTemplate':
          'for (int c = 1; c <= m; c++) {\n  if (isSafe(node, c, color, adj)) {\n    color[node] = c;\n    if (solve(node + 1, color, m, n, adj)) return ___;\n    color[node] = 0;\n  }\n}',
      'hardTemplate':
          'boolean graphColoring(boolean[][] adj, int m, int n, int node, int[] col) {\n  if (node == n) return true;\n  for (int i = 1; i <= m; i++) {\n    if (isSafe(node, adj, col, i)) {\n      col[node] = ___ ;\n      if (graphColoring(adj, m, n, node + 1, col)) return true;\n      col[node] = ___ ;\n    }\n  }\n  return false;\n}',
      'blocks': {'a': 'true', 'b': 'false', 'c': 'node'},
      'hardBlocks': {'a': 'i', 'b': '0', 'c': 'col'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p14',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'Tug of War (logic)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Divide an array into two subsets of equal size such that the absolute difference between their sums is minimized.',
      'hint':
          'At each element, either include it in current subset or exclude it.',
      'codeTemplate':
          'void solve(int i, int currSum, int count) {\n  if (i == arr.length) return;\n  if (count == n/2) {\n    minDiff = Math.min(minDiff, Math.abs(totalSum/2 - currSum));\n    return;\n  }\n  solve(i + 1, currSum + arr[i], count + 1);\n  solve(i + 1, currSum, ___);\n}',
      'hardTemplate':
          'void findMin(int i, int s, int c) {\n  if (c == n/2) {\n    min = Math.min(min, Math.abs(total - 2*s));\n    return;\n  }\n  if (i == n) return;\n  findMin(i + 1, s + arr[i], ___ );\n  findMin(i + 1, s, ___ );\n}',
      'blocks': {'a': 'count', 'b': 'count + 1', 'c': 'i'},
      'hardBlocks': {'a': 'c + 1', 'b': 'c', 'c': 'i'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p15',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'Knight\'s Tour (isPossible)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Find if a knight can visit every cell of a board exactly once.',
      'hint': 'Try all 8 knight moves and backtrack if invalid.',
      'codeTemplate':
          'for (int i = 0; i < 8; i++) {\n  int nextX = x + moveX[i];\n  int nextY = y + moveY[i];\n  if (isSafe(nextX, nextY, board)) {\n    board[nextX][nextY] = step;\n    if (solve(nextX, nextY, step + 1, board)) return true;\n    board[nextX][nextY] = ___;\n  }\n}',
      'hardTemplate':
          'boolean solve(int x, int y, int s, int[][] b) {\n  if (s == N * N) return true;\n  for (int i = 0; i < 8; i++) {\n    int nx = x + dx[i], ny = y + dy[i];\n    if (isSafe(nx, ny, b)) {\n      b[nx][ny] = s;\n      if (solve(nx, ny, s + 1, b)) ___ ;\n      b[nx][ny] = ___ ;\n    }\n  }\n  return false;\n}',
      'blocks': {'a': '-1', 'b': '0', 'c': 'step'},
      'hardBlocks': {'a': 'return true', 'b': '-1', 'c': 's'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p16',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'Hamiltonian Path intro',
      'difficulty': 'Hard',
      'xp': 200,
      'description':
          'Check if there exists a path that visits every vertex exactly once in a graph.',
      'hint': 'Start from every vertex and use backtracking to explore paths.',
      'codeTemplate':
          'visited[v] = true;\nfor (int next : adj[v]) {\n  if (!visited[next]) {\n    if (solve(next, count + 1)) return true;\n  }\n}\nvisited[v] = ___ ;',
      'hardTemplate':
          'boolean hasPath(int v, int c) {\n  if (c == V) return true;\n  visited[v] = ___ ;\n  for (int i = 0; i < V; i++) {\n    if (adj[v][i] && !visited[i]) {\n      if (hasPath(i, c + 1)) return true;\n    }\n  }\n  visited[v] = ___ ;\n  return false;\n}',
      'blocks': {'a': 'false', 'b': 'true', 'c': 'count'},
      'hardBlocks': {'a': 'true', 'b': 'false', 'c': 'c'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p17',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'Word Break II (logic)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Given a string and a dictionary, return all possible space-separated sentences.',
      'hint': 'Check every prefix in dictionary and recurse for suffix.',
      'codeTemplate':
          'for (int i = 1; i <= s.length(); i++) {\n  String prefix = s.substring(0, i);\n  if (dict.contains(prefix)) {\n    solve(s.substring(i), res + prefix + ___);\n  }\n}',
      'hardTemplate':
          'void wordBreak(String s, String out) {\n  if (s.isEmpty()) { ans.add(out.trim()); return; }\n  for (int i = 1; i <= s.length(); i++) {\n    String sub = s.substring(0, i);\n    if (dict.contains(sub)) {\n      ___(s.substring(i), out + " " + sub);\n    }\n  }\n}',
      'blocks': {'a': '" "', 'b': '""', 'c': 's'},
      'hardBlocks': {'a': 'wordBreak', 'b': 'solve', 'c': 'sub'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p18',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'Sudoku Solver (Loop)',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Implement the main recursive loop for Sudoku Solver.',
      'hint': 'Find empty cell, try 1-9, recurse.',
      'codeTemplate':
          'for (int i = 0; i < 9; i++) {\n  for (int j = 0; j < 9; j++) {\n    if (board[i][j] == 0) {\n      for (int n = 1; n <= 9; n++) {\n        if (isSafe(i, j, n)) {\n          board[i][j] = n;\n          if (solve()) return true;\n          board[i][j] = ___;\n        }\n      }\n      return false;\n    }\n  }\n}\nreturn true;',
      'hardTemplate':
          'boolean solve() {\n  for (int i = 0; i < 9; i++) {\n    for (int j = 0; j < 9; j++) {\n      if (board[i][j] == 0) {\n        for (int v = 1; v <= 9; v++) {\n          if (isSafe(i, j, v)) {\n            board[i][j] = v;\n            if (solve()) return true;\n            ___ ;\n          }\n        }\n        return false;\n      }\n    }\n  }\n  return true;\n}',
      'blocks': {'a': '0', 'b': 'n', 'c': '-1'},
      'hardBlocks': {'a': 'board[i][j] = 0', 'b': 'return false', 'c': 'break'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p19',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'Cryptarithmetic Puzzle',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Assign digits to letters such that the equation (SEND + MORE = MONEY) holds true.',
      'hint': 'Backtrack through possible digit assignments (0-9).',
      'codeTemplate':
          'if (idx == uniqueStr.length()) {\n  if (isValidAssignment()) return true;\n  return false;\n}\nfor (int d = 0; d < 10; d++) {\n  if (!used[d]) {\n    used[d] = true;\n    charToDigit[uniqueStr.charAt(idx) - \'A\'] = d;\n    if (solve(idx + 1)) return true;\n    ___ ;\n  }\n}',
      'hardTemplate':
          'boolean solve(int i) {\n  if (i == s.length()) return check();\n  for (int d = 0; d < 10; d++) {\n    if (!used[d]) {\n      used[d] = true;\n      map[s.charAt(i)] = d;\n      if (solve(i + 1)) ___ ;\n      used[d] = ___ ;\n    }\n  }\n  return false;\n}',
      'blocks': {'a': 'used[d] = false', 'b': 'return', 'c': 'used[d] = true'},
      'hardBlocks': {'a': 'return true', 'b': 'false', 'c': 'true'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p20',
      'zone': 11,
      'subcategory': 'Classics',
      'title': 'Subset Sum (Backtracking)',
      'difficulty': 'Hard',
      'xp': 200,
      'description':
          'Find if there exists a subset with a given sum using backtracking.',
      'hint': 'State: (index, currentSum). Try including and excluding.',
      'codeTemplate':
          'if (target == 0) return true;\nif (i == n || target < 0) return false;\nif (solve(i + 1, target - arr[i])) return true;\nreturn solve(i + 1, ___);',
      'hardTemplate':
          'boolean subset(int i, int t) {\n  if (t == 0) return true;\n  if (i == n) return false;\n  return subset(i+1, t - arr[i]) || ___ ;\n}',
      'blocks': {'a': 'target', 'b': '0', 'c': 'target + arr[i]'},
      'hardBlocks': {'a': 'subset(i+1, t)', 'b': 'subset(i, t)', 'c': 'true'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    {
      'id': 'z11_p21',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Palindrome Partitioning (LC 131)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Partition a string such that every substring of the partition is a palindrome.',
      'hint':
          'At each step, check if prefix is palindrome, then recurse for suffix.',
      'codeTemplate':
          'for (int i = 1; i <= s.length(); i++) {\n  if (isPalindrome(s, 0, i - 1)) {\n    curr.add(s.substring(0, i));\n    solve(s.substring(i), curr);\n    ___ ;\n  }\n}',
      'hardTemplate':
          'void partition(int idx, String s, List<String> p) {\n  if (idx == s.length()) { ans.add(new ArrayList<>(p)); return; }\n  for (int i = idx; i < s.length(); ++i) {\n    if (isPalin(s, idx, i)) {\n      p.add(s.substring(idx, i + 1));\n      partition(i + 1, s, p);\n      ___ ;\n    }\n  }\n}',
      'blocks': {
        'a': 'curr.remove(curr.size() - 1)',
        'b': 'return',
        'c': 'curr.add()',
      },
      'hardBlocks': {
        'a': 'p.remove(p.size() - 1)',
        'b': 'p.clear()',
        'c': 'return',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p22',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Word Search (LC 79)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Check if a word exists in a 2D grid of characters.',
      'hint':
          'Standard backtracking in 4 directions. Mark visited by changing char temporarily.',
      'codeTemplate':
          'char temp = board[r][c];\nboard[r][c] = \' \';\nboolean found = solve(r + 1, c, i + 1) || solve(r - 1, c, i + 1) ||\n                solve(r, c + 1, i + 1) || solve(r, c - 1, i + 1);\nboard[r][c] = ___ ;\nreturn found;',
      'hardTemplate':
          'boolean dfs(char[][] b, String w, int r, int c, int i) {\n  if (i == w.length()) return true;\n  if (r < 0 || c < 0 || r >= b.length || c >= b[0].length || b[r][c] != w.charAt(i)) return false;\n  char t = b[r][c];\n  b[r][c] = \'*\';\n  boolean res = dfs(b, w, r+1, c, i+1) || dfs(b, w, r-1, c, i+1) || ___ ;\n  b[r][c] = t;\n  return res;\n}',
      'blocks': {'a': 'temp', 'b': 'null', 'c': 'found'},
      'hardBlocks': {
        'a': 'dfs(b, w, r, c+1, i+1) || dfs(b, w, r, c-1, i+1)',
        'b': 'true',
        'c': 'false',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p23',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Combination Sum II (LC 40)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find all unique combinations in candidates where the candidate numbers sum to target (each number used once).',
      'hint': 'Sort and skip duplicates in for loop.',
      'codeTemplate':
          'for (int i = idx; i < candidates.length; i++) {\n  if (i > idx && candidates[i] == candidates[i - 1]) ___ ;\n  curr.add(candidates[i]);\n  solve(i + 1, target - candidates[i], curr);\n  curr.remove(curr.size() - 1);\n}',
      'hardTemplate':
          'void find(int idx, int t, List<Integer> ds) {\n  if (t == 0) { ans.add(new ArrayList<>(ds)); return; }\n  for (int i = idx; i < arr.length; i++) {\n    if (i > idx && arr[i] == arr[i-1]) ___ ;\n    if (arr[i] > t) ___ ;\n    ds.add(arr[i]);\n    find(i + 1, t - arr[i], ds);\n    ds.remove(ds.size() - 1);\n  }\n}',
      'blocks': {'a': 'continue', 'b': 'break', 'c': 'return'},
      'hardBlocks': {'a': 'continue', 'b': 'break', 'c': 'return'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p24',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Permutations II (LC 47)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Given a collection of numbers that might contain duplicates, return all possible unique permutations.',
      'hint':
          'Use a frequency map or sort and skip duplicates using visited array.',
      'codeTemplate':
          'if (i > 0 && nums[i] == nums[i - 1] && !___) continue;\nif (visited[i]) continue;\nvisited[i] = true;\ncurr.add(nums[i]);\nbacktrack(curr);\nvisited[i] = false;\ncurr.remove(curr.size() - 1);',
      'hardTemplate':
          'void backtrack(List<Integer> ds, boolean[] v) {\n  if (ds.size() == nums.length) { ans.add(new ArrayList<>(ds)); return; }\n  for (int i = 0; i < nums.length; i++) {\n    if (v[i] || (i > 0 && nums[i] == nums[i-1] && ___)) continue;\n    v[i] = true;\n    ds.add(nums[i]);\n    backtrack(ds, v);\n    v[i] = false;\n    ___ ;\n  }\n}',
      'blocks': {'a': 'visited[i-1]', 'b': '!visited[i-1]', 'c': 'visited[i]'},
      'hardBlocks': {
        'a': '!v[i-1]',
        'b': 'ds.remove(ds.size()-1)',
        'c': 'v[i-1]',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z11_p25',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'N-Queens II (LC 52)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'The n-queens puzzle is the problem of placing n queens on an n x n chessboard. Return the number of distinct solutions.',
      'hint':
          'Exactly like N-Queens but increment a global counter or return sum.',
      'codeTemplate':
          'if (row == n) return 1;\nint solutions = 0;\nfor (int col = 0; col < n; col++) {\n  if (isSafe(row, col)) {\n    place(row, col);\n    solutions += solve(row + 1);\n    ___ (row, col);\n  }\n}\nreturn solutions;',
      'hardTemplate':
          'int totalNQueens(int n) {\n  return backtrack(0, new boolean[n], new boolean[2*n-1], new boolean[2*n-1], n);\n}\nint backtrack(int r, boolean[] c, boolean[] d1, boolean[] d2, int n) {\n  if (r == n) return 1;\n  int count = 0;\n  for (int i = 0; i < n; i++) {\n    int id1 = r - i + n - 1, id2 = r + i;\n    if (c[i] || d1[id1] || d2[id2]) continue;\n    c[i] = d1[id1] = d2[id2] = true;\n    count += backtrack(___, c, d1, d2, n);\n    c[i] = d1[id1] = d2[id2] = false;\n  }\n  return count;\n}',
      'blocks': {'a': 'remove', 'b': 'add', 'c': 'reset'},
      'hardBlocks': {'a': 'r + 1', 'b': 'r', 'c': 'i'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p26',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Path with Max Gold (LC 1219)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find the maximum amount of gold you can collect starting from any cell with gold.',
      'hint':
          'Standard DFS with backtracking from every possible starting cell.',
      'codeTemplate':
          'int gold = grid[r][c];\ngrid[r][c] = 0;\nint max = 0;\nmax = Math.max(max, solve(r + 1, c));\nmax = Math.max(max, solve(r - 1, c));\nmax = Math.max(max, solve(r, c + 1));\nmax = Math.max(max, solve(r, c - 1));\ngrid[r][c] = ___ ;\nreturn gold + max;',
      'hardTemplate':
          'int dfs(int[][] g, int r, int c) {\n  if (r < 0 || c < 0 || r >= g.length || c >= g[0].length || g[r][c] == 0) return 0;\n  int v = g[r][c];\n  g[r][c] = 0;\n  int m = 0;\n  for(int i=0; i<4; i++) m = Math.max(m, dfs(g, r+dr[i], c+dc[i]));\n  ___ ;\n  return v + m;\n}',
      'blocks': {'a': 'gold', 'b': '0', 'c': 'max'},
      'hardBlocks': {'a': 'g[r][c] = v', 'b': 'return m', 'c': 'break'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p27',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Restore IP Addresses (LC 93)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Given a string containing only digits, restore it by returning all possible valid IP address combinations.',
      'hint':
          'Try prefixes of size 1, 2, and 3. Check if valid (0-255, no leading zero).',
      'codeTemplate':
          'for (int len = 1; len <= 3; len++) {\n  if (idx + len > s.length()) break;\n  String segment = s.substring(idx, idx + len);\n  if (isValid(segment)) {\n    solve(idx + len, parts + 1, curr + segment + (parts == 3 ? "" : "."));\n  }\n}',
      'hardTemplate':
          'void solve(int i, int p, String res) {\n  if (p == 4) {\n    if (i == s.length()) ans.add(res.substring(0, res.length()-1));\n    return;\n  }\n  for (int j = 1; j <= 3; j++) {\n    if (i + j <= s.length()) {\n      String sub = s.substring(i, i + j);\n      if (___) solve(i + j, p + 1, res + sub + ".");\n    }\n  }\n}',
      'blocks': {'a': '.', 'b': ':', 'c': ','},
      'hardBlocks': {'a': 'isValid(sub)', 'b': 'true', 'c': 'sub.length() < 4'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p28',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Beautiful Arrangement (LC 526)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Suppose you have n integers labeled 1 to n. A permutation is beautiful if for every indexed position i, either perm[i] is divisible by i or i is divisible by perm[i].',
      'hint':
          'Backtrack through positions 1 to n, trying available numbers that satisfy the condition.',
      'codeTemplate':
          'void solve(int pos, boolean[] used, int n) {\n  if (pos > n) { count++; return; }\n  for (int i = 1; i <= n; i++) {\n    if (!used[i] && (___ || ___)) {\n      used[i] = true;\n      solve(pos + 1, used, n);\n      used[i] = false;\n    }\n  }\n}',
      'hardTemplate':
          'void count(int n, int p, boolean[] v) {\n  if (p > n) { ans++; return; }\n  for (int i = 1; i <= n; i++) {\n    if (!v[i] && (i % p == 0 || p % i == 0)) {\n      v[i] = true;\n      count(n, p + 1, v);\n      ___ ;\n    }\n  }\n}',
      'blocks': {'a': 'i % pos == 0', 'b': 'pos % i == 0', 'c': 'i == pos'},
      'hardBlocks': {'a': 'v[i] = false', 'b': 'return', 'c': 'v[i] = true'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p29',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Matchsticks to Square (LC 473)',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Can you form a square using all the given matchsticks?',
      'hint': 'Calculate side length (total/4). Backtrace to fill 4 sides.',
      'codeTemplate':
          'for (int i = 0; i < 4; i++) {\n  if (sides[i] + matchsticks[idx] <= target) {\n    sides[i] += matchsticks[idx];\n    if (solve(idx + 1)) return true;\n    sides[i] -= ___ ;\n  }\n}',
      'hardTemplate':
          'boolean solve(int i) {\n  if (i == m.length) return true;\n  for (int j = 0; j < 4; j++) {\n    if (s[j] + m[i] <= t) {\n      s[j] += m[i];\n      if (solve(i + 1)) return true;\n      ___ ;\n    }\n  }\n  return false;\n}',
      'blocks': {'a': 'matchsticks[idx]', 'b': 'target', 'c': '0'},
      'hardBlocks': {'a': 's[j] -= m[i]', 'b': 'return false', 'c': 's[j] = 0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z11_p30',
      'zone': 11,
      'subcategory': 'LC Mix',
      'title': 'Word Search II (LC 212 - logic)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Given an m x n grid of characters and a list of strings words, return all words on the board.',
      'hint':
          'Backtracking + Trie. Use Trie to quickly check if a prefix exists.',
      'codeTemplate':
          'TrieNode node = root.children[board[r][c] - \'a\'];\nif (node == null) return;\nif (node.word != null) {\n  res.add(node.word);\n  node.word = ___ ;\n}\nboard[r][c] = \' \';\ndfs(r + 1, c, node); ...\nboard[r][c] = char;',
      'hardTemplate':
          'void dfs(int r, int c, Node curr) {\n  char ch = b[r][c];\n  if (ch == \'#\' || curr.child[ch-\'a\'] == null) return;\n  curr = curr.child[ch-\'a\'];\n  if (curr.word != null) {\n    ans.add(curr.word);\n    ___ ;\n  }\n  b[r][c] = \'#\';\n  // search directions ...\n  b[r][c] = ch;\n}',
      'blocks': {'a': 'null', 'b': '""', 'c': 'node.word'},
      'hardBlocks': {
        'a': 'curr.word = null',
        'b': 'return',
        'c': 'ans.clear()',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    // ── ZONE 13: Linked List ──
    {
      'id': 'z13_p1',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Linked List Node Class',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Define a simple Singly Linked List Node class with int value and next pointer.',
      'hint': 'A node has a value and a reference to the next Node.',
      'codeTemplate':
          'class Node {\n  int value;\n  Node next;\n  public Node(int value) {\n    this.value = value;\n    this.___ = null;\n  }\n}',
      'hardTemplate':
          'class Node {\n  int val;\n  Node next;\n  public Node(int val) {\n    ___ = val;\n    ___ = null;\n  }\n}',
      'blocks': {'a': 'next', 'b': 'this', 'c': 'Node'},
      'hardBlocks': {'a': 'this.val', 'b': 'this.next', 'c': 'Node'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p2',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Insert at Head',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Insert a new node at the beginning of the list.',
      'hint':
          'New node\'s next should point to the old head, then update head.',
      'codeTemplate':
          'public void insertFirst(int val) {\n  Node node = new Node(val);\n  node.next = ___;\n  head = ___;\n}',
      'hardTemplate':
          'public void insertFirst(int val) {\n  Node node = new Node(val);\n  ___ = head;\n  head = ___;\n  if (tail == null) tail = head;\n}',
      'blocks': {'a': 'head', 'b': 'node', 'c': 'null'},
      'hardBlocks': {'a': 'node.next', 'b': 'node', 'c': 'tail'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p3',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Insert at Tail',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Insert a new node at the end of the list.',
      'hint': 'If tail is null, insert at first; else update tail.next.',
      'codeTemplate':
          'public void insertLast(int val) {\n  if (tail == null) {\n    insertFirst(val);\n    return;\n  }\n  Node node = new Node(val);\n  tail.next = ___;\n  tail = ___;\n}',
      'hardTemplate':
          'public void insertLast(int val) {\n  if (tail == null) { insertFirst(val); return; }\n  Node node = new Node(val);\n  ___ = node;\n  tail = ___ ;\n}',
      'blocks': {'a': 'node', 'b': 'tail', 'c': 'null'},
      'hardBlocks': {'a': 'tail.next', 'b': 'node', 'c': 'tail'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p4',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Insert at Index',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Insert a node at a given index (0-based).',
      'hint': 'Traverse to index-1, then adjust pointers.',
      'codeTemplate':
          'Node temp = head;\nfor (int i = 1; i < index; i++) {\n  temp = ___ ;\n}\nNode node = new Node(val, temp.next);\ntemp.next = ___ ;',
      'hardTemplate':
          'public void insert(int val, int index) {\n  if (index == 0) { insertFirst(val); return; }\n  Node temp = head;\n  for(int i=1; i<index; i++) temp = ___ ;\n  Node node = new Node(val, ___ );\n  temp.next = ___ ;\n}',
      'blocks': {'a': 'temp.next', 'b': 'node', 'c': 'head'},
      'hardBlocks': {'a': 'temp.next', 'b': 'temp.next', 'c': 'node'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p5',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Delete at Head',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Delete the first node and return its value.',
      'hint': 'Move head to head.next.',
      'codeTemplate':
          'public int deleteFirst() {\n  int val = head.value;\n  head = ___ ;\n  if (head == null) tail = null;\n  return ___ ;\n}',
      'hardTemplate':
          'public int deleteFirst() {\n  if (head == null) return -1;\n  int val = head.val;\n  head = ___ ;\n  if (___ == null) tail = null;\n  return val;\n}',
      'blocks': {'a': 'head.next', 'b': 'val', 'c': 'head'},
      'hardBlocks': {'a': 'head.next', 'b': 'head', 'c': 'tail'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p6',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Delete at Tail',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Delete the last node. Requires traversing to the second-to-last node.',
      'hint': 'Find second last node (index size-2).',
      'codeTemplate':
          'Node secondLast = get(size - 2);\nint val = tail.value;\ntail = ___ ;\ntail.next = ___ ;\nreturn val;',
      'hardTemplate':
          'public int deleteLast() {\n  if (size <= 1) return deleteFirst();\n  Node secondLast = get(___);\n  int val = tail.val;\n  tail = ___ ;\n  tail.next = ___ ;\n  return val;\n}',
      'blocks': {'a': 'secondLast', 'b': 'null', 'c': 'head'},
      'hardBlocks': {'a': 'size - 2', 'b': 'secondLast', 'c': 'null'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p7',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Delete at Index',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Delete a node at a specific index.',
      'hint': 'Point index-1 node directly to index+1 node.',
      'codeTemplate':
          'Node prev = get(index - 1);\nint val = prev.next.value;\nprev.next = ___ ;\nreturn val;',
      'hardTemplate':
          'public int delete(int index) {\n  if (index == 0) return deleteFirst();\n  if (index == size - 1) return deleteLast();\n  Node prev = get(index - 1);\n  int val = prev.next.val;\n  prev.next = ___ ;\n  return val;\n}',
      'blocks': {'a': 'prev.next.next', 'b': 'prev.next', 'c': 'null'},
      'hardBlocks': {'a': 'prev.next.next', 'b': 'head', 'c': 'tail'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z13_p8',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Find Node by Value',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Search for a node containing a specific value and return it.',
      'hint': 'Iterate through the list until node is null or value matches.',
      'codeTemplate':
          'Node node = head;\nwhile (node != null) {\n  if (node.value == value) return ___ ;\n  node = ___ ;\n}\nreturn null;',
      'hardTemplate':
          'public Node find(int val) {\n  Node n = head;\n  while (n != null) {\n    if (n.val == val) ___ ;\n    n = ___ ;\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'node', 'b': 'node.next', 'c': 'null'},
      'hardBlocks': {'a': 'return n', 'b': 'n.next', 'c': 'null'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p9',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Get Node at Index',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Return the node reference at a given index.',
      'hint': 'Standard for loop from 0 to index.',
      'codeTemplate':
          'Node node = head;\nfor (int i = 0; i < index; i++) {\n  node = ___ ;\n}\nreturn node;',
      'hardTemplate':
          'public Node get(int index) {\n  Node node = head;\n  for (int i = 0; i < index; i++) {\n    node = ___ ;\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'node.next', 'b': 'node', 'c': 'null'},
      'hardBlocks': {'a': 'node.next', 'b': 'node', 'c': 'null'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p10',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Doubly LL Node',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Define a Doubly Linked List Node with next and prev pointers.',
      'hint': 'Add a `Node prev;` field to the Node class.',
      'codeTemplate':
          'class Node {\n  int val;\n  Node next;\n  Node ___ ;\n  public Node(int val) {\n    this.val = val;\n  }\n}',
      'hardTemplate':
          'class Node {\n  int val;\n  Node next, ___ ;\n  public Node(int val) {\n    this.val = val;\n  }\n  public Node(int val, Node next, Node prev) {\n    this.val = val;\n    this.next = next;\n    this.prev = ___ ;\n  }\n}',
      'blocks': {'a': 'prev', 'b': 'before', 'c': 'parent'},
      'hardBlocks': {'a': 'prev', 'b': 'prev', 'c': 'next'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p11',
      'zone': 13,
      'subcategory': 'Cycle Detection',
      'title': 'Linked List Cycle (LC 141)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Determine if a linked list has a cycle in it using two pointers.',
      'hint': 'Use Floyd\'s Cycle Detection (Slow and Fast pointers).',
      'codeTemplate':
          'Node slow = head;\nNode fast = head;\nwhile (fast != null && fast.next != null) {\n  slow = slow.next;\n  fast = ___ ;\n  if (slow == fast) return ___ ;\n}\nreturn false;',
      'hardTemplate':
          'public boolean hasCycle(Node head) {\n  Node s = head, f = head;\n  while (f != null && f.next != null) {\n    s = s.next;\n    f = ___ ;\n    if (s == f) ___ ;\n  }\n  return false;\n}',
      'blocks': {'a': 'fast.next.next', 'b': 'true', 'c': 'false'},
      'hardBlocks': {'a': 'f.next.next', 'b': 'return true', 'c': 'break'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p12',
      'zone': 13,
      'subcategory': 'Cycle Detection',
      'title': 'Cycle Length',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Calculate the length of the cycle if one exists.',
      'hint':
          'Once pointers meet, keep fast fixed and move slow until it hits fast again.',
      'codeTemplate':
          'int length = 0;\ndo {\n  slow = slow.next;\n  length++;\n} while (___ != ___);',
      'hardTemplate':
          'int findLength(Node slow) {\n  Node temp = slow;\n  int l = 0;\n  do {\n    ___ ;\n    l++;\n  } while (___ != ___ );\n  return l;\n}',
      'blocks': {'a': 'slow', 'b': 'fast', 'c': 'head'},
      'hardBlocks': {'a': 'temp = temp.next', 'b': 'temp', 'c': 'slow'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p13',
      'zone': 13,
      'subcategory': 'Cycle Detection',
      'title': 'Happy Number (LL Cycle logic)',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Check if a number is happy (eventually reaches 1) using cycle detection logic.',
      'hint':
          'Treat the number transformations as a linked list and detect cycles.',
      'codeTemplate':
          'int slow = n;\nint fast = n;\ndo {\n  slow = findSquareSum(slow);\n  fast = findSquareSum(___ );\n} while (slow != fast);\nreturn slow == 1;',
      'hardTemplate':
          'public boolean isHappy(int n) {\n  int s = n, f = n;\n  do {\n    s = fsq(s);\n    f = fsq(fsq(f));\n  } while (___ != ___ );\n  return ___ == 1;\n}',
      'blocks': {'a': 'findSquareSum(fast)', 'b': 'fast', 'c': '1'},
      'hardBlocks': {'a': 's', 'b': 'f', 'c': 's'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p14',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Middle of LL (LC 876)',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Find the middle node of a linked list. If there are two middle nodes, return the second middle node.',
      'hint': 'Move slow by 1 step and fast by 2 steps.',
      'codeTemplate':
          'Node slow = head;\nNode fast = head;\nwhile (fast != null && ___ != null) {\n  slow = slow.next;\n  fast = ___ ;\n}\nreturn slow;',
      'hardTemplate':
          'public Node middleNode(Node head) {\n  Node s = head, f = head;\n  while (___ && ___) {\n    s = s.next;\n    f = f.next.next;\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'fast.next', 'b': 'fast.next.next', 'c': 'slow.next'},
      'hardBlocks': {'a': 'f != null', 'b': 'f.next != null', 'c': 's'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p15',
      'zone': 13,
      'subcategory': 'Reversal',
      'title': 'Iterative Reverse (LC 206)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Reverse a linked list iteratively.',
      'hint': 'Use three pointers: prev, present, next.',
      'codeTemplate':
          'Node prev = null;\nNode present = head;\nNode next = present.next;\nwhile (present != null) {\n  present.next = ___ ;\n  prev = ___ ;\n  present = next;\n  if (next != null) next = next.next;\n}',
      'hardTemplate':
          'public Node reverseList(Node head) {\n  if (head == null) return head;\n  Node p = null, c = head, n = c.next;\n  while (c != null) {\n    c.next = ___ ;\n    p = ___ ;\n    c = n;\n    if (n != null) n = ___ ;\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'prev', 'b': 'present', 'c': 'next'},
      'hardBlocks': {'a': 'p', 'b': 'c', 'c': 'n.next', 'd': 'p'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z13_p16',
      'zone': 13,
      'subcategory': 'Reversal',
      'title': 'Recursive Reverse',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Reverse a linked list using recursion.',
      'hint':
          'Base case: if head/next is null, return head. Reverse rest, then fix head.next.next.',
      'codeTemplate':
          'if (node == tail) {\n  head = tail;\n  return;\n}\nreverse(node.next);\ntail.next = ___ ;\ntail = ___ ;\ntail.next = null;',
      'hardTemplate':
          'void reverse(Node node) {\n  if (node.next == null) { head = node; tail = node; return; }\n  reverse(node.next);\n  ___ = node;\n  tail = ___ ;\n  tail.next = null;\n}',
      'blocks': {'a': 'node', 'b': 'null', 'c': 'tail.next'},
      'hardBlocks': {'a': 'tail.next', 'b': 'node', 'c': 'null'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p17',
      'zone': 13,
      'subcategory': 'Reversal',
      'title': 'Reverse Part of List (LC 92)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Reverse a linked list from index left to index right.',
      'hint': 'Skip first left-1 nodes, then reverse right-left+1 nodes.',
      'codeTemplate':
          'Node last = prev;\nNode newEnd = current;\nfor (int i = 0; current != null && i < right - left + 1; i++) {\n  current.next = prev;\n  prev = current;\n  current = next;\n  if (next != null) next = next.next;\n}\nif (last != null) last.next = ___ ;\nelse head = ___ ;',
      'hardTemplate':
          'public Node reverseBetween(Node h, int l, int r) {\n  if (l == r) return h;\n  Node curr = h, p = null;\n  for(int i=0; curr != null && i < l-1; i++) { p = curr; curr = curr.next; }\n  Node start = p, end = curr;\n  for(int i=0; curr != null && i < r-l+1; i++) { \n    Node n = curr.next; curr.next = p; p = curr; curr = n; \n  }\n  if (start != null) start.next = ___ ; else h = ___ ;\n  end.next = ___ ;\n  return h;\n}',
      'blocks': {'a': 'prev', 'b': 'current', 'c': 'null'},
      'hardBlocks': {'a': 'p', 'b': 'p', 'c': 'curr'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p18',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Palindrome LL (LC 234)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Check if a linked list is a palindrome.',
      'hint': 'Find middle, reverse second half, compare halves.',
      'codeTemplate':
          'Node mid = middleNode(head);\nNode headSecondHalf = reverseList(mid);\nNode rerunHead = headSecondHalf;\nwhile (head != null && headSecondHalf != null) {\n  if (head.value != headSecondHalf.value) ___ ;\n  head = head.next;\n  headSecondHalf = headSecondHalf.next;\n}\nreverseList(rerunHead);\nreturn head == null || headSecondHalf == null;',
      'hardTemplate':
          'public boolean isPalin(Node head) {\n  Node mid = getMid(head);\n  Node second = reverse(mid);\n  while (head != null && second != null) {\n    if (head.val != second.val) ___ ;\n    head = head.next;\n    second = second.next;\n  }\n  return true;\n}',
      'blocks': {'a': 'break', 'b': 'return true', 'c': 'return false'},
      'hardBlocks': {'a': 'return false', 'b': 'break', 'c': 'return true'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z13_p19',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Reorder List (LC 143)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Reorder L0 → L1 → … → Ln - 1 → Ln to L0 → Ln → L1 → Ln - 1 → L2 → Ln - 2 → …',
      'hint': 'Find middle, reverse second half, merge in alternate positions.',
      'codeTemplate':
          'Node hs = reverseList(mid);\nNode hf = head;\nwhile (hf != null && hs != null) {\n  Node temp = hf.next;\n  hf.next = ___ ;\n  hf = temp;\n  temp = hs.next;\n  hs.next = ___ ;\n  hs = temp;\n}',
      'hardTemplate':
          'public void reorderList(Node head) {\n  if (head == null || head.next == null) return;\n  Node mid = findMid(head), s = reverse(mid), f = head;\n  while (f != null && s != null) {\n    Node t = f.next; f.next = ___ ; f = t;\n    t = s.next; s.next = ___ ; s = t;\n  }\n  if (f != null) f.next = null;\n}',
      'blocks': {'a': 'hs', 'b': 'hf', 'c': 'null'},
      'hardBlocks': {'a': 's', 'b': 'f', 'c': 'null'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p20',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Reverse Nodes in k-Group (LC 25)',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Reverse the nodes of a linked list k at a time and return its modified list.',
      'hint': 'Exactly like Reverse Between, but in a loop for every k nodes.',
      'codeTemplate':
          'while (true) {\n  Node last = prev;\n  Node newEnd = current;\n  for (int i = 0; current != null && i < k; i++) {\n    current.next = prev;\n    prev = current;\n    current = next;\n    if (next != null) next = next.next;\n  }\n  if (last != null) last.next = ___ ;\n  else head = ___ ;\n  newEnd.next = ___ ;\n  if (current == null) break;\n  prev = newEnd;\n}',
      'hardTemplate':
          'public Node reverseK(Node h, int k) {\n  if (k <= 1 || h == null) return h;\n  Node c = h, p = null;\n  while (true) {\n    Node last = p, end = c;\n    for(int i=0; c!=null && i<k; i++) {\n      Node n = c.next; c.next = p; p = c; c = n;\n    }\n    if (last != null) last.next = ___ ; else h = ___ ;\n    end.next = ___ ;\n    if (c == null) break;\n    p = end;\n  }\n  return h;\n}',
      'blocks': {'a': 'prev', 'b': 'current', 'c': 'null'},
      'hardBlocks': {'a': 'p', 'b': 'p', 'c': 'c'},
      'solution': {'1': 'a', '2': 'a', '3': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p21',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Merge Two Sorted Lists (LC 21)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Merge two sorted linked lists into one sorted list.',
      'hint':
          'Use a dummy node and a tail pointer. Compare heads of both lists.',
      'codeTemplate':
          'Node dummy = new Node();\nNode tail = dummy;\nwhile (list1 != null && list2 != null) {\n  if (list1.val < list2.val) {\n    tail.next = list1;\n    list1 = ___ ;\n  } else {\n    tail.next = list2;\n    list2 = ___ ;\n  }\n  tail = tail.next;\n}\ntail.next = (list1 != null) ? list1 : list2;\nreturn dummy.next;',
      'hardTemplate':
          'public Node merge(Node l1, Node l2) {\n  Node dummy = new Node(), tail = dummy;\n  while (l1 != null && l2 != null) {\n    if (l1.val < l2.val) { tail.next = l1; l1 = ___ ; }\n    else { tail.next = l2; l2 = ___ ; }\n    tail = ___ ;\n  }\n  tail.next = (l1 != null) ? l1 : l2;\n  return ___ ;\n}',
      'blocks': {'a': 'list1.next', 'b': 'list2.next', 'c': 'dummy.next'},
      'hardBlocks': {
        'a': 'l1.next',
        'b': 'l2.next',
        'c': 'tail.next',
        'd': 'dummy.next',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z13_p22',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Sort List (LC 148)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Sort a linked list in O(n log n) time using Merge Sort.',
      'hint':
          'Find middle, split list, recursively sort both halves, and merge.',
      'codeTemplate':
          'if (head == null || head.next == null) return head;\nNode mid = getMid(head);\nNode left = sortList(head);\nNode right = sortList(mid);\nreturn ___ (left, right);',
      'hardTemplate':
          'public Node sortList(Node head) {\n  if (head == null || head.next == null) return head;\n  Node mid = getMid(head);\n  Node left = sortList(head);\n  Node right = sortList(mid);\n  return ___ ;\n}',
      'blocks': {'a': 'merge', 'b': 'sortList', 'c': 'head'},
      'hardBlocks': {'a': 'merge(left, right)', 'b': 'left', 'c': 'right'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z13_p23',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Merge K Sorted Lists',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Merge k sorted linked lists and return it as one sorted list.',
      'hint': 'Divide and conquer (merge pairs) or use a PriorityQueue.',
      'codeTemplate':
          'public Node mergeKLists(Node[] lists) {\n  if (lists.length == 0) return null;\n  return mergeK(lists, 0, ___ );\n}\nNode mergeK(Node[] lists, int si, int ei) {\n  if (si == ei) return lists[si];\n  int mid = si + (ei - si) / 2;\n  Node l1 = mergeK(lists, si, mid);\n  Node l2 = mergeK(lists, mid + 1, ei);\n  return merge(l1, l2);\n}',
      'hardTemplate':
          'Node mergeK(Node[] lists, int si, int ei) {\n  if (si == ei) return lists[si];\n  int mid = si + (ei - si) / 2;\n  Node l1 = mergeK(lists, si, mid);\n  Node l2 = mergeK(lists, mid + 1, ei);\n  return ___ ;\n}',
      'blocks': {'a': 'lists.length - 1', 'b': 'mid', 'c': '0'},
      'hardBlocks': {'a': 'merge(l1, l2)', 'b': 'l1', 'c': 'l2'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z13_p24',
      'zone': 13,
      'subcategory': 'Basics',
      'title': 'Circular LL Node',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Logic for Circular Linked List where the last node points to the head.',
      'hint': 'Update tail.next to head.',
      'codeTemplate':
          'public void insert(int val) {\n  Node node = new Node(val);\n  if (head == null) {\n    head = node;\n    tail = node;\n    return;\n  }\n  tail.next = node;\n  node.next = ___ ;\n  tail = node;\n}',
      'hardTemplate':
          'public void insert(int val) {\n  Node node = new Node(val);\n  if (head == null) { head = node; tail = node; node.next = head; return; }\n  tail.next = node;\n  node.next = ___ ;\n  tail = ___ ;\n}',
      'blocks': {'a': 'head', 'b': 'tail', 'c': 'null'},
      'hardBlocks': {'a': 'head', 'b': 'node', 'c': 'null'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p25',
      'zone': 13,
      'subcategory': 'Reversal',
      'title': 'Reverse Alternative K Nodes',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Reverse every alternate k nodes in a list.',
      'hint': 'Reverse k nodes, then skip k nodes, then repeat.',
      'codeTemplate':
          'for (int i = 0; current != null && i < k; i++) {\n  current.next = prev;\n  prev = current;\n  current = next;\n  if (next != null) next = next.next;\n}\nnewEnd.next = current;\nfor (int i = 0; current != null && i < k; i++) {\n  prev = current;\n  current = ___ ;\n}',
      'hardTemplate':
          'while (curr != null) {\n  Node last = prev, end = curr;\n  for(int i=0; curr!=null && i<k; i++) {\n    Node n = curr.next; curr.next = prev; prev = curr; curr = n;\n  }\n  if (last != null) last.next = p; else head = p;\n  end.next = curr;\n  for(int i=0; curr!=null && i<k; i++) {\n    prev = curr; curr = ___ ;\n  }\n}',
      'blocks': {'a': 'current.next', 'b': 'prev', 'c': 'null'},
      'hardBlocks': {'a': 'curr.next', 'b': 'curr', 'c': 'prev'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z13_p26',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Rotate List (LC 61)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Rotate the list to the right by k places.',
      'hint':
          'Find length, connect tail to head (circular), then break at length - k.',
      'codeTemplate':
          'tail.next = head;\nint skip = length - k % length;\nfor (int i = 0; i < skip; i++) {\n  tail = ___ ;\n}\nhead = ___ ;\ntail.next = null;',
      'hardTemplate':
          'public Node rotateRight(Node head, int k) {\n  if (head == null || k == 0) return head;\n  Node tail = head; int l = 1;\n  while (tail.next != null) { tail = tail.next; l++; }\n  tail.next = head;\n  int s = l - k % l;\n  for(int i=0; i<s; i++) tail = ___ ;\n  head = ___ ;\n  tail.next = null;\n  return head;\n}',
      'blocks': {'a': 'tail.next', 'b': 'head', 'c': 'null'},
      'hardBlocks': {'a': 'tail.next', 'b': 'tail.next', 'c': 'head'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p27',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Remove Nth Node (LC 19)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Remove the nth node from the end of the list.',
      'hint': 'Use two pointers with a gap of n.',
      'codeTemplate':
          'for (int i = 1; i <= n + 1; i++) {\n  fast = fast.next;\n}\nwhile (fast != null) {\n  slow = slow.next;\n  fast = fast.next;\n}\nslow.next = ___ ;',
      'hardTemplate':
          'public Node removeNthFromEnd(Node h, int n) {\n  Node d = new Node(0); d.next = h;\n  Node s = d, f = d;\n  for(int i=1; i<=n+1; i++) f = ___ ;\n  while (f != null) { s = s.next; f = f.next; }\n  s.next = ___ ;\n  return d.next;\n}',
      'blocks': {'a': 'slow.next.next', 'b': 'null', 'c': 'head'},
      'hardBlocks': {'a': 'f.next', 'b': 's.next.next', 'c': 'h'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p28',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Delete Middle Node (LC 2095)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Delete the middle node of a linked list.',
      'hint':
          'Use slow and fast pointers, but keep track of the node before slow.',
      'codeTemplate':
          'Node prev = null;\nwhile (fast != null && fast.next != null) {\n  prev = slow;\n  slow = slow.next;\n  fast = fast.next.next;\n}\nprev.next = ___ ;',
      'hardTemplate':
          'public Node deleteMid(Node h) {\n  if (h.next == null) return null;\n  Node s = h, f = h, p = null;\n  while (f != null && f.next != null) {\n    p = s; s = s.next; f = ___ ;\n  }\n  p.next = ___ ;\n  return h;\n}',
      'blocks': {'a': 'slow.next', 'b': 'null', 'c': 'head'},
      'hardBlocks': {'a': 'f.next.next', 'b': 's.next', 'c': 'null'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z13_p29',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'Intersection of Two LL (LC 160)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Find the intersection node of two singly linked lists.',
      'hint':
          'Move pointer A through list A then B, and pointer B through list B then A.',
      'codeTemplate':
          'Node a = headA, b = headB;\nwhile (a != b) {\n  a = (a == null) ? headB : ___ ;\n  b = (b == null) ? headA : ___ ;\n}\nreturn a;',
      'hardTemplate':
          'public Node getIntersection(Node h1, Node h2) {\n  Node a = h1, b = h2;\n  while (a != b) {\n    a = (a == null) ? h2 : ___ ;\n    b = (b == null) ? h1 : ___ ;\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'a.next', 'b': 'b.next', 'c': 'null'},
      'hardBlocks': {'a': 'a.next', 'b': 'b.next', 'c': 'a'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z13_p30',
      'zone': 13,
      'subcategory': 'Advanced Manipulation',
      'title': 'LRU Cache Logic (Node part)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Logic for removing and adding nodes to a Doubly Linked List for LRU Cache.',
      'hint': 'Standard DLL remove and addFirst/addLast operations.',
      'codeTemplate':
          'void remove(Node node) {\n  node.prev.next = ___ ;\n  node.next.prev = ___ ;\n}\nvoid add(Node node) {\n  node.next = head.next;\n  node.next.prev = node;\n  head.next = ___ ;\n  node.prev = ___ ;\n}',
      'hardTemplate':
          'void remove(Node n) {\n  n.prev.next = ___ ;\n  n.next.prev = ___ ;\n}\nvoid add(Node n) {\n  n.next = head.next;\n  ___ = n;\n  head.next = ___ ;\n  n.prev = ___ ;\n}',
      'blocks': {'a': 'node.next', 'b': 'node.prev', 'c': 'node', 'd': 'head'},
      'hardBlocks': {
        'a': 'n.next',
        'b': 'n.next.prev',
        'c': 'n.next.prev',
        'd': 'n',
        'e': 'head',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
      'hardSolution': {'1': 'a', '2': 'c', '3': 'd', '4': 'e'},
    },

    // ── ZONE 14: Stacks & Queues ──
    {
      'id': 'z14_p1',
      'zone': 14,
      'subcategory': 'Basics',
      'title': 'Valid Parentheses (LC 20)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Check if the string containing brackets is valid.',
      'hint':
          'Use a Stack. Push opening brackets, pop and match for closing brackets.',
      'codeTemplate':
          'Stack<Character> st = new Stack<>();\nfor (char ch : s.toCharArray()) {\n  if (ch == \'(\' || ch == \'[\' || ch == \'{\') {\n    st.push(ch);\n  } else {\n    if (st.isEmpty()) return false;\n    char top = st.pop();\n    if ((ch == \')\' && top != \'(\') ||\n        (ch == \']\' && top != \'[\') ||\n        (ch == \'}\' && top != \'{\')) return ___ ;\n  }\n}\nreturn ___ ;',
      'hardTemplate':
          'public boolean isValid(String s) {\n  Stack<Character> st = new Stack<>();\n  for (char ch : s.toCharArray()) {\n    if (ch == \'(\') st.push(\')\');\n    else if (ch == \'{\') st.push(\'}\');\n    else if (ch == \'[\') st.push(\']\');\n    else if (st.isEmpty() || st.pop() != ___ ) return false;\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'false', 'b': 'st.isEmpty()', 'c': 'true'},
      'hardBlocks': {'a': 'ch', 'b': 'st.isEmpty()', 'c': 'false'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p2',
      'zone': 14,
      'subcategory': 'Basics',
      'title': 'Implement Stack using Array',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Basic operations of a Stack using a static Array.',
      'hint': 'Maintain a pointer \'top\' initialized to -1.',
      'codeTemplate':
          'int[] arr = new int[10];\nint top = -1;\n\nvoid push(int x) {\n  top++;\n  arr[top] = ___ ;\n}\n\nint pop() {\n  if (top == -1) return -1;\n  int res = arr[top];\n  top--;\n  return ___ ;\n}',
      'hardTemplate':
          'class CustomStack {\n  int[] arr;\n  int top = -1;\n  public CustomStack(int maxSize) {\n    arr = new int[maxSize];\n  }\n  public void push(int x) {\n    if (top != arr.length - 1) arr[++top] = ___ ;\n  }\n  public int pop() {\n    if (top == -1) return -1;\n    return arr[___ ];\n  }\n}',
      'blocks': {'a': 'x', 'b': 'res', 'c': 'top'},
      'hardBlocks': {'a': 'x', 'b': 'top--', 'c': '--top'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p3',
      'zone': 14,
      'subcategory': 'Basics',
      'title': 'Implement Queue using Array',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Basic operations of a Queue using a static Array with front and rear pointers.',
      'hint': 'Maintain front=0 and rear=0.',
      'codeTemplate':
          'int[] arr = new int[10];\nint qfront = 0, qrear = 0;\n\nvoid push(int x) {\n  if (qrear == arr.length) return;\n  arr[qrear] = ___ ;\n  qrear++;\n}\n\nint pop() {\n  if (qfront == qrear) return -1;\n  int ans = arr[qfront];\n  qfront++;\n  return ___ ;\n}',
      'hardTemplate':
          'class CustomQueue {\n  int[] arr; int front = 0, rear = 0;\n  public CustomQueue(int size) {\n    arr = new int[size];\n  }\n  public void enqueue(int x) {\n    if (rear != arr.length) arr[rear++] = ___ ;\n  }\n  public int dequeue() {\n    if (front == rear) return -1;\n    return arr[___ ];\n  }\n}',
      'blocks': {'a': 'x', 'b': 'ans', 'c': 'top'},
      'hardBlocks': {'a': 'x', 'b': 'front++', 'c': '++front'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p4',
      'zone': 14,
      'subcategory': 'Design',
      'title': 'Implement Queue using Stacks (LC 232)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Implement a FIFO queue using only two stacks.',
      'hint':
          'Use input stack for pushing, and output stack for popping/peeking.',
      'codeTemplate':
          'Stack<Integer> input = new Stack<>();\nStack<Integer> output = new Stack<>();\n\nvoid push(int x) {\n  input.push(x);\n}\n\nint pop() {\n  if (output.empty()) {\n    while (!input.empty()) {\n      output.push(input.___());\n    }\n  }\n  return output.___();\n}',
      'hardTemplate':
          'class MyQueue {\n  Stack<Integer> in = new Stack<>(), out = new Stack<>();\n  public void push(int x) { in.push(x); }\n  public int pop() { peek(); return out.pop(); }\n  public int peek() {\n    if (out.isEmpty()) {\n      while (!in.isEmpty()) out.push(___ );\n    }\n    return ___ ;\n  }\n  public boolean empty() { return in.isEmpty() && out.isEmpty(); }\n}',
      'blocks': {'a': 'pop', 'b': 'peek', 'c': 'poll'},
      'hardBlocks': {'a': 'in.pop()', 'b': 'out.peek()', 'c': 'out.pop()'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p5',
      'zone': 14,
      'subcategory': 'Design',
      'title': 'Implement Stack using Queues (LC 225)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Implement a LIFO stack using only two queues.',
      'hint':
          'Use one queue. When pushing, add to queue, then rotate all previous elements to the back.',
      'codeTemplate':
          'Queue<Integer> q = new LinkedList<>();\n\nvoid push(int x) {\n  q.add(x);\n  int n = q.size();\n  for (int i = 0; i < n - 1; i++) {\n    q.add(q.___());\n  }\n}\n\nint pop() {\n  return q.poll();\n}',
      'hardTemplate':
          'class MyStack {\n  Queue<Integer> q = new LinkedList<>();\n  public void push(int x) {\n    q.add(x);\n    for (int i = 0; i < ___ ; i++) {\n      q.add(___ );\n    }\n  }\n  public int pop() { return q.poll(); }\n  public int top() { return q.peek(); }\n  public boolean empty() { return q.isEmpty(); }\n}',
      'blocks': {'a': 'poll', 'b': 'peek', 'c': 'remove'},
      'hardBlocks': {'a': 'q.size() - 1', 'b': 'q.poll()', 'c': 'x'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p6',
      'zone': 14,
      'subcategory': 'Design',
      'title': 'Min Stack (LC 155)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.',
      'hint': 'Store a pair of (value, current_minimum) in the stack.',
      'codeTemplate':
          'class Pair {\n  int val, min;\n  Pair(int val, int min) { this.val = val; this.min = min; }\n}\nStack<Pair> st = new Stack<>();\n\nvoid push(int x) {\n  int min;\n  if (st.isEmpty()) {\n    min = x;\n  } else {\n    min = Math.min(st.peek().___ , x);\n  }\n  st.push(new Pair(x, min));\n}\n\nint getMin() {\n  return st.peek().___ ;\n}',
      'hardTemplate':
          'class MinStack {\n  Stack<int[]> st = new Stack<>();\n  public void push(int val) {\n    if (st.isEmpty()) st.push(new int[]{val, val});\n    else st.push(new int[]{val, Math.min(val, ___ )});\n  }\n  public void pop() { st.pop(); }\n  public int top() { return ___ ; }\n  public int getMin() { return ___ ; }\n}',
      'blocks': {'a': 'min', 'b': 'val', 'c': 'Math.min'},
      'hardBlocks': {
        'a': 'st.peek()[1]',
        'b': 'st.peek()[0]',
        'c': 'st.peek()[1]',
      },
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z14_p7',
      'zone': 14,
      'subcategory': 'Monotonic',
      'title': 'Next Greater Element I (LC 496)',
      'difficulty': 'Easy',
      'xp': 180,
      'description':
          'Find the next strictly greater element to the right for each element in an array.',
      'hint': 'Traverse from right to left using a monotonic decreasing stack.',
      'codeTemplate':
          'int[] nge = new int[n];\nStack<Integer> st = new Stack<>();\nfor (int i = n - 1; i >= 0; i--) {\n  while (!st.isEmpty() && st.peek() <= arr[i]) {\n    st.___();\n  }\n  if (st.isEmpty()) {\n    nge[i] = -1;\n  } else {\n    nge[i] = st.___();\n  }\n  st.push(arr[i]);\n}',
      'hardTemplate':
          'public int[] nextGreaterElement(int[] nums1, int[] nums2) {\n  Map<Integer, Integer> map = new HashMap<>();\n  Stack<Integer> st = new Stack<>();\n  for (int num : nums2) {\n    while (!st.isEmpty() && st.peek() < num) {\n      map.put(___ , num);\n    }\n    st.push(num);\n  }\n  int[] res = new int[nums1.length];\n  for (int i = 0; i < nums1.length; i++) {\n    res[i] = map.getOrDefault(___ , -1);\n  }\n  return res;\n}',
      'blocks': {'a': 'pop', 'b': 'peek', 'c': 'push'},
      'hardBlocks': {'a': 'st.pop()', 'b': 'nums1[i]', 'c': 'num'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p8',
      'zone': 14,
      'subcategory': 'Monotonic',
      'title': 'Next Greater Element II (LC 503)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Find the next greater element in a circular array.',
      'hint': 'Iterate through the array twice (length 2n) and use i % n.',
      'codeTemplate':
          'int[] nge = new int[n];\nStack<Integer> st = new Stack<>();\nfor (int i = 2 * n - 1; i >= 0; i--) {\n  while (!st.isEmpty() && st.peek() <= arr[___]) {\n    st.pop();\n  }\n  if (i < n) {\n    nge[i] = st.isEmpty() ? -1 : st.peek();\n  }\n  st.push(arr[___]);\n}',
      'hardTemplate':
          'public int[] nextGreaterElements(int[] nums) {\n  int n = nums.length; int[] res = new int[n];\n  Stack<Integer> st = new Stack<>();\n  for (int i = 2 * n - 1; i >= 0; i--) {\n    while (!st.isEmpty() && st.peek() <= nums[i % n]) ___ ;\n    if (i < n) res[i] = st.isEmpty() ? -1 : ___ ;\n    st.push(___ );\n  }\n  return res;\n}',
      'blocks': {'a': 'i % n', 'b': 'i', 'c': 'i * n'},
      'hardBlocks': {'a': 'st.pop()', 'b': 'st.peek()', 'c': 'nums[i % n]'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z14_p9',
      'zone': 14,
      'subcategory': 'Monotonic',
      'title': 'Daily Temperatures (LC 739)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find how many days you have to wait until a warmer temperature.',
      'hint': 'Store INDICES in the monotonic stack instead of values.',
      'codeTemplate':
          'int[] res = new int[n];\nStack<Integer> st = new Stack<>();\nfor (int i = 0; i < n; i++) {\n  while (!st.isEmpty() && arr[i] > arr[st.peek()]) {\n    int idx = st.pop();\n    res[idx] = ___ - idx;\n  }\n  st.___();\n}',
      'hardTemplate':
          'public int[] dailyTemperatures(int[] T) {\n  int[] res = new int[T.length];\n  Stack<Integer> st = new Stack<>();\n  for (int i = 0; i < T.length; i++) {\n    while (!st.isEmpty() && ___ > T[st.peek()]) {\n      int idx = st.pop();\n      res[idx] = ___ ;\n    }\n    st.push(i);\n  }\n  return res;\n}',
      'blocks': {'a': 'i', 'b': 'push(i)', 'c': 'push(arr[i])'},
      'hardBlocks': {'a': 'T[i]', 'b': 'i - idx', 'c': 'i'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p10',
      'zone': 14,
      'subcategory': 'Strings & Stack',
      'title': 'Remove Adjacent Duplicates (LC 1047)',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Remove all adjacent duplicate characters from a string repeatedly.',
      'hint': 'Push to stack. If top == current, pop. Else, push.',
      'codeTemplate':
          'Stack<Character> st = new Stack<>();\nfor (char ch : s.toCharArray()) {\n  if (!st.isEmpty() && st.peek() == ch) {\n    st.___();\n  } else {\n    st.___();\n  }\n}\n// Convert stack to string...',
      'hardTemplate':
          'public String removeDuplicates(String s) {\n  StringBuilder sb = new StringBuilder();\n  for (char ch : s.toCharArray()) {\n    if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ch) {\n      ___ ;\n    } else {\n      ___ ;\n    }\n  }\n  return sb.toString();\n}',
      'blocks': {'a': 'pop', 'b': 'push(ch)', 'c': 'peek'},
      'hardBlocks': {
        'a': 'sb.deleteCharAt(sb.length() - 1)',
        'b': 'sb.append(ch)',
        'c': 'sb.pop()',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p11',
      'zone': 14,
      'subcategory': 'Strings & Stack',
      'title': 'Build an Array With Stack (LC 1441)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Given a stream of integers, build an array using stack operations Push and Pop.',
      'hint':
          'Iterate 1 to n. Push every time. If current number is not in target, Pop it.',
      'codeTemplate':
          'List<String> res = new ArrayList<>();\nint i = 0;\nfor (int num = 1; num <= n && i < target.length; num++) {\n  res.add(___ );\n  if (target[i] == num) {\n    i++;\n  } else {\n    res.add(___ );\n  }\n}\nreturn res;',
      'hardTemplate':
          'public List<String> buildArray(int[] target, int n) {\n  List<String> res = new ArrayList<>(); int i = 0;\n  for(int num = 1; num <= n && i < target.length; num++) {\n    res.add("Push");\n    if (target[i] == num) ___ ;\n    else ___ ;\n  }\n  return res;\n}',
      'blocks': {'a': '"Push"', 'b': '"Pop"', 'c': '"Empty"'},
      'hardBlocks': {'a': 'res.add("Pop")', 'b': 'i++', 'c': 'i--'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'b', '2': 'a'},
    },
    {
      'id': 'z14_p12',
      'zone': 14,
      'subcategory': 'Parentheses',
      'title': 'Min Add Make Parentheses Valid (LC 921)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find minimum number of parentheses added to make the string valid.',
      'hint':
          'Count unmatched open brackets. If closing bracket comes with no open, count as extra.',
      'codeTemplate':
          'int open = 0, extra = 0;\nfor (char ch : s.toCharArray()) {\n  if (ch == \'(\') {\n    open++;\n  } else {\n    if (open > 0) open--;\n    else ___++;\n  }\n}\nreturn open + ___ ;',
      'hardTemplate':
          'public int minAddToMakeValid(String s) {\n  int o = 0, e = 0;\n  for (char ch : s.toCharArray()) {\n    if (ch == \'(\') o++;\n    else if (o > 0) ___ ;\n    else ___ ;\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'extra', 'b': 'open', 'c': 'return 0'},
      'hardBlocks': {'a': 'o--', 'b': 'e++', 'c': 'o + e'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z14_p13',
      'zone': 14,
      'subcategory': 'Parentheses',
      'title': 'Min Insert to Balance Parentheses (LC 1541)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'A valid parentheses string has two ) for every (.',
      'hint':
          'Track open brackets. Handle multiple closing brackets logically.',
      'codeTemplate':
          'int open = 0, add = 0;\nfor (int i = 0; i < s.length(); i++) {\n  if (s.charAt(i) == \'(\') {\n    open++;\n  } else {\n    if (i < s.length() - 1 && s.charAt(i + 1) == \')\') {\n      i++;\n    } else {\n      add++;\n    }\n    if (open > 0) open--;\n    else ___++;\n  }\n}\nreturn add + ___ * 2;',
      'hardTemplate':
          'public int minInsertions(String s) {\n  int o = 0, a = 0;\n  for (int i = 0; i < s.length(); i++) {\n    if (s.charAt(i) == \'(\') o++;\n    else {\n      if (i < s.length()-1 && s.charAt(i+1) == \')\') i++; else a++;\n      if (o > 0) ___ ;\n      else ___ ;\n    }\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'add', 'b': 'open', 'c': 'i'},
      'hardBlocks': {'a': 'o--', 'b': 'a++', 'c': 'a + o * 2'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z14_p14',
      'zone': 14,
      'subcategory': 'Parentheses',
      'title': 'Score of Parentheses (LC 856)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': '() has score 1. AB has score A + B. (A) has score 2 * A.',
      'hint':
          'Maintain a stack to track score at each depth. Push 0 on (, combine values on ).',
      'codeTemplate':
          'Stack<Integer> st = new Stack<>();\nst.push(0);\nfor (char c : s.toCharArray()) {\n  if (c == \'(\') {\n    st.push(0);\n  } else {\n    int v = st.pop();\n    int w = st.pop();\n    st.push(w + Math.max(___ , ___ ));\n  }\n}\nreturn st.pop();',
      'hardTemplate':
          'public int scoreOfParentheses(String s) {\n  Stack<Integer> st = new Stack<>();\n  st.push(0);\n  for (char c : s.toCharArray()) {\n    if (c == \'(\') st.push(0);\n    else {\n      int v = st.pop(), w = st.pop();\n      st.push(w + Math.max(___ , ___ ));\n    }\n  }\n  return ___ ;\n}',
      'blocks': {'a': '2 * v', 'b': '1', 'c': 'v'},
      'hardBlocks': {'a': '2 * v', 'b': '1', 'c': 'st.pop()'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z14_p15',
      'zone': 14,
      'subcategory': 'Expression Evaluation',
      'title': 'Evaluate Reverse Polish Notation (LC 150)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Evaluate postfix expressions like ["2", "1", "+", "3", "*"].',
      'hint':
          'Push numbers to stack. On operator, pop two numbers, apply operation, push result.',
      'codeTemplate':
          'Stack<Integer> st = new Stack<>();\nfor (String token : tokens) {\n  if (token.equals("+")) {\n    st.push(st.pop() + st.pop());\n  } else if (token.equals("-")) {\n    int a = st.pop();\n    int b = st.pop();\n    st.push(___ - ___);\n  } else if (token.equals("*")) {\n    st.push(st.pop() * st.pop());\n  } else if (token.equals("/")) {\n    int a = st.pop();\n    int b = st.pop();\n    st.push(___ / ___);\n  } else {\n    st.push(Integer.parseInt(token));\n  }\n}\nreturn st.pop();',
      'hardTemplate':
          'public int evalRPN(String[] tokens) {\n  Stack<Integer> st = new Stack<>();\n  for (String t : tokens) {\n    if (t.equals("+")) st.push(st.pop() + st.pop());\n    else if (t.equals("-")) { int a=st.pop(), b=st.pop(); st.push(___ ); }\n    else if (t.equals("*")) st.push(st.pop() * st.pop());\n    else if (t.equals("/")) { int a=st.pop(), b=st.pop(); st.push(___ ); }\n    else st.push(Integer.parseInt(t));\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'b', 'b': 'a', 'c': '0'},
      'hardBlocks': {'a': 'b - a', 'b': 'b / a', 'c': 'st.pop()'},
      'solution': {'1': 'a', '2': 'b', '3': 'a', '4': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z14_p16',
      'zone': 14,
      'subcategory': 'Monotonic',
      'title': 'Most Competitive Subsequence (LC 1673)',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Find the most competitive (lexicographically smallest) subsequence of length k.',
      'hint':
          'Monotonic increasing stack, but ensure you have enough elements left to fill k spots.',
      'codeTemplate':
          'Stack<Integer> st = new Stack<>();\nfor (int i = 0; i < nums.length; i++) {\n  while (!st.isEmpty() && nums[i] < st.peek() && nums.length - i + st.size() > k) {\n    st.___();\n  }\n  if (st.size() < k) {\n    st.___();\n  }\n}\nint[] res = new int[k];\nfor (int i = k - 1; i >= 0; i--) res[i] = st.pop();\nreturn res;',
      'hardTemplate':
          'public int[] mostCompetitive(int[] nums, int k) {\n  Stack<Integer> st = new Stack<>();\n  for (int i=0; i<nums.length; i++) {\n    while(!st.isEmpty() && nums[i] < st.peek() && ___) st.pop();\n    if (st.size() < k) ___ ;\n  }\n  int[] res = new int[k];\n  for (int i = k-1; i>=0; i--) res[i] = st.pop();\n  return res;\n}',
      'blocks': {'a': 'pop', 'b': 'push(nums[i])', 'c': 'peek'},
      'hardBlocks': {
        'a': 'nums.length - i + st.size() > k',
        'b': 'st.push(nums[i])',
        'c': 'nums.length - i > k',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p17',
      'zone': 14,
      'subcategory': 'Monotonic',
      'title': 'Remove K Digits (LC 402)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Remove k digits from a number to form the smallest possible integer.',
      'hint':
          'If current digit is smaller than top of stack, pop stack. Then remove leading zeros.',
      'codeTemplate':
          'Stack<Character> st = new Stack<>();\nfor (char c : num.toCharArray()) {\n  while (!st.isEmpty() && k > 0 && st.peek() > c) {\n    st.___();\n    k--;\n  }\n  st.___();\n}\nwhile (k > 0) {\n  st.pop(); k--;\n}\n// build string logic...',
      'hardTemplate':
          'public String removeKdigits(String num, int k) {\n  Stack<Character> st = new Stack<>();\n  for (char c : num.toCharArray()) {\n    while(!st.isEmpty() && k>0 && st.peek() > c) {\n      ___ ;\n    }\n    st.push(c);\n  }\n  while(k > 0) { st.pop(); k--; }\n  StringBuilder sb = new StringBuilder();\n  while(!st.isEmpty()) ___ ;\n  sb.reverse();\n  while(sb.length() > 1 && sb.charAt(0) == \'0\') sb.deleteCharAt(0);\n  return sb.length() == 0 ? "0" : sb.toString();\n}',
      'blocks': {'a': 'pop', 'b': 'push(c)', 'c': 'peek'},
      'hardBlocks': {
        'a': 'st.pop(); k--;',
        'b': 'sb.append(st.pop())',
        'c': 'st.push()',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p18',
      'zone': 14,
      'subcategory': 'Advanced Patterns',
      'title': '132 Pattern (LC 456)',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Find if there is a subsequence nums[i] < nums[k] < nums[j] in an array.',
      'hint':
          'Traverse backward. Use a stack to track "nums[k]". Maintain the max valid nums[k] found.',
      'codeTemplate':
          'int s3 = Integer.MIN_VALUE;\nStack<Integer> st = new Stack<>();\nfor (int i = nums.length - 1; i >= 0; i--) {\n  if (nums[i] < s3) return true;\n  while (!st.isEmpty() && nums[i] > st.peek()) {\n    ___ = st.pop();\n  }\n  st.___();\n}\nreturn false;',
      'hardTemplate':
          'public boolean find132pattern(int[] nums) {\n  int s3 = Integer.MIN_VALUE;\n  Stack<Integer> st = new Stack<>();\n  for (int i = nums.length - 1; i >= 0; i--) {\n    if (___ ) return true;\n    while (!st.isEmpty() && nums[i] > st.peek()) ___ ;\n    st.push(nums[i]);\n  }\n  return false;\n}',
      'blocks': {'a': 's3', 'b': 'push(nums[i])', 'c': 'pop()'},
      'hardBlocks': {
        'a': 'nums[i] < s3',
        'b': 's3 = st.pop()',
        'c': 'nums[i] > s3',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p19',
      'zone': 14,
      'subcategory': 'Advanced Patterns',
      'title': 'Asteroid Collision (LC 735)',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Find out the state of the asteroids after all collisions (Right=+, Left=-).',
      'hint': 'Only positive asteroids followed by negative can collide.',
      'codeTemplate':
          'Stack<Integer> st = new Stack<>();\nfor (int rock : asteroids) {\n  boolean exploded = false;\n  while (!st.isEmpty() && rock < 0 && st.peek() > 0) {\n    if (st.peek() < -rock) {\n      st.pop();\n      continue;\n    } else if (st.peek() == -rock) {\n      st.___();\n    }\n    exploded = true;\n    break;\n  }\n  if (!exploded) st.___();\n}\n// Convert to array...',
      'hardTemplate':
          'public int[] asteroidCollision(int[] a) {\n  Stack<Integer> st = new Stack<>();\n  for (int r : a) {\n    boolean x = false;\n    while (!st.isEmpty() && r < 0 && st.peek() > 0) {\n      if (st.peek() < -r) {\n        ___ ;\n      } else if (st.peek() == -r) {\n        st.pop(); x = true; break;\n      } else { x = true; break; }\n    }\n    if (!x) ___ ;\n  }\n  int[] res = new int[st.size()];\n  for(int i=res.length-1; i>=0; i--) res[i] = st.pop();\n  return res;\n}',
      'blocks': {'a': 'pop', 'b': 'push(rock)', 'c': 'peek'},
      'hardBlocks': {
        'a': 'st.pop(); continue;',
        'b': 'st.push(r)',
        'c': 'continue',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p20',
      'zone': 14,
      'subcategory': 'Expression Evaluation',
      'title': 'Basic Calculator II (LC 227)',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Evaluate a math expression containing +, -, *, / without parentheses.',
      'hint':
          'Track current number and previous operator. For *, /, pop stack and push result.',
      'codeTemplate':
          'int num = 0;\nchar op = \'+\';\nStack<Integer> st = new Stack<>();\nfor (int i = 0; i < len; i++) {\n  char c = s.charAt(i);\n  if (Character.isDigit(c)) num = num * 10 + (c - \'0\');\n  if (!Character.isDigit(c) && c != \' \' || i == len - 1) {\n    if (op == \'+\') st.push(num);\n    else if (op == \'-\') st.push(-num);\n    else if (op == \'*\') st.push(st.___() * num);\n    else if (op == \'/\') st.push(st.___() / num);\n    op = c;\n    num = 0;\n  }\n}\n// sum up stack...',
      'hardTemplate':
          'public int calculate(String s) {\n  int n = 0, res = 0; char op = \'+\';\n  Stack<Integer> st = new Stack<>();\n  for(int i=0; i<s.length(); i++) {\n    char c = s.charAt(i);\n    if (Character.isDigit(c)) n = n * 10 + (c - \'0\');\n    if (!Character.isDigit(c) && c != \' \' || i == s.length()-1) {\n      if(op == \'+\') st.push(n);\n      else if(op == \'-\') st.push(-n);\n      else if(op == \'*\') ___ ;\n      else if(op == \'/\') ___ ;\n      op = c; n = 0;\n    }\n  }\n  while(!st.isEmpty()) res += st.pop();\n  return res;\n}',
      'blocks': {'a': 'pop', 'b': 'peek', 'c': 'push'},
      'hardBlocks': {
        'a': 'st.push(st.pop() * n)',
        'b': 'st.push(st.pop() / n)',
        'c': 'st.push(n)',
      },
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p21',
      'zone': 14,
      'subcategory': 'Monotonic',
      'title': 'Sliding Window Maximum (LC 239)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Find the maximum element in each sliding window of size k.',
      'hint':
          'Use a Deque to store indices. Maintain decreasing order in deque.',
      'codeTemplate':
          'Deque<Integer> q = new ArrayDeque<>();\nint[] res = new int[n - k + 1];\nint ri = 0;\nfor (int i = 0; i < n; i++) {\n  if (!q.isEmpty() && q.peek() == i - k) {\n    q.___();\n  }\n  while (!q.isEmpty() && arr[q.peekLast()] < arr[i]) {\n    q.___();\n  }\n  q.offer(i);\n  if (i >= k - 1) res[ri++] = arr[q.peek()];\n}',
      'hardTemplate':
          'public int[] maxSlidingWindow(int[] nums, int k) {\n  Deque<Integer> q = new ArrayDeque<>();\n  int[] res = new int[nums.length - k + 1];\n  for (int i = 0, ri = 0; i < nums.length; i++) {\n    if (!q.isEmpty() && q.peek() == ___ ) q.poll();\n    while (!q.isEmpty() && nums[q.peekLast()] < nums[i]) ___ ;\n    q.offer(i);\n    if (i >= k - 1) res[ri++] = nums[___ ];\n  }\n  return res;\n}',
      'blocks': {'a': 'poll', 'b': 'pollLast', 'c': 'offer'},
      'hardBlocks': {'a': 'i - k', 'b': 'q.pollLast()', 'c': 'q.peek()'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z14_p22',
      'zone': 14,
      'subcategory': 'Advanced Patterns',
      'title': 'Trapping Rain Water (LC 42)',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Calculate how much water it can trap after raining.',
      'hint':
          'Using a stack, trap water when finding a right boundary higher than stack top.',
      'codeTemplate':
          'Stack<Integer> st = new Stack<>();\nint water = 0;\nfor (int i = 0; i < height.length; i++) {\n  while (!st.isEmpty() && height[i] > height[st.peek()]) {\n    int top = st.___();\n    if (st.isEmpty()) break;\n    int distance = i - st.peek() - 1;\n    int bounded_height = Math.min(height[i], height[st.peek()]) - height[top];\n    water += distance * ___ ;\n  }\n  st.push(i);\n}',
      'hardTemplate':
          'public int trap(int[] height) {\n  Stack<Integer> st = new Stack<>(); int ans = 0;\n  for(int i=0; i<height.length; i++) {\n    while(!st.isEmpty() && height[i] > height[st.peek()]) {\n      int top = st.pop();\n      if(st.isEmpty()) ___ ;\n      int d = i - st.peek() - 1;\n      int h = Math.min(___ , ___) - height[top];\n      ans += d * h;\n    }\n    st.push(i);\n  }\n  return ans;\n}',
      'blocks': {'a': 'pop', 'b': 'bounded_height', 'c': 'height[i]'},
      'hardBlocks': {'a': 'break', 'b': 'height[i]', 'c': 'height[st.peek()]'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z14_p23',
      'zone': 14,
      'subcategory': 'Strings & Stack',
      'title': 'Simplify Path (LC 71)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Convert an absolute path to the simplified canonical path.',
      'hint':
          'Split by /. Push normal names. Pop on "..". Ignore "." and empty.',
      'codeTemplate':
          'Stack<String> st = new Stack<>();\nString[] parts = path.split("/");\nfor (String p : parts) {\n  if (p.equals("..")) {\n    if (!st.isEmpty()) st.___();\n  } else if (!p.isEmpty() && !p.equals(".")) {\n    st.___();\n  }\n}\n// Then build "/a/b/c" ...',
      'hardTemplate':
          'public String simplifyPath(String path) {\n  Stack<String> st = new Stack<>();\n  for(String p : path.split("/")) {\n    if(p.equals("..")) { if(!st.isEmpty()) ___ ; }\n    else if(!p.isEmpty() && !p.equals(".")) ___ ;\n  }\n  return "/" + String.join("/", st);\n}',
      'blocks': {'a': 'pop', 'b': 'push(p)', 'c': 'remove'},
      'hardBlocks': {'a': 'st.pop()', 'b': 'st.push(p)', 'c': 'st.clear()'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p24',
      'zone': 14,
      'subcategory': 'Parentheses',
      'title': 'Longest Valid Parentheses (LC 32)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Find the length of the longest valid (well-formed) parentheses substring.',
      'hint':
          'Store INDICES in the stack. Initialize stack with -1 to handle base case.',
      'codeTemplate':
          'Stack<Integer> st = new Stack<>();\nst.push(-1);\nint max = 0;\nfor (int i = 0; i < s.length(); i++) {\n  if (s.charAt(i) == \'(\') {\n    st.push(i);\n  } else {\n    st.pop();\n    if (st.isEmpty()) {\n      st.___();\n    } else {\n      max = Math.max(max, i - st.peek());\n    }\n  }\n}\nreturn max;',
      'hardTemplate':
          'public int longestValidParentheses(String s) {\n  Stack<Integer> st = new Stack<>(); st.push(-1);\n  int max = 0;\n  for (int i = 0; i < s.length(); i++) {\n    if (s.charAt(i) == \'(\') st.push(i);\n    else {\n      st.pop();\n      if (st.isEmpty()) ___ ;\n      else max = Math.max(max, ___ );\n    }\n  }\n  return max;\n}',
      'blocks': {'a': 'push(i)', 'b': 'pop()', 'c': 'min'},
      'hardBlocks': {'a': 'st.push(i)', 'b': 'i - st.peek()', 'c': 'i'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p25',
      'zone': 14,
      'subcategory': 'Monotonic',
      'title': 'Largest Rectangle in Histogram (LC 84)',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Find area of largest rectangle in the histogram.',
      'hint':
          'Monotonic increasing stack. When you see a smaller bar, pop and calculate area.',
      'codeTemplate':
          'Stack<Integer> st = new Stack<>();\nint maxArea = 0;\nfor (int i = 0; i <= n; i++) {\n  int h = (i == n) ? 0 : heights[i];\n  while (!st.isEmpty() && h < heights[st.peek()]) {\n    int height = heights[st.pop()];\n    int width = st.isEmpty() ? i : i - st.peek() - 1;\n    maxArea = Math.max(maxArea, height * width);\n  }\n  st.___();\n}',
      'hardTemplate':
          'public int largestRectangleArea(int[] heights) {\n  Stack<Integer> st = new Stack<>(); int max = 0, n = heights.length;\n  for(int i=0; i<=n; i++) {\n    int h = (i == n) ? 0 : heights[i];\n    while(!st.isEmpty() && h < heights[st.peek()]) {\n      int height = heights[st.pop()];\n      int w = st.isEmpty() ? ___ : ___ ;\n      max = Math.max(max, height * w);\n    }\n    st.push(i);\n  }\n  return max;\n}',
      'blocks': {'a': 'push(i)', 'b': 'pop()', 'c': 'peek'},
      'hardBlocks': {'a': 'i', 'b': 'i - st.peek() - 1', 'c': 'i - st.peek()'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p26',
      'zone': 14,
      'subcategory': 'Monotonic',
      'title': 'Maximal Rectangle (LC 85)',
      'difficulty': 'Hard',
      'xp': 350,
      'description':
          'Find the largest rectangle containing only 1s in a boolean matrix.',
      'hint':
          'Compute height of 1s histogram row by row, then use "Largest Rect in Histogram".',
      'codeTemplate':
          'int[] heights = new int[cols];\nint maxArea = 0;\nfor (int i = 0; i < rows; i++) {\n  for (int j = 0; j < cols; j++) {\n    if (matrix[i][j] == \'1\') heights[j]++;\n    else heights[j] = ___ ;\n  }\n  maxArea = Math.max(maxArea, largestRectangleArea(heights));\n}\nreturn maxArea;',
      'hardTemplate':
          'public int maximalRectangle(char[][] matrix) {\n  if(matrix.length == 0) return 0;\n  int[] h = new int[matrix[0].length]; int max = 0;\n  for(int i=0; i<matrix.length; i++) {\n    for(int j=0; j<matrix[0].length; j++) {\n      if(matrix[i][j] == \'1\') h[j]++; else ___ ;\n    }\n    max = Math.max(max, ___ );\n  }\n  return max;\n}',
      'blocks': {'a': '0', 'b': '1', 'c': 'heights[j] - 1'},
      'hardBlocks': {
        'a': 'h[j] = 0',
        'b': 'largestRectangleArea(h)',
        'c': 'h[j]--',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p27',
      'zone': 14,
      'subcategory': 'Design',
      'title': 'Validate Stack Sequences (LC 946)',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Determine if pushed and popped sequences could be valid.',
      'hint':
          'Simulate pushing. While stack top matches popped[j], pop and increment j.',
      'codeTemplate':
          'Stack<Integer> st = new Stack<>();\nint j = 0;\nfor (int x : pushed) {\n  st.push(x);\n  while (!st.isEmpty() && st.peek() == popped[j]) {\n    st.pop();\n    ___ ;\n  }\n}\nreturn st.isEmpty();',
      'hardTemplate':
          'public boolean validateStackSequences(int[] pushed, int[] popped) {\n  Stack<Integer> st = new Stack<>(); int j = 0;\n  for (int x : pushed) {\n    st.push(x);\n    while (!st.isEmpty() && ___ == popped[j]) {\n      st.pop(); j++;\n    }\n  }\n  return ___ ;\n}',
      'blocks': {'a': 'j++', 'b': 'x++', 'c': 'i++'},
      'hardBlocks': {
        'a': 'st.peek()',
        'b': 'st.isEmpty()',
        'c': 'j == popped.length',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z14_p28',
      'zone': 14,
      'subcategory': 'Strings & Stack',
      'title': 'Decode String (LC 394)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Decode strings like "3[a2[c]]" into "accaccacc".',
      'hint':
          'Use two stacks: one for numbers (counts), one for strings. Push on [, pop on ].',
      'codeTemplate':
          'Stack<Integer> countStack = new Stack<>();\nStack<StringBuilder> stringStack = new Stack<>();\nStringBuilder res = new StringBuilder();\nint k = 0;\nfor (char c : s.toCharArray()) {\n  if (Character.isDigit(c)) k = k * 10 + (c - \'0\');\n  else if (c == \'[\') {\n    countStack.push(k);\n    stringStack.push(res);\n    res = new StringBuilder();\n    k = 0;\n  } else if (c == \']\') {\n    StringBuilder decoded = stringStack.pop();\n    for (int currentK = countStack.pop(); currentK > 0; currentK--) {\n      decoded.append(___ );\n    }\n    res = decoded;\n  } else {\n    res.append(c);\n  }\n}',
      'hardTemplate':
          'public String decodeString(String s) {\n  Stack<Integer> counts = new Stack<>(); Stack<StringBuilder> strs = new Stack<>();\n  StringBuilder res = new StringBuilder(); int k = 0;\n  for(char c : s.toCharArray()) {\n    if(Character.isDigit(c)) k = k * 10 + (c - \'0\');\n    else if(c == \'[\') {\n      counts.push(k); strs.push(res); res = new StringBuilder(); k = 0;\n    } else if(c == \']\') {\n      StringBuilder temp = strs.pop();\n      for(int i = counts.pop(); i > 0; i--) ___ ;\n      res = temp;\n    } else res.append(c);\n  }\n  return res.toString();\n}',
      'blocks': {'a': 'res', 'b': 'c', 'c': 'stringStack.peek()'},
      'hardBlocks': {
        'a': 'temp.append(res)',
        'b': 'res.append(temp)',
        'c': 'temp.append(c)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z14_p29',
      'zone': 14,
      'subcategory': 'Strings & Stack',
      'title': 'Make The String Great (LC 1544)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Remove adjacent characters that are the same letter but different cases (e.g., "eE").',
      'hint':
          'If abs(top - current) == 32 (difference between upper and lower case ASCII), pop.',
      'codeTemplate':
          'Stack<Character> st = new Stack<>();\nfor (char ch : s.toCharArray()) {\n  if (!st.isEmpty() && Math.abs(st.peek() - ch) == ___ ) {\n    st.pop();\n  } else {\n    st.push(ch);\n  }\n}\n// Convert to string...',
      'hardTemplate':
          'public String makeGood(String s) {\n  Stack<Character> st = new Stack<>();\n  for(char c : s.toCharArray()) {\n    if(!st.isEmpty() && ___ ) st.pop();\n    else st.push(c);\n  }\n  StringBuilder sb = new StringBuilder();\n  while(!st.isEmpty()) sb.insert(0, st.pop());\n  return sb.toString();\n}',
      'blocks': {'a': '32', 'b': '26', 'c': '0'},
      'hardBlocks': {
        'a': 'Math.abs(st.peek() - c) == 32',
        'b': 'st.peek() == c',
        'c': 'st.peek() - c == 32',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z14_p30',
      'zone': 14,
      'subcategory': 'Strings & Stack',
      'title': 'Clear Digits (LC 3174)',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Remove digits and the closest non-digit character to its left.',
      'hint':
          'Iterate through string. If it\'s a digit, pop the stack. If it\'s a letter, push.',
      'codeTemplate':
          'Stack<Character> st = new Stack<>();\nfor (char ch : s.toCharArray()) {\n  if (Character.isDigit(ch)) {\n    if (!st.isEmpty()) st.___();\n  } else {\n    st.___();\n  }\n}\n// Convert stack to string...',
      'hardTemplate':
          'public String clearDigits(String s) {\n  Stack<Character> st = new Stack<>();\n  for (char ch : s.toCharArray()) {\n    if (Character.isDigit(ch)) {\n      if (!st.isEmpty()) ___ ;\n    } else {\n      ___ ;\n    }\n  }\n  StringBuilder sb = new StringBuilder();\n  while(!st.isEmpty()) sb.insert(0, st.pop());\n  return sb.toString();\n}',
      'blocks': {'a': 'pop', 'b': 'push(ch)', 'c': 'peek'},
      'hardBlocks': {'a': 'st.pop()', 'b': 'st.push(ch)', 'c': 'st.peek()'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 15: Trees ──
    {
      'id': 'z15_p1',
      'zone': 15,
      'subcategory': 'Basics',
      'title': 'Binary Tree Node Class',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Define a simple Binary Tree Node class with left and right children.',
      'hint':
          'A tree node has a value and references to its left and right children.',
      'codeTemplate':
          'class Node {\n  int val;\n  Node left, right;\n  public Node(int val) {\n    this.val = val;\n    this.___ = null;\n    this.___ = null;\n  }\n}',
      'hardTemplate':
          'class Node {\n  int val;\n  Node left, right;\n  public Node(int val) {\n    ___ = val;\n    ___ = null;\n    ___ = null;\n  }\n}',
      'blocks': {'a': 'left', 'b': 'right', 'c': 'Node'},
      'hardBlocks': {'a': 'this.val', 'b': 'this.left', 'c': 'this.right'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z15_p2',
      'zone': 15,
      'subcategory': 'Basics',
      'title': 'Height of Tree',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Calculate the maximum height (depth) of a binary tree.',
      'hint':
          'Height is 1 + max(left_height, right_height). Base case is node null -> 0.',
      'codeTemplate':
          'int height(Node node) {\n  if (node == null) return 0;\n  int left = height(node.left);\n  int right = height(node.right);\n  return ___ + Math.max(left, right);\n}',
      'hardTemplate':
          'int height(Node node) {\n  if (node == null) return ___ ;\n  return 1 + Math.max(___ , ___ );\n}',
      'blocks': {'a': '1', 'b': '0', 'c': 'node.val'},
      'hardBlocks': {
        'a': '0',
        'b': 'height(node.left)',
        'c': 'height(node.right)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z15_p3',
      'zone': 15,
      'subcategory': 'Basics',
      'title': 'Size of Tree',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find the total number of nodes in a binary tree.',
      'hint': 'Size is 1 + size(left) + size(right).',
      'codeTemplate':
          'int size(Node node) {\n  if (node == null) return 0;\n  return ___ + size(node.left) + size(node.right);\n}',
      'hardTemplate':
          'int size(Node node) {\n  if (node == null) return 0;\n  int left = ___ ;\n  int right = ___ ;\n  return 1 + left + right;\n}',
      'blocks': {'a': '1', 'b': 'node.val', 'c': '0'},
      'hardBlocks': {'a': 'size(node.left)', 'b': 'size(node.right)', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p4',
      'zone': 15,
      'subcategory': 'Basics',
      'title': 'Sum of Nodes',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Calculate the sum of all node values in a binary tree.',
      'hint': 'Sum is current node value + sum(left) + sum(right).',
      'codeTemplate':
          'int sum(Node node) {\n  if (node == null) return 0;\n  return node.val + sum(___) + sum(___);\n}',
      'hardTemplate':
          'int sum(Node node) {\n  if (node == null) return 0;\n  return ___ + sum(node.left) + sum(node.right);\n}',
      'blocks': {'a': 'node.left', 'b': 'node.right', 'c': 'node.val'},
      'hardBlocks': {'a': 'node.val', 'b': '0', 'c': 'sum(node)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z15_p5',
      'zone': 15,
      'subcategory': 'Basics',
      'title': 'Max Value in Tree',
      'difficulty': 'Medium',
      'xp': 120,
      'description': 'Find the node with the maximum value in a binary tree.',
      'hint': 'Max is Math.max(node.val, max(left), max(right)).',
      'codeTemplate':
          'int max(Node node) {\n  if (node == null) return Integer.MIN_VALUE;\n  int res = node.val;\n  int lres = max(node.left);\n  int rres = max(node.right);\n  if (lres > res) res = lres;\n  if (rres > res) ___ ;\n  return res;\n}',
      'hardTemplate':
          'int maxNode(Node node) {\n  if (node == null) return Integer.MIN_VALUE;\n  int m = node.val;\n  m = Math.max(m, ___ );\n  m = Math.max(m, ___ );\n  return m;\n}',
      'blocks': {'a': 'res = rres', 'b': 'res = m', 'c': 'return m'},
      'hardBlocks': {
        'a': 'maxNode(node.left)',
        'b': 'maxNode(node.right)',
        'c': 'node.val',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p6',
      'zone': 15,
      'subcategory': 'Traversals',
      'title': 'Pre-order Traversal',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Implement recursive pre-order traversal (Node, Left, Right).',
      'hint': 'Process current node, then recurse left, then recurse right.',
      'codeTemplate':
          'void preOrder(Node node) {\n  if (node == null) return;\n  System.out.print(node.val + " ");\n  preOrder(___ );\n  preOrder(___ );\n}',
      'hardTemplate':
          'void preOrder(Node node) {\n  if (node == null) return;\n  ___ ;\n  preOrder(node.left);\n  ___ ;\n}',
      'blocks': {'a': 'node.left', 'b': 'node.right', 'c': 'node'},
      'hardBlocks': {
        'a': 'visit(node)',
        'b': 'preOrder(node.right)',
        'c': 'return',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p7',
      'zone': 15,
      'subcategory': 'Traversals',
      'title': 'In-order Traversal',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Implement recursive in-order traversal (Left, Node, Right).',
      'hint': 'Recurse left, then process current node, then recurse right.',
      'codeTemplate':
          'void inOrder(Node node) {\n  if (node == null) return;\n  inOrder(___ );\n  System.out.print(node.val + " ");\n  inOrder(___ );\n}',
      'hardTemplate':
          'void inOrder(Node node) {\n  if (node == null) return;\n  ___ ;\n  ___ ;\n  inOrder(node.right);\n}',
      'blocks': {'a': 'node.left', 'b': 'node.right', 'c': 'node'},
      'hardBlocks': {
        'a': 'inOrder(node.left)',
        'b': 'visit(node)',
        'c': 'return',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p8',
      'zone': 15,
      'subcategory': 'Traversals',
      'title': 'Post-order Traversal',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Implement recursive post-order traversal (Left, Right, Node).',
      'hint': 'Recurse left, then recurse right, then process current node.',
      'codeTemplate':
          'void postOrder(Node node) {\n  if (node == null) return;\n  postOrder(___ );\n  postOrder(___ );\n  System.out.print(node.val + " ");\n}',
      'hardTemplate':
          'void postOrder(Node node) {\n  if (node == null) return;\n  ___ ;\n  ___ ;\n  System.out.println(node.val);\n}',
      'blocks': {'a': 'node.left', 'b': 'node.right', 'c': 'node'},
      'hardBlocks': {
        'a': 'postOrder(node.left)',
        'b': 'postOrder(node.right)',
        'c': 'visit(node)',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p9',
      'zone': 15,
      'subcategory': 'Traversals',
      'title': 'Level-order Traversal (Basic BFS)',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Implement level-order traversal using a Queue.',
      'hint':
          'Enqueue root, then while queue is not empty, dequeue, process, and enqueue children.',
      'codeTemplate':
          'Queue<Node> q = new LinkedList<>();\nq.offer(root);\nwhile (!q.isEmpty()) {\n  Node curr = q.poll();\n  System.out.print(curr.val + " ");\n  if (curr.left != null) q.offer(___ );\n  if (curr.right != null) q.offer(___ );\n}',
      'hardTemplate':
          'void levelOrder(Node root) {\n  if (root == null) return;\n  Queue<Node> queue = new ___ ; \n  queue.add(root);\n  while (___) {\n    Node curr = queue.poll();\n    visit(curr);\n    if (curr.left != null) ___ ;\n    if (curr.right != null) ___ ;\n  }\n}',
      'blocks': {'a': 'curr.left', 'b': 'curr.right', 'c': 'null'},
      'hardBlocks': {
        'a': 'LinkedList<>()',
        'b': '!queue.isEmpty()',
        'c': 'queue.add(curr.left)',
        'd': 'queue.add(curr.right)',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c', '4': 'd'},
    },
    {
      'id': 'z15_p10',
      'zone': 15,
      'subcategory': 'Traversals',
      'title': 'Level-order (List of Lists LC 102)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Return the level order traversal as a list of levels.',
      'hint':
          'Use level size to process nodes level-by-level in the queue loop.',
      'codeTemplate':
          'int size = queue.size();\nList<Integer> level = new ArrayList<>();\nfor(int i=0; i<size; i++) {\n  Node curr = queue.poll();\n  level.add(curr.val);\n  if (curr.left != null) queue.add(curr.left);\n  if (curr.right != null) queue.add(curr.right);\n}\nres.add(___ );',
      'hardTemplate':
          'List<List<Integer>> result = new ArrayList<>();\nwhile (!queue.isEmpty()) {\n  int sz = queue.size();\n  List<Integer> list = new ___ ;\n  for (int i=0; i < sz; i++) {\n    Node n = queue.poll();\n    list.add(n.val);\n    if (n.left != null) queue.add(n.left);\n    if (n.right != null) queue.add(n.right);\n  }\n  result.add(___ );\n}',
      'blocks': {'a': 'level', 'b': 'size', 'c': 'queue'},
      'hardBlocks': {'a': 'ArrayList<>()', 'b': 'list', 'c': 'sz'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },

    {
      'id': 'z15_p11',
      'zone': 15,
      'subcategory': 'BST Operations',
      'title': 'Search in BST (LC 700)',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Search for a value in a Binary Search Tree.',
      'hint':
          'If val < node.val, search left; if val > node.val, search right.',
      'codeTemplate':
          'Node searchBST(Node root, int val) {\n  if (root == null || root.val == val) return root;\n  if (val < root.val) return searchBST(___ , val);\n  return searchBST(___ , val);\n}',
      'hardTemplate':
          'Node searchBST(Node root, int val) {\n  if (root == null || root.val == val) return root;\n  return (val < root.val) ? ___ : ___ ;\n}',
      'blocks': {'a': 'root.left', 'b': 'root.right', 'c': 'root'},
      'hardBlocks': {
        'a': 'searchBST(root.left, val)',
        'b': 'searchBST(root.right, val)',
        'c': 'null',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p12',
      'zone': 15,
      'subcategory': 'BST Operations',
      'title': 'Insert in BST (LC 701)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Insert a value into a Binary Search Tree.',
      'hint':
          'Follow the same logic as search. When you find a null spot, insert the new node.',
      'codeTemplate':
          'if (root == null) return new Node(val);\nif (val < root.val) {\n  root.left = insertBST(___ , val);\n} else {\n  root.right = insertBST(___ , val);\n}\nreturn root;',
      'hardTemplate':
          'Node insert(Node root, int val) {\n  if (root == null) return new Node(val);\n  if (val < root.val) ___ = insert(root.left, val);\n  else ___ = insert(root.right, val);\n  return root;\n}',
      'blocks': {'a': 'root.left', 'b': 'root.right', 'c': 'null'},
      'hardBlocks': {'a': 'root.left', 'b': 'root.right', 'c': 'root'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p13',
      'zone': 15,
      'subcategory': 'BST Operations',
      'title': 'Delete from BST (LC 450)',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Delete a node from a BST (No child / One child case).',
      'hint':
          'Find node, if one child, return that child. If no child, return null.',
      'codeTemplate':
          'if (root.left == null) return ___ ;\nelse if (root.right == null) return ___ ;\n// Two children case handled separately...',
      'hardTemplate':
          'Node delete(Node root, int key) {\n  if (root == null) return null;\n  if (key < root.val) root.left = delete(root.left, key);\n  else if (key > root.val) root.right = delete(root.right, key);\n  else {\n    if (root.left == null) return ___ ;\n    if (root.right == null) return ___ ;\n    // ... complex case\n  }\n  return root;\n}',
      'blocks': {'a': 'root.right', 'b': 'root.left', 'c': 'null'},
      'hardBlocks': {'a': 'root.right', 'b': 'root.left', 'c': 'root'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p14',
      'zone': 15,
      'subcategory': 'BST Operations',
      'title': 'Validate BST (LC 98)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Check if a binary tree is a valid Binary Search Tree.',
      'hint':
          'Use min/max bounds for each node. root must be > left_max and < right_min.',
      'codeTemplate':
          'return check(root.left, min, ___ ) && check(root.right, ___ , max);',
      'hardTemplate':
          'boolean isValid(Node n, Long min, Long max) {\n  if (n == null) return true;\n  if (n.val <= min || n.val >= max) return false;\n  return isValid(n.left, min, ___ ) && isValid(n.right, ___ , max);\n}',
      'blocks': {'a': 'node.val', 'b': 'min', 'c': 'max'},
      'hardBlocks': {'a': '(long)n.val', 'b': '(long)n.val', 'c': 'n.val'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p15',
      'zone': 15,
      'subcategory': 'Level-Order & Views',
      'title': 'Average of Levels (LC 637)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Calculate the average value of nodes on each level.',
      'hint':
          'Standard level-order; sum nodes at each level and divide by level size.',
      'codeTemplate':
          'double sum = 0;\nfor (int i=0; i<sz; i++) {\n  Node n = q.poll();\n  sum += n.val;\n  ...\n}\nres.add(___ / sz);',
      'hardTemplate':
          'List<Double> avg(Node root) {\n  List<Double> res = new ArrayList<>();\n  Queue<Node> q = new LinkedList<>(); q.add(root);\n  while(!q.isEmpty()) {\n    int n = q.size(); double sum = 0;\n    for(int i=0; i<n; i++) {\n      Node curr = q.poll(); sum += curr.val;\n      if(curr.left != null) q.add(curr.left);\n      if(curr.right != null) q.add(curr.right);\n    }\n    res.add(___ );\n  }\n  return res;\n}',
      'blocks': {'a': 'sum', 'b': 'sz', 'c': '1.0'},
      'hardBlocks': {'a': 'sum / n', 'b': 'sum', 'c': 'n'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z15_p16',
      'zone': 15,
      'subcategory': 'Level-Order & Views',
      'title': 'Right Side View (LC 199)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Return the nodes visible from the right side of the tree.',
      'hint':
          'At each level, the last node processed is the one visible from the right.',
      'codeTemplate':
          'for (int i=0; i<sz; i++) {\n  Node n = q.poll();\n  if (i == ___ ) res.add(n.val);\n  ...\n}',
      'hardTemplate':
          'void dfs(Node n, int h) {\n  if(n == null) return;\n  if(h == res.size()) res.add(___ );\n  dfs(n.right, h + 1);\n  dfs(n.left, h + 1);\n}',
      'blocks': {'a': 'sz - 1', 'b': '0', 'c': 'sz'},
      'hardBlocks': {'a': 'n.val', 'b': 'h', 'c': 'res.size()'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z15_p17',
      'zone': 15,
      'subcategory': 'Level-Order & Views',
      'title': 'Zigzag Level Order (LC 103)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Return the zigzag level order traversal (Left-to-Right then Right-to-Left).',
      'hint':
          'Use a boolean flag to reverse the order of level list every other level.',
      'codeTemplate':
          'if (reverse) {\n  list.add(0, n.val);\n} else {\n  list.add(___ );\n}',
      'hardTemplate':
          'while(!q.isEmpty()) {\n  int sz = q.size();\n  LinkedList<Integer> list = new LinkedList<>();\n  for(int i=0; i<sz; i++) {\n    Node n = q.poll();\n    if(reverse) list.addFirst(n.val); else list.addLast(n.val);\n    ...\n  }\n  res.add(list);\n  reverse = ___ ;\n}',
      'blocks': {'a': 'n.val', 'b': 'reverse', 'c': 'false'},
      'hardBlocks': {'a': '!reverse', 'b': 'true', 'c': 'false'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z15_p18',
      'zone': 15,
      'subcategory': 'Level-Order & Views',
      'title': 'Level Order Successor',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Find the node that comes immediately after a given node in level-order.',
      'hint':
          'Standard BFS; the next node in the queue after polling the target is the answer.',
      'codeTemplate':
          'while (!q.isEmpty()) {\n  Node curr = q.poll();\n  if (curr.val == key) ___ ;\n  if (curr.left != null) q.add(curr.left);\n  ...\n}',
      'hardTemplate':
          'Node successor(Node root, int key) {\n  Queue<Node> q = new LinkedList<>(); q.add(root);\n  while(!q.isEmpty()) {\n    Node curr = q.poll();\n    if(curr.left != null) q.add(curr.left);\n    if(curr.right != null) q.add(curr.right);\n    if(curr.val == key) return ___ ;\n  }\n  return null;\n}',
      'blocks': {'a': 'q.poll()', 'b': 'null', 'c': 'break'},
      'hardBlocks': {'a': 'q.poll()', 'b': 'null', 'c': 'curr'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z15_p19',
      'zone': 15,
      'subcategory': 'Level-Order & Views',
      'title': 'Cousins in Binary Tree (LC 993)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Two nodes are cousins if they have the same depth but different parents.',
      'hint':
          'Store depth and parent for both nodes during BFS/DFS and compare.',
      'codeTemplate': 'return (d_x == d_y) && (___);',
      'hardTemplate':
          'boolean isCousins(Node r, int x, int y) {\n  dfs(r, null, 0, x, y);\n  return (depthX == depthY) && (___);\n}',
      'blocks': {
        'a': 'parentX != parentY',
        'b': 'parentX == parentY',
        'c': 'true',
      },
      'hardBlocks': {
        'a': 'parentX != parentY',
        'b': 'parentX == parentY',
        'c': 'true',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z15_p20',
      'zone': 15,
      'subcategory': 'Level-Order & Views',
      'title': 'Populating Next Right Pointers',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Connect each node to its next right node at the same level.',
      'hint':
          'Use level-order; for each node, its `next` is the peek of the queue (if not last in level).',
      'codeTemplate':
          'for (int i=0; i<sz; i++) {\n  Node n = q.poll();\n  if (i < sz - 1) n.next = ___ ;\n  ...\n}',
      'hardTemplate':
          'public Node connect(Node root) {\n  if (root == null) return null;\n  Node leftMost = root;\n  while (leftMost.left != null) {\n    Node curr = leftMost;\n    while (curr != null) {\n      curr.left.next = curr.right;\n      if (curr.next != null) curr.right.next = ___ ;\n      curr = curr.next;\n    }\n    leftMost = ___ ;\n  }\n  return root;\n}',
      'blocks': {'a': 'q.peek()', 'b': 'null', 'c': 'n.left'},
      'hardBlocks': {'a': 'curr.next.left', 'b': 'leftMost.left', 'c': 'null'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p21',
      'zone': 15,
      'subcategory': 'Path & Structure',
      'title': 'Diameter of Binary Tree (LC 543)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find the length of the longest path between any two nodes in a tree.',
      'hint':
          'At each node, diameter is max(left_height + right_height). Use a global variable to track max.',
      'codeTemplate':
          'int height(Node node) {\n  if (node == null) return 0;\n  int l = height(node.left);\n  int r = height(node.right);\n  diameter = Math.max(diameter, ___ );\n  return 1 + Math.max(l, r);\n}',
      'hardTemplate':
          'int height(Node n) {\n  if (n == null) return 0;\n  int l = height(n.left), r = height(n.right);\n  ans = Math.max(ans, ___ );\n  return ___ ;\n}',
      'blocks': {'a': 'l + r', 'b': 'Math.max(l, r)', 'c': '1'},
      'hardBlocks': {'a': 'l + r', 'b': '1 + Math.max(l, r)', 'c': 'ans'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p22',
      'zone': 15,
      'subcategory': 'Path & Structure',
      'title': 'Max Path Sum (LC 124)',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Find the maximum path sum in a binary tree.',
      'hint':
          'Similar to diameter, but track sum. Use Math.max(0, side) to ignore negative paths.',
      'codeTemplate':
          'int maxGain(Node node) {\n  if (node == null) return 0;\n  int leftGain = Math.max(maxGain(node.left), ___ );\n  int rightGain = Math.max(maxGain(node.right), ___ );\n  int priceNewpath = node.val + leftGain + rightGain;\n  maxSum = Math.max(maxSum, priceNewpath);\n  return node.val + Math.max(leftGain, rightGain);\n}',
      'hardTemplate':
          'int solve(Node n) {\n  if(n == null) return 0;\n  int l = Math.max(0, solve(n.left));\n  int r = Math.max(0, solve(n.right));\n  res = Math.max(res, ___ );\n  return ___ ;\n}',
      'blocks': {'a': '0', 'b': 'node.val', 'c': '1'},
      'hardBlocks': {
        'a': 'n.val + l + r',
        'b': 'n.val + Math.max(l, r)',
        'c': 'res',
      },
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p23',
      'zone': 15,
      'subcategory': 'Path & Structure',
      'title': 'Path Sum II (LC 113)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Find all root-to-leaf paths where sum equals target.',
      'hint':
          'Backtracking: add node to list, if leaf and sum matches add to result, then remove node.',
      'codeTemplate':
          'path.add(root.val);\nif (root.left == null && root.right == null && targetSum == root.val) {\n  res.add(new ArrayList<>(path));\n} else {\n  solve(root.left, targetSum - root.val, path, res);\n  solve(root.right, targetSum - root.val, path, res);\n}\npath.remove(___ );',
      'hardTemplate':
          'void dfs(Node n, int s, List<Integer> p) {\n  if (n == null) return;\n  p.add(n.val);\n  if (n.left == null && n.right == null && s == n.val) res.add(new ArrayList<>(p));\n  else {\n    dfs(n.left, s - n.val, p);\n    dfs(n.right, s - n.val, p);\n  }\n  ___ ;\n}',
      'blocks': {'a': 'path.size() - 1', 'b': '0', 'c': 'root.val'},
      'hardBlocks': {
        'a': 'p.remove(p.size() - 1)',
        'b': 'p.clear()',
        'c': 'return',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z15_p24',
      'zone': 15,
      'subcategory': 'Path & Structure',
      'title': 'Binary Tree Tilt (LC 563)',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Find the sum of all node tilts. Tilt is abs(sum_left - sum_right).',
      'hint':
          'Return total sum from subtree, but add abs(l - r) to a global tilt sum.',
      'codeTemplate':
          'int left = sum(node.left);\nint right = sum(node.right);\ntotalTilt += Math.abs(___ );\nreturn node.val + left + right;',
      'hardTemplate':
          'int traverse(Node n) {\n  if(n == null) return 0;\n  int l = traverse(n.left);\n  int r = traverse(n.right);\n  ans += ___ ;\n  return ___ ;\n}',
      'blocks': {'a': 'left - right', 'b': 'left + right', 'c': '0'},
      'hardBlocks': {'a': 'Math.abs(l - r)', 'b': 'n.val + l + r', 'c': 'ans'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p25',
      'zone': 15,
      'subcategory': 'Path & Structure',
      'title': 'Invert Binary Tree (LC 226)',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Swap every left and right child in the tree.',
      'hint':
          'Standard swap: Node temp = left; left = right; right = temp. Recurse for both.',
      'codeTemplate':
          'Node temp = root.left;\nroot.left = ___ ;\nroot.right = ___ ;\ninvert(root.left);\ninvert(root.right);',
      'hardTemplate':
          'public Node invert(Node root) {\n  if(root == null) return null;\n  Node t = root.left;\n  ___ = root.right;\n  ___ = t;\n  invert(root.left);\n  invert(root.right);\n  return root;\n}',
      'blocks': {'a': 'root.right', 'b': 'temp', 'c': 'null'},
      'hardBlocks': {'a': 'root.left', 'b': 'root.right', 'c': 't'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p26',
      'zone': 15,
      'subcategory': 'LC Mix',
      'title': 'Symmetric Tree (LC 101)',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Check if a tree is a mirror of itself.',
      'hint':
          'Compare left subtree\'s left with right subtree\'s right, and vice versa.',
      'codeTemplate':
          'if (t1 == null || t2 == null) return t1 == t2;\nreturn (t1.val == t2.val)\n  && isMirror(t1.left, ___ )\n  && isMirror(t1.right, ___ );',
      'hardTemplate':
          'boolean isMirror(Node n1, Node n2) {\n  if (n1 == null && n2 == null) return true;\n  if (n1 == null || n2 == null) return false;\n  return (n1.val == n2.val) && ___ && ___ ;\n}',
      'blocks': {'a': 't2.right', 'b': 't2.left', 'c': 't1'},
      'hardBlocks': {
        'a': 'isMirror(n1.left, n2.right)',
        'b': 'isMirror(n1.right, n2.left)',
        'c': 'true',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p27',
      'zone': 15,
      'subcategory': 'LC Mix',
      'title': 'Lowest Common Ancestor (LC 236)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Find the lowest common ancestor of two given nodes.',
      'hint':
          'If root matches p or q, return root. Recurse for both sides. If both return non-null, root is LCA.',
      'codeTemplate':
          'Node left = lca(root.left, p, q);\nNode right = lca(root.right, p, q);\nif (left != null && right != null) return root;\nreturn (left != null) ? ___ : ___ ;',
      'hardTemplate':
          'Node lca(Node r, Node p, Node q) {\n  if(r == null || r == p || r == q) return r;\n  Node l = lca(r.left, p, q), rSide = lca(r.right, p, q);\n  if (l != null && rSide != null) ___ ;\n  return ___ ;\n}',
      'blocks': {'a': 'left', 'b': 'right', 'c': 'null'},
      'hardBlocks': {
        'a': 'return r',
        'b': '(l != null) ? l : rSide',
        'c': 'null',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p28',
      'zone': 15,
      'subcategory': 'LC Mix',
      'title': 'Construct Tree (Pre & In LC 105)',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Reconstruct tree from its preorder and inorder traversals.',
      'hint':
          'First element of preorder is root. Find it in inorder to split left/right subtrees.',
      'codeTemplate':
          'Node root = new Node(preorder[preIndex++]);\nint mid = map.get(root.val);\nroot.left = solve(preorder, map, left, ___ );\nroot.right = solve(preorder, map, ___ , right);\nreturn root;',
      'hardTemplate':
          'Node build(int[] pre, Map<Integer, Integer> map, int l, int r) {\n  if(l > r) return null;\n  Node root = new Node(pre[pIdx++]);\n  int mid = map.get(root.val);\n  root.left = build(pre, map, l, ___ );\n  root.right = build(pre, map, ___ , r);\n  return root;\n}',
      'blocks': {'a': 'mid - 1', 'b': 'mid + 1', 'c': '0'},
      'hardBlocks': {'a': 'mid - 1', 'b': 'mid + 1', 'c': 'mid'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p29',
      'zone': 15,
      'subcategory': 'LC Mix',
      'title': 'Balanced Binary Tree (LC 110)',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Check if height difference of left/right subtrees is at most 1 everywhere.',
      'hint':
          'Modified height function: return -1 if unbalanced. If max(l,r) - min(l,r) > 1 return -1.',
      'codeTemplate':
          'if (l == -1 || r == -1 || Math.abs(l - r) > 1) return -1;\nreturn 1 + Math.max(___ );',
      'hardTemplate':
          'int check(Node n) {\n  if(n == null) return 0;\n  int l = check(n.left), r = check(n.right);\n  if (___) return -1;\n  return ___ ;\n}',
      'blocks': {'a': 'l, r', 'b': 'l + r', 'c': '0'},
      'hardBlocks': {
        'a': 'l == -1 || r == -1 || Math.abs(l-r) > 1',
        'b': '1 + Math.max(l, r)',
        'c': 'true',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z15_p30',
      'zone': 15,
      'subcategory': 'LC Mix',
      'title': 'Flatten BT to Linked List (LC 114)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Flatten a tree into a single-child chain using pre-order sequence.',
      'hint':
          'At each node with left child: find rightmost of left subtree, make node.right its child, then move left subtree to right.',
      'codeTemplate':
          'if (curr.left != null) {\n  Node last = curr.left;\n  while (last.right != null) last = last.right;\n  last.right = ___ ;\n  curr.right = ___ ;\n  curr.left = null;\n}',
      'hardTemplate':
          'public void flatten(Node root) {\n  Node curr = root;\n  while(curr != null) {\n    if (curr.left != null) {\n      Node last = curr.left;\n      while(last.right != null) last = last.right;\n      last.right = ___ ;\n      curr.right = ___ ;\n      curr.left = null;\n    }\n    curr = ___ ;\n  }\n}',
      'blocks': {'a': 'curr.right', 'b': 'curr.left', 'c': 'null'},
      'hardBlocks': {'a': 'curr.right', 'b': 'curr.left', 'c': 'curr.right'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    // ── ZONE 16: Hashmaps ──
    {
      'id': 'z16_p1',
      'zone': 16,
      'subcategory': 'Basics',
      'title': 'Hashmap Basics',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Create a HashMap to store key-value pairs (String -> Integer).',
      'hint': 'Use `put(key, value)` to add, and `get(key)` to retrieve.',
      'codeTemplate':
          'Map<String, Integer> map = new ___<>();\nmap.___("Alice", 25);\nmap.put("Bob", 30);\nSystem.out.println(map.___("Alice"));',
      'hardTemplate':
          'Map<String, Integer> map = new ___<>();\nmap.___("Alice", 25);\nSystem.out.println(map.___("Alice"));',
      'blocks': {'a': 'HashMap', 'b': 'put', 'c': 'get'},
      'hardBlocks': {'a': 'HashMap', 'b': 'put', 'c': 'get'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p2',
      'zone': 16,
      'subcategory': 'Basics',
      'title': 'Frequency Map',
      'difficulty': 'Easy',
      'xp': 120,
      'description': 'Count the frequency of each element in an array.',
      'hint': 'Use `map.put(num, map.getOrDefault(num, 0) + 1)`.',
      'codeTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nfor (int num : nums) {\n  map.put(num, map.___(num, 0) + 1);\n}\nreturn map;',
      'hardTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nfor (int num : nums) {\n  map.put(num, map.___(num, ___) + ___);\n}\nreturn map;',
      'blocks': {'a': 'getOrDefault', 'b': 'putIfAbsent', 'c': 'containsKey'},
      'hardBlocks': {'a': 'getOrDefault', 'b': '0', 'c': '1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p3',
      'zone': 16,
      'subcategory': 'Pairs & Lookups',
      'title': 'Two Sum Hashmap (LC 1)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Find two numbers that sum to target.',
      'hint':
          'Store values and their indices. For each num, check if (target - num) is in map.',
      'codeTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nfor (int i = 0; i < nums.length; i++) {\n  int comp = target - nums[i];\n  if (map.___(comp)) {\n    return new int[]{map.get(comp), ___};\n  }\n  map.___(nums[i], i);\n}\nreturn new int[]{};',
      'hardTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nfor (int i = 0; i < nums.length; i++) {\n  int comp = target - nums[i];\n  if (map.___(comp)) {\n    return new int[]{___, i};\n  }\n  map.___(nums[i], i);\n}\nreturn new int[0];',
      'blocks': {'a': 'containsKey', 'b': 'i', 'c': 'put'},
      'hardBlocks': {'a': 'containsKey', 'b': 'map.get(comp)', 'c': 'put'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p4',
      'zone': 16,
      'subcategory': 'Sets',
      'title': 'Intersection of Arrays (LC 349)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Find common elements between two arrays.',
      'hint': 'Use a HashSet for O(1) lookups.',
      'codeTemplate':
          'Set<Integer> set = new HashSet<>();\nSet<Integer> intersect = new HashSet<>();\nfor (int n : nums1) set.___(n);\nfor (int n : nums2) {\n  if (set.___(n)) {\n    intersect.add(n);\n  }\n}\n// Convert intersect to array...',
      'hardTemplate':
          'Set<Integer> set = new HashSet<>();\nSet<Integer> res = new HashSet<>();\nfor (int n : nums1) set.___(n);\nfor (int n : nums2) {\n  if (set.___(n)) res.___(n);\n}\n// Convert res to array...',
      'blocks': {'a': 'add', 'b': 'containsKey', 'c': 'contains'},
      'hardBlocks': {'a': 'add', 'b': 'contains', 'c': 'add'},
      'solution': {'1': 'a', '2': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p5',
      'zone': 16,
      'subcategory': 'Frequencies',
      'title': 'First Unique Character (LC 387)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Find the first non-repeating character in a string and return its index.',
      'hint':
          'First pass: store frequencies. Second pass: find first character with frequency 1.',
      'codeTemplate':
          'Map<Character, Integer> counts = new HashMap<>();\nfor (char c : s.toCharArray()) {\n  counts.put(c, counts.getOrDefault(c, 0) + 1);\n}\nfor (int i = 0; i < s.length(); i++) {\n  if (counts.___(s.charAt(i)) == ___) {\n    return i;\n  }\n}\nreturn -1;',
      'hardTemplate':
          'Map<Character, Integer> counts = new HashMap<>();\nfor (char c : s.toCharArray()) {\n  counts.put(c, counts.___(c, 0) + 1);\n}\nfor (int i = 0; i < s.length(); i++) {\n  if (counts.___(s.charAt(i)) == 1) return i;\n}\nreturn -1;',
      'blocks': {'a': 'get', 'b': '1', 'c': '0'},
      'hardBlocks': {'a': 'getOrDefault', 'b': 'get', 'c': 'return'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z16_p6',
      'zone': 16,
      'subcategory': 'Frequencies',
      'title': 'Valid Anagram (LC 242)',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Check if string T is an anagram of string S.',
      'hint':
          'Count frequencies of chars in S, then decrement for chars in T. All counts must be 0.',
      'codeTemplate':
          'if (s.length() != t.length()) return false;\nint[] counts = new int[26];\nfor (int i = 0; i < s.length(); i++) {\n  counts[s.charAt(i) - \'a\']___;\n  counts[t.charAt(i) - \'a\']___;\n}\nfor (int count : counts) {\n  if (count != ___) return false;\n}\nreturn true;',
      'hardTemplate':
          'if (s.length() != t.length()) return false;\nint[] counts = new int[26];\nfor (int i = 0; i < s.length(); i++) {\n  counts[s.charAt(i) - \'a\']___;\n  counts[t.charAt(i) - \'a\']___;\n}\nfor (int c : counts) if (c != 0) return ___;\nreturn true;',
      'blocks': {'a': '++', 'b': '--', 'c': '0'},
      'hardBlocks': {'a': '++', 'b': '--', 'c': 'false'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p7',
      'zone': 16,
      'subcategory': 'Mappings',
      'title': 'Isomorphic Strings (LC 205)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Determine if the characters in s can be replaced to get t.',
      'hint':
          'Map characters sequentially (a -> b) or compare first seen indices.',
      'codeTemplate':
          'Map<Character, Character> map1 = new HashMap<>();\nMap<Character, Character> map2 = new HashMap<>();\nfor (int i = 0; i < s.length(); i++) {\n  char c1 = s.charAt(i), c2 = t.charAt(i);\n  if (map1.containsKey(c1) && map1.get(c1) != c2) return false;\n  if (map2.containsKey(c2) && map2.get(c2) != c1) return ___;\n  map1.put(c1, c2);\n  map2.put(c2, c1);\n}\nreturn ___;',
      'hardTemplate':
          'int[] m1 = new int[256];\nint[] m2 = new int[256];\nfor(int i = 0; i < s.length(); i++) {\n  if(m1[s.charAt(i)] != m2[t.charAt(i)]) return ___;\n  m1[s.charAt(i)] = i + 1;\n  m2[t.charAt(i)] = i + 1;\n}\nreturn ___;',
      'blocks': {'a': 'false', 'b': 'true', 'c': 'break'},
      'hardBlocks': {'a': 'false', 'b': 'true', 'c': '0'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z16_p8',
      'zone': 16,
      'subcategory': 'Mappings',
      'title': 'Word Pattern (LC 290)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Given a pattern and a string s, find if s follows the same pattern.',
      'hint': 'Similar to isomorphic strings but mapping chars to words.',
      'codeTemplate':
          'String[] words = s.split(" ");\nif (pattern.length() != words.length) return false;\nMap<___, ___> map = new HashMap<>();\nfor (Integer i = 0; i < words.length; i++) {\n  if (map.put(pattern.charAt(i), i) != map.put(words[i], i)) {\n    return false;\n  }\n}\nreturn true;',
      'hardTemplate':
          'String[] words = s.split(" ");\nif (pattern.length() != words.length) return false;\nMap<___, ___> map = new HashMap<>();\nfor (Integer i = 0; i < words.length; i++) {\n  if (map.put(pattern.charAt(i), i) != map.put(words[i], i)) return ___;\n}\nreturn true;',
      'blocks': {'a': 'Object', 'b': 'Integer', 'c': 'String'},
      'hardBlocks': {'a': 'Object', 'b': 'Integer', 'c': 'false'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p9',
      'zone': 16,
      'subcategory': 'Grouping',
      'title': 'Group Anagrams (LC 49)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Group anagrams from an array of strings.',
      'hint':
          'Use the sorted version of the string (or char freq array) as the HashMap key.',
      'codeTemplate':
          'Map<String, List<String>> map = new HashMap<>();\nfor (String s : strs) {\n  char[] arr = s.toCharArray();\n  Arrays.___ (arr);\n  String key = new String(arr);\n  map.putIfAbsent(key, new ArrayList<>());\n  map.get(key).___(s);\n}\nreturn new ArrayList<>(map.values());',
      'hardTemplate':
          'Map<String, List<String>> map = new HashMap<>();\nfor (String s : strs) {\n  char[] ca = s.toCharArray();\n  Arrays.___ (ca);\n  String key = String.valueOf(ca);\n  if (!map.___(key)) map.put(key, new ArrayList<>());\n  map.get(key).___(s);\n}\nreturn new ArrayList<>(map.values());',
      'blocks': {'a': 'sort', 'b': 'put', 'c': 'add'},
      'hardBlocks': {'a': 'sort', 'b': 'containsKey', 'c': 'add'},
      'solution': {'1': 'a', '2': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p10',
      'zone': 16,
      'subcategory': 'Prefix Sum Map',
      'title': 'Subarray Sum Equals K (LC 560)',
      'difficulty': 'Medium',
      'xp': 220,
      'description':
          'Find total number of continuous subarrays whose sum equals k.',
      'hint':
          'Use a map to store prefix_sum -> frequency. Check for (prefix_sum - k).',
      'codeTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nmap.put(0, 1);\nint sum = 0, count = 0;\nfor (int n : nums) {\n  sum += n;\n  if (map.___(sum - k)) {\n    count += map.get(sum - k);\n  }\n  map.put(sum, map.getOrDefault(sum, 0) + 1);\n}\nreturn ___;',
      'hardTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nmap.put(0, 1);\nint sum = 0, count = 0;\nfor (int n : nums) {\n  sum += n;\n  count += map.getOrDefault(sum - k, ___);\n  map.put(sum, map.getOrDefault(sum, 0) + ___);\n}\nreturn ___;',
      'blocks': {'a': 'containsKey', 'b': 'count', 'c': 'sum'},
      'hardBlocks': {'a': '0', 'b': '1', 'c': 'count'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p11',
      'zone': 16,
      'subcategory': 'Frequencies',
      'title': 'Determine if Two Strings Are Close',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Two strings are close if you can attain one from the other via swapping characters or transforming every occurrence of one char into another. (LC 1657)',
      'hint':
          'They must have the same set of characters, and their frequency arrays (when sorted) must be identical.',
      'codeTemplate':
          'if (word1.length() != word2.length()) return false;\nint[] f1 = new int[26], f2 = new int[26];\nfor (char c : word1.toCharArray()) f1[c - \'a\']++;\nfor (char c : word2.toCharArray()) f2[c - \'a\']++;\nfor (int i = 0; i < 26; i++) {\n  if ((f1[i] == 0 && f2[i] != 0) || (f1[i] != 0 && f2[i] == 0)) return ___; \n}\nArrays.___(f1);\nArrays.___(f2);\nreturn Arrays.___(f1, f2);',
      'hardTemplate':
          'if (word1.length() != word2.length()) return false;\nint[] f1 = new int[26], f2 = new int[26];\nfor (char c : word1.toCharArray()) f1[c - \'a\']++;\nfor (char c : word2.toCharArray()) f2[c - \'a\']++;\nfor (int i = 0; i < 26; i++) {\n  if ((f1[i] == 0 && f2[i] != 0) || (f1[i] != 0 && f2[i] == 0)) return ___; \n}\nArrays.___(f1);\nArrays.___(f2);\nreturn Arrays.___(f1, f2);',
      'blocks': {'a': 'false', 'b': 'sort', 'c': 'equals'},
      'hardBlocks': {'a': 'false', 'b': 'sort', 'c': 'equals'},
      'solution': {'1': 'a', '2': 'b', '3': 'b', '4': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'b', '4': 'c'},
    },
    {
      'id': 'z16_p12',
      'zone': 16,
      'subcategory': 'Frequencies',
      'title': 'Find Players With Zero or One Losses',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Return list of players who have not lost any matches, and list of players who lost exactly one match. (LC 2225)',
      'hint':
          'Use a map or array to count losses. Count as 0 if they win but aren\'t in map yet.',
      'codeTemplate':
          'Map<Integer, Integer> losses = new TreeMap<>();\nfor (int[] match : matches) {\n  losses.putIfAbsent(match[0], 0);\n  losses.put(match[1], losses.___(match[1], 0) + 1);\n}\nList<Integer> zeroLoss = new ArrayList<>();\nList<Integer> oneLoss = new ArrayList<>();\nfor (int player : losses.___()) {\n  if (losses.get(player) == 0) zeroLoss.add(player);\n  else if (losses.get(player) == 1) oneLoss.add(player);\n}\nreturn Arrays.asList(zeroLoss, oneLoss);',
      'hardTemplate':
          'Map<Integer, Integer> losses = new TreeMap<>();\nfor (int[] match : matches) {\n  losses.putIfAbsent(match[0], 0);\n  losses.put(match[1], losses.___(match[1], 0) + 1);\n}\nList<Integer> zeroLoss = new ArrayList<>();\nList<Integer> oneLoss = new ArrayList<>();\nfor (int player : losses.___()) {\n  if (losses.get(player) == 0) zeroLoss.add(player);\n  else if (losses.get(player) == 1) oneLoss.add(player);\n}\nreturn Arrays.asList(zeroLoss, oneLoss);',
      'blocks': {'a': 'getOrDefault', 'b': 'keySet', 'c': 'values'},
      'hardBlocks': {'a': 'getOrDefault', 'b': 'keySet', 'c': 'values'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z16_p13',
      'zone': 16,
      'subcategory': 'Sorting',
      'title': 'Sort Characters By Frequency',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Sort a string in decreasing order based on the frequency of the characters. (LC 451)',
      'hint':
          'Count frequencies, then use a PriorityQueue, array sorting, or bucket sort.',
      'codeTemplate':
          'Map<Character, Integer> counts = new HashMap<>();\nfor (char c : s.toCharArray()) counts.put(c, counts.getOrDefault(c, 0) + 1);\nList<Character> list = new ArrayList<>(counts.keySet());\nlist.___( (a, b) -> counts.get(b) - counts.get(a) );\nStringBuilder sb = new StringBuilder();\nfor (char c : list) {\n  for (int i = 0; i < counts.get(c); i++) sb.___(c);\n}\nreturn sb.___();',
      'hardTemplate':
          'Map<Character, Integer> counts = new HashMap<>();\nfor (char c : s.toCharArray()) counts.put(c, counts.getOrDefault(c, 0) + 1);\nList<Character> list = new ArrayList<>(counts.keySet());\nlist.___( (a, b) -> counts.get(b) - counts.get(a) );\nStringBuilder sb = new StringBuilder();\nfor (char c : list) {\n  for (int i = 0; i < counts.get(c); i++) sb.___(c);\n}\nreturn sb.___();',
      'blocks': {'a': 'sort', 'b': 'append', 'c': 'toString'},
      'hardBlocks': {'a': 'sort', 'b': 'append', 'c': 'toString'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z16_p14',
      'zone': 16,
      'subcategory': 'Sorting',
      'title': 'Custom Sort String',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Permute the characters of string s so they match the order that order string was sorted. (LC 791)',
      'hint':
          'Count chars in `s`. Build answer string following the chars in `order`. Then append remaining chars.',
      'codeTemplate':
          'int[] count = new int[26];\nfor (char c : s.toCharArray()) count[c - \'a\']++;\nStringBuilder sb = new StringBuilder();\nfor (char c : order.toCharArray()) {\n  while (count[c - \'a\'] > 0) {\n    sb.append(c);\n    count[c - \'a\']___;\n  }\n}\nfor (char c = \'a\'; c <= \'z\'; c++) {\n  while (count[c - \'a\'] > 0) {\n    sb.append(c);\n    count[c - \'a\']___;\n  }\n}\nreturn sb.toString();',
      'hardTemplate':
          'int[] count = new int[26];\nfor (char c : s.toCharArray()) count[c - \'a\']++;\nStringBuilder sb = new StringBuilder();\nfor (char c : order.toCharArray()) {\n  while (count[c - \'a\'] > 0) {\n    sb.append(c);\n    count[c - \'a\']___;\n  }\n}\nfor (char c = \'a\'; c <= \'z\'; c++) {\n  while (count[c - \'a\'] > 0) {\n    sb.append(c);\n    count[c - \'a\']___;\n  }\n}\nreturn sb.toString();',
      'blocks': {'a': '--', 'b': '++', 'c': '0'},
      'hardBlocks': {'a': '--', 'b': '++', 'c': '0'},
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'a'},
    },
    {
      'id': 'z16_p15',
      'zone': 16,
      'subcategory': 'Counting',
      'title': 'Majority Element',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Find the element that appears more than n/2 times. (LC 169)',
      'hint':
          'Can be solved using a HashMap, or sorting, or Boyer-Moore Voting Algorithm.',
      'codeTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nint n = nums.length;\nfor (int num : nums) {\n  map.put(num, map.getOrDefault(num, 0) + 1);\n  if (map.get(num) > n / 2) {\n    return ___;\n  }\n}\nreturn -1;',
      'hardTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nint n = nums.length;\nfor (int num : nums) {\n  map.put(num, map.getOrDefault(num, 0) + 1);\n  if (map.get(num) > n / 2) {\n    return ___;\n  }\n}\nreturn -1;',
      'blocks': {'a': 'num', 'b': 'map.get(num)', 'c': 'n'},
      'hardBlocks': {'a': 'num', 'b': 'map.get(num)', 'c': 'n'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p16',
      'zone': 16,
      'subcategory': 'Counting',
      'title': 'Find the Difference',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'String t is generated by random shuffling string s and then adding one more letter. Find it. (LC 389)',
      'hint':
          'Count character frequencies of t, subtract frequencies of s. Or use XOR.',
      'codeTemplate':
          'int[] count = new int[26];\nfor (char c : t.toCharArray()) count[c - \'a\']++;\nfor (char c : s.toCharArray()) count[c - \'a\']--;\nfor (int i = 0; i < 26; i++) {\n  if (count[i] == ___) return (char)(i + \'a\');\n}\nreturn \'a\';',
      'hardTemplate':
          'int[] count = new int[26];\nfor (char c : t.toCharArray()) count[c - \'a\']++;\nfor (char c : s.toCharArray()) count[c - \'a\']--;\nfor (int i = 0; i < 26; i++) {\n  if (count[i] == ___) return (char)(i + \'a\');\n}\nreturn \'a\';',
      'blocks': {'a': '1', 'b': '0', 'c': '-1'},
      'hardBlocks': {'a': '1', 'b': '0', 'c': '-1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p17',
      'zone': 16,
      'subcategory': 'Counting',
      'title': 'Longest Palindrome',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Length of the longest palindrome that can be built with the string letters. (LC 409)',
      'hint':
          'Pairs of letters can be in the palindrome. At most one unpaired letter can be in the center.',
      'codeTemplate':
          'int[] count = new int[128];\nfor (char c : s.toCharArray()) count[c]++;\nint ans = 0;\nfor (int v : count) {\n  ans += v / 2 * 2;\n  if (ans % 2 == 0 && v % 2 == 1) {\n    ans___;\n  }\n}\nreturn ans;',
      'hardTemplate':
          'int[] count = new int[128];\nfor (char c : s.toCharArray()) count[c]++;\nint ans = 0;\nfor (int v : count) {\n  ans += v / 2 * 2;\n  if (ans % 2 == 0 && v % 2 == 1) {\n    ans___;\n  }\n}\nreturn ans;',
      'blocks': {'a': '++', 'b': '--', 'c': '+= 2'},
      'hardBlocks': {'a': '++', 'b': '--', 'c': '+= 2'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p18',
      'zone': 16,
      'subcategory': 'Sets',
      'title': 'Valid Sudoku',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Determine if a 9x9 Sudoku board is valid. (LC 36)',
      'hint':
          'Use HashSets to see if we\'ve seen a number in the current row, collumn, or 3x3 block.',
      'codeTemplate':
          'Set<String> seen = new HashSet<>();\nfor (int i=0; i<9; ++i) {\n  for (int j=0; j<9; ++j) {\n    char num = board[i][j];\n    if (num != \'.\') {\n      if (!seen.add(num + " in row " + i) ||\n          !seen.add(num + " in col " + j) ||\n          !seen.add(num + " in block " + i/3 + "-" + j/3))\n        return ___;\n    }\n  }\n}\nreturn ___;',
      'hardTemplate':
          'Set<String> seen = new HashSet<>();\nfor (int i=0; i<9; ++i) {\n  for (int j=0; j<9; ++j) {\n    char num = board[i][j];\n    if (num != \'.\') {\n      if (!seen.add(num + " in row " + i) ||\n          !seen.add(num + " in col " + j) ||\n          !seen.add(num + " in block " + i/3 + "-" + j/3))\n        return ___;\n    }\n  }\n}\nreturn ___;',
      'blocks': {'a': 'false', 'b': 'true', 'c': 'break'},
      'hardBlocks': {'a': 'false', 'b': 'true', 'c': 'break'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z16_p19',
      'zone': 16,
      'subcategory': 'Counting',
      'title': 'Degree of an Array',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Find the smallest contiguous subarray that has the same degree (max freq) as the whole array. (LC 697)',
      'hint':
          'Store frequency, first seen index, and last seen index for each element.',
      'codeTemplate':
          'Map<Integer, Integer> left = new HashMap<>(), right = new HashMap<>(), count = new HashMap<>();\nfor (int i = 0; i < nums.length; i++) {\n  int x = nums[i];\n  if (left.get(x) == null) left.put(x, i);\n  right.put(x, i);\n  count.put(x, count.getOrDefault(x, 0) + 1);\n}\nint ans = nums.length, degree = Collections.max(count.values());\nfor (int x : count.keySet()) {\n  if (count.get(x) == degree) {\n    ans = Math.min(ans, right.get(x) - left.get(x) + ___ );\n  }\n}\nreturn ans;',
      'hardTemplate':
          'Map<Integer, Integer> left = new HashMap<>(), right = new HashMap<>(), count = new HashMap<>();\nfor (int i = 0; i < nums.length; i++) {\n  int x = nums[i];\n  if (left.get(x) == null) left.put(x, i);\n  right.put(x, i);\n  count.put(x, count.getOrDefault(x, 0) + 1);\n}\nint ans = nums.length, degree = Collections.max(count.values());\nfor (int x : count.keySet()) {\n  if (count.get(x) == degree) {\n    ans = Math.min(ans, right.get(x) - left.get(x) + ___ );\n  }\n}\nreturn ans;',
      'blocks': {'a': '1', 'b': '0', 'c': '2'},
      'hardBlocks': {'a': '1', 'b': '0', 'c': '2'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p20',
      'zone': 16,
      'subcategory': 'Sets',
      'title': 'Largest Positive Integer With Negative',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Find largest positive integer k such that -k also exists in the array. (LC 2441)',
      'hint':
          'Add all numbers to a HashSet. Then iterate to find the max valid integer.',
      'codeTemplate':
          'Set<Integer> set = new HashSet<>();\nfor (int n : nums) set.add(n);\nint max = -1;\nfor (int n : nums) {\n  if (n > 0 && set.contains(___)) {\n    max = Math.max(max, n);\n  }\n}\nreturn max;',
      'hardTemplate':
          'Set<Integer> set = new HashSet<>();\nfor (int n : nums) set.add(n);\nint max = -1;\nfor (int n : nums) {\n  if (n > 0 && set.contains(___)) {\n    max = Math.max(max, n);\n  }\n}\nreturn max;',
      'blocks': {'a': '-n', 'b': 'n * -1', 'c': 'n'},
      'hardBlocks': {'a': '-n', 'b': 'n * -1', 'c': 'n'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p21',
      'zone': 16,
      'subcategory': 'Counting',
      'title': 'Unique Number of Occurrences',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Given an array of integers arr, return true if the number of occurrences of each value in the array is unique or false otherwise. (LC 1207)',
      'hint':
          'Count frequencies, then put frequencies into a HashSet. If sizes match, they are unique.',
      'codeTemplate':
          'Map<Integer, Integer> count = new HashMap<>();\nfor (int a : arr) {\n  count.put(a, count.getOrDefault(a, 0) + 1);\n}\nreturn count.size() == new ___(count.values()).___();',
      'hardTemplate':
          'Map<Integer, Integer> count = new HashMap<>();\nfor (int a : arr) {\n  count.put(a, count.getOrDefault(a, 0) + 1);\n}\nreturn count.size() == new ___(count.values()).___();',
      'blocks': {'a': 'HashSet', 'b': 'size'},
      'hardBlocks': {'a': 'HashSet', 'b': 'size'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z16_p22',
      'zone': 16,
      'subcategory': 'Sets',
      'title': 'Rings and Rods',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Count rods that have all 3 colors of rings (R, G, B). (LC 2103)',
      'hint':
          'Use an array of Sets, or bit manipulation to track colors per rod.',
      'codeTemplate':
          'int[] rods = new int[10];\nfor (int i = 0; i < rings.length(); i += 2) {\n  char color = rings.charAt(i);\n  int rod = rings.charAt(i + 1) - \'0\';\n  if (color == \'R\') rods[rod] |= 1;\n  else if (color == \'G\') rods[rod] |= 2;\n  else if (color == \'B\') rods[rod] |= 4;\n}\nint count = 0;\nfor (int r : rods) {\n  if (r == ___) count++;\n}\nreturn count;',
      'hardTemplate':
          'int[] rods = new int[10];\nfor (int i = 0; i < rings.length(); i += 2) {\n  char color = rings.charAt(i);\n  int rod = rings.charAt(i + 1) - \'0\';\n  if (color == \'R\') rods[rod] |= 1;\n  else if (color == \'G\') rods[rod] |= 2;\n  else if (color == \'B\') rods[rod] |= 4;\n}\nint count = 0;\nfor (int r : rods) {\n  if (r == ___) count++;\n}\nreturn count;',
      'blocks': {'a': '7', 'b': '3', 'c': '6'},
      'hardBlocks': {'a': '7', 'b': '3', 'c': '6'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p23',
      'zone': 16,
      'subcategory': 'Counting',
      'title': 'Find Common Characters',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Find characters that show up in all strings within the array. (LC 1002)',
      'hint':
          'Keep a global minimum frequency array, updated by comparing with local frequency array of each string.',
      'codeTemplate':
          'int[] minFreq = new int[26];\nArrays.fill(minFreq, Integer.MAX_VALUE);\nfor (String w : words) {\n  int[] freq = new int[26];\n  for (char c : w.toCharArray()) freq[c - \'a\']++;\n  for (int i = 0; i < 26; i++) {\n    minFreq[i] = Math.___(minFreq[i], freq[i]);\n  }\n}\nList<String> ans = new ArrayList<>();\nfor (int i = 0; i < 26; i++) {\n  while (minFreq[i]-- > 0) ans.add(String.valueOf((char)(i + \'a\')));\n}\nreturn ans;',
      'hardTemplate':
          'int[] minFreq = new int[26];\nArrays.fill(minFreq, Integer.MAX_VALUE);\nfor (String w : words) {\n  int[] freq = new int[26];\n  for (char c : w.toCharArray()) freq[c - \'a\']++;\n  for (int i = 0; i < 26; i++) {\n    minFreq[i] = Math.___(minFreq[i], freq[i]);\n  }\n}\nList<String> ans = new ArrayList<>();\nfor (int i = 0; i < 26; i++) {\n  while (minFreq[i]-- > 0) ans.add(String.valueOf((char)(i + \'a\')));\n}\nreturn ans;',
      'blocks': {'a': 'min', 'b': 'max', 'c': 'abs'},
      'hardBlocks': {'a': 'min', 'b': 'max', 'c': 'abs'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p24',
      'zone': 16,
      'subcategory': 'Counting',
      'title': 'Minimum Steps to Make Anagram',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Find minimum steps to make t an anagram of s. (LC 1347)',
      'hint':
          'Count frequency of characters in s, subtract for characters in t. Sum all positive differences.',
      'codeTemplate':
          'int[] count = new int[26];\nfor (char c : s.toCharArray()) count[c - \'a\']++;\nfor (char c : t.toCharArray()) count[c - \'a\']--;\nint steps = 0;\nfor (int i : count) {\n  if (i > 0) steps += ___;\n}\nreturn steps;',
      'hardTemplate':
          'int[] count = new int[26];\nfor (char c : s.toCharArray()) count[c - \'a\']++;\nfor (char c : t.toCharArray()) count[c - \'a\']--;\nint steps = 0;\nfor (int i : count) {\n  if (i > 0) steps += ___;\n}\nreturn steps;',
      'blocks': {'a': 'i', 'b': '1', 'c': 'count[i]'},
      'hardBlocks': {'a': 'i', 'b': '1', 'c': 'count[i]'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p25',
      'zone': 16,
      'subcategory': 'Sets',
      'title': 'Find All Duplicates in an Array',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find all the integers that appear twice in an array of integers 1 to n. (LC 442)',
      'hint':
          'Negate the value at index `abs(num) - 1`. If already negative, it\'s a duplicate.',
      'codeTemplate':
          'List<Integer> res = new ArrayList<>();\nfor (int i = 0; i < nums.length; i++) {\n  int index = Math.abs(nums[i]) - 1;\n  if (nums[index] < 0) {\n    res.add(Math.___ (nums[i]));\n  }\n  nums[index] = ___ nums[index];\n}\nreturn res;',
      'hardTemplate':
          'List<Integer> res = new ArrayList<>();\nfor (int i = 0; i < nums.length; i++) {\n  int index = Math.abs(nums[i]) - 1;\n  if (nums[index] < 0) {\n    res.add(Math.___ (nums[i]));\n  }\n  nums[index] = ___ nums[index];\n}\nreturn res;',
      'blocks': {'a': 'abs', 'b': '-'},
      'hardBlocks': {'a': 'abs', 'b': '-'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z16_p26',
      'zone': 16,
      'subcategory': 'Sets',
      'title': 'Find the Duplicate Number',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find the repeated number in an array containing n + 1 integers where each integer is in range [1, n]. (LC 287)',
      'hint':
          'Can be solved with Floyd\'s tortoise and hare (cycle detection) or marking visited.',
      'codeTemplate':
          'int slow = nums[0], fast = nums[nums[0]];\nwhile (slow != fast) {\n  slow = nums[slow];\n  fast = nums[___];\n}\nfast = 0;\nwhile (slow != fast) {\n  slow = nums[slow];\n  fast = nums[fast];\n}\nreturn slow;',
      'hardTemplate':
          'int slow = nums[0], fast = nums[nums[0]];\nwhile (slow != fast) {\n  slow = nums[slow];\n  fast = nums[___];\n}\nfast = 0;\nwhile (slow != fast) {\n  slow = nums[slow];\n  fast = nums[fast];\n}\nreturn slow;',
      'blocks': {'a': 'nums[fast]', 'b': 'fast', 'c': 'nums[slow]'},
      'hardBlocks': {'a': 'nums[fast]', 'b': 'fast', 'c': 'nums[slow]'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p27',
      'zone': 16,
      'subcategory': 'Counting',
      'title': 'Number of Good Pairs',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'A pair (i, j) is good if nums[i] == nums[j] and i < j. (LC 1512)',
      'hint':
          'Count frequencies. Combinations metric is n*(n-1)/2, or accumulate progressively.',
      'codeTemplate':
          'int[] count = new int[101];\nint ans = 0;\nfor (int n : nums) {\n  ans += count[n]___;\n}\nreturn ans;',
      'hardTemplate':
          'int[] count = new int[101];\nint ans = 0;\nfor (int n : nums) {\n  ans += count[n]___;\n}\nreturn ans;',
      'blocks': {'a': '++', 'b': '--', 'c': '+= 2'},
      'hardBlocks': {'a': '++', 'b': '--', 'c': '+= 2'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p28',
      'zone': 16,
      'subcategory': 'Mappings',
      'title': 'Contains Duplicate II',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Find if there are two distinct indices i and j such that nums[i] == nums[j] and abs(i - j) <= k. (LC 219)',
      'hint':
          'Store value -> index. If seen before, check if difference of indices <= k.',
      'codeTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nfor (int i = 0; i < nums.length; i++) {\n  if (map.containsKey(nums[i]) && i - map.get(nums[i]) <= ___) {\n    return true;\n  }\n  map.put(nums[i], i);\n}\nreturn false;',
      'hardTemplate':
          'Map<Integer, Integer> map = new HashMap<>();\nfor (int i = 0; i < nums.length; i++) {\n  if (map.containsKey(nums[i]) && i - map.get(nums[i]) <= ___) {\n    return true;\n  }\n  map.put(nums[i], i);\n}\nreturn false;',
      'blocks': {'a': 'k', 'b': 'target', 'c': '1'},
      'hardBlocks': {'a': 'k', 'b': 'target', 'c': '1'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z16_p29',
      'zone': 16,
      'subcategory': 'Sets',
      'title': 'Jewels and Stones',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'You\'re given strings jewels representing types of stones that are jewels, and stones representing stones you have. Count jewels. (LC 771)',
      'hint':
          'Put all jewels in a HashSet. For every stone, check if it\'s in the set.',
      'codeTemplate':
          'int numJewels = 0;\nSet<Character> Jset = new ___<>();\nfor (char j : jewels.toCharArray()) {\n  Jset.add(j);\n}\nfor (char s : stones.toCharArray()) {\n  if (Jset.___(s)) {\n    numJewels++;\n  }\n}\nreturn numJewels;',
      'hardTemplate':
          'int numJewels = 0;\nSet<Character> Jset = new ___<>();\nfor (char j : jewels.toCharArray()) {\n  Jset.add(j);\n}\nfor (char s : stones.toCharArray()) {\n  if (Jset.___(s)) {\n    numJewels++;\n  }\n}\nreturn numJewels;',
      'blocks': {'a': 'HashSet', 'b': 'contains', 'c': 'add'},
      'hardBlocks': {'a': 'HashSet', 'b': 'contains', 'c': 'add'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z16_p30',
      'zone': 16,
      'subcategory': 'Mappings',
      'title': 'Destination City',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Return the destination city, exactly one city without any path outgoing to another city. (LC 1436)',
      'hint':
          'Add all starting cities to a HashSet. Loop through all destination cities to find which one is not in the set.',
      'codeTemplate':
          'Set<String> set = new HashSet<>();\nfor (List<String> path : paths) {\n  set.___(path.get(0));\n}\nfor (List<String> path : paths) {\n  if (!set.___(path.get(1))) {\n    return path.get(1);\n  }\n}\nreturn "";',
      'hardTemplate':
          'Set<String> set = new HashSet<>();\nfor (List<String> path : paths) {\n  set.___(path.get(0));\n}\nfor (List<String> path : paths) {\n  if (!set.___(path.get(1))) {\n    return path.get(1);\n  }\n}\nreturn "";',
      'blocks': {'a': 'add', 'b': 'contains', 'c': 'get'},
      'hardBlocks': {'a': 'add', 'b': 'contains', 'c': 'get'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 17: Dynamic Programming ──
    {
      'id': 'z17_p1',
      'zone': 17,
      'subcategory': 'Basics',
      'title': 'Fibonacci Memoization',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Calculate Nth Fibonacci number using top-down recursion with memoization.',
      'hint':
          'Store result in dp[n] before returning. If dp[n] != -1, return it immediately.',
      'codeTemplate':
          'int fib(int n, int[] dp) {\n  if (n <= 1) return n;\n  if (dp[n] != -1) return ___ ;\n  return dp[n] = fib(n - 1, dp) + ___ ;\n}',
      'hardTemplate':
          'int fib(int n, int[] dp) {\n  if (n <= 1) return n;\n  if (___) return dp[n];\n  return ___ = fib(n - 1, dp) + fib(n - 2, dp);\n}',
      'blocks': {'a': 'dp[n]', 'b': 'fib(n - 2, dp)', 'c': '-1'},
      'hardBlocks': {'a': 'dp[n] != -1', 'b': 'dp[n]', 'c': 'fib(n-1, dp)'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z17_p2',
      'zone': 17,
      'subcategory': 'Basics',
      'title': 'Fibonacci Tabulation',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Calculate Nth Fibonacci number using bottom-up tabulation.',
      'hint': 'Start from 0 and 1, fill the dp table iteratively up to n.',
      'codeTemplate':
          'int[] dp = new int[n + 1];\ndp[0] = 0; dp[1] = 1;\nfor (int i = 2; i <= n; i++) {\n  dp[i] = ___ + ___ ;\n}\nreturn dp[n];',
      'hardTemplate':
          'int fib(int n) {\n  int[] dp = new int[n + 1];\n  dp[0] = 0; dp[1] = ___ ;\n  for (int i = 2; i <= n; i++) ___ ;\n  return ___ ;\n}',
      'blocks': {'a': 'dp[i-1]', 'b': 'dp[i-2]', 'c': 'dp[i]'},
      'hardBlocks': {'a': '1', 'b': 'dp[i] = dp[i-1] + dp[i-2]', 'c': 'dp[n]'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z17_p3',
      'zone': 17,
      'subcategory': 'Basics',
      'title': 'Climbing Stairs (LC 70)',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'How many distinct ways can you climb n stairs if you can take 1 or 2 steps?',
      'hint': 'This is identical to Fibonacci: way(n) = way(n-1) + way(n-2).',
      'codeTemplate':
          'if (n <= 2) return n;\nint prev2 = 1, prev = 2;\nfor (int i = 3; i <= n; i++) {\n  int curr = ___ + ___ ;\n  prev2 = prev;\n  prev = curr;\n}\nreturn prev;',
      'hardTemplate':
          'int climbStairs(int n) {\n  if (n <= 2) return n;\n  int a = 1, b = 2;\n  for (int i = 3; i <= n; i++) {\n    int next = ___ ;\n    a = ___ ;\n    b = ___ ;\n  }\n  return b;\n}',
      'blocks': {'a': 'prev', 'b': 'prev2', 'c': '1'},
      'hardBlocks': {'a': 'a + b', 'b': 'b', 'c': 'next'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z17_p4',
      'zone': 17,
      'subcategory': 'Basics',
      'title': 'Frog Jump (Basics)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Frog can jump 1 or 2 steps. Cost is abs(h[i] - h[j]). Find min cost to reach top.',
      'hint':
          'dp[i] = min(dp[i-1] + abs(h[i]-h[i-1]), dp[i-2] + abs(h[i]-h[i-2]))',
      'codeTemplate':
          'int cost1 = dp[i-1] + Math.abs(h[i] - h[i-1]);\nint cost2 = (i > 1) ? dp[i-2] + Math.abs(h[i] - h[i-2]) : ___ ;\ndp[i] = Math.min(___ , ___ );',
      'hardTemplate':
          'for (int i = 1; i < n; i++) {\n  int jump1 = dp[i-1] + Math.abs(h[i] - h[i-1]);\n  int jump2 = Integer.MAX_VALUE;\n  if (i > 1) jump2 = ___ ;\n  dp[i] = ___ ;\n}',
      'blocks': {'a': 'Integer.MAX_VALUE', 'b': 'cost1', 'c': 'cost2'},
      'hardBlocks': {
        'a': 'dp[i-2] + Math.abs(h[i] - h[i-2])',
        'b': 'Math.min(jump1, jump2)',
        'c': 'jump1',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z17_p5',
      'zone': 17,
      'subcategory': '1D DP',
      'title': 'Max Sum Non-Adjacent Elements',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find the maximum sum of elements such that no two elements are adjacent.',
      'hint':
          'At each step, you either pick (val + dp[i-2]) or skip (dp[i-1]).',
      'codeTemplate':
          'int pick = arr[i] + ( (i > 1) ? dp[i-2] : 0 );\nint nonPick = ___ ;\ndp[i] = Math.max(___ , ___ );',
      'hardTemplate':
          'int solve(int[] nums) {\n  int prev = nums[0], prev2 = 0;\n  for (int i = 1; i < nums.length; i++) {\n    int pick = nums[i] + ( (i > 1) ? prev2 : 0 );\n    int skip = ___ ;\n    int curr = ___ ;\n    prev2 = prev;\n    prev = curr;\n  }\n  return prev;\n}',
      'blocks': {'a': 'dp[i-1]', 'b': 'pick', 'c': 'nonPick'},
      'hardBlocks': {'a': 'prev', 'b': 'Math.max(pick, skip)', 'c': 'prev2'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z17_p6',
      'zone': 17,
      'subcategory': '1D DP',
      'title': 'House Robber (LC 198)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Identical to Max Sum Non-Adjacent: you cannot rob two adjacent houses.',
      'hint': 'Use space optimization to reduce O(N) space to O(1).',
      'codeTemplate':
          'int rob(int[] nums) {\n  int prev = nums[0];\n  int prev2 = 0;\n  for(int i=1; i<nums.length; i++) {\n    int take = nums[i] + prev2;\n    int skip = prev;\n    int res = Math.max(take, skip);\n    ___ = prev;\n    ___ = res;\n  }\n  return ___ ;\n}',
      'hardTemplate':
          'int rob(int[] h) {\n  int p1 = 0, p2 = 0;\n  for (int x : h) {\n    int temp = ___ ;\n    p2 = ___ ;\n    p1 = ___ ;\n  }\n  return p1;\n}',
      'blocks': {'a': 'prev2', 'b': 'prev', 'c': 'prev'},
      'hardBlocks': {'a': 'Math.max(p1, p2 + x)', 'b': 'p1', 'c': 'temp'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z17_p7',
      'zone': 17,
      'subcategory': '2D DP / Grids',
      'title': 'Unique Paths (LC 62)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find total unique paths from (0,0) to (m-1, n-1). Can only move Down or Right.',
      'hint': 'dp[i][j] = dp[i-1][j] + dp[i][j-1]',
      'codeTemplate':
          'for (int i = 0; i < m; i++) {\n  for (int j = 0; j < n; j++) {\n    if (i == 0 && j == 0) dp[i][j] = 1;\n    else {\n      int up = (i > 0) ? dp[i-1][j] : 0;\n      int left = (j > 0) ? dp[i][j-1] : 0;\n      dp[i][j] = ___ + ___ ;\n    }\n  }\n}',
      'hardTemplate':
          'int paths(int m, int n) {\n  int[] prev = new int[n];\n  for (int i = 0; i < m; i++) {\n    int[] curr = new int[n];\n    for (int j = 0; j < n; j++) {\n       if (i == 0 && j == 0) ___ ;\n       else curr[j] = ___ + (j > 0 ? ___ : 0);\n    }\n    prev = curr;\n  }\n  return prev[n-1];\n}',
      'blocks': {'a': 'up', 'b': 'left', 'c': '1'},
      'hardBlocks': {'a': 'curr[j] = 1', 'b': 'prev[j]', 'c': 'curr[j-1]'},
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z17_p8',
      'zone': 17,
      'subcategory': '2D DP / Grids',
      'title': 'Unique Paths II (LC 63)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Unique paths with obstacles. Grid[i][j] = 1 means obstacle.',
      'hint': 'If grid[i][j] == 1, set dp[i][j] = 0.',
      'codeTemplate':
          'if (grid[i][j] == 1) dp[i][j] = ___ ;\nelse if (i == 0 && j == 0) dp[i][j] = 1;\nelse {\n  int up = (i > 0) ? dp[i-1][j] : 0;\n  int left = (j > 0) ? dp[i][j-1] : 0;\n  dp[i][j] = up + left;\n}',
      'hardTemplate':
          'public int pathsWithObstacles(int[][] grid) {\n  int m = grid.length, n = grid[0].length;\n  int[][] dp = new int[m][n];\n  for (int i=0; i<m; i++) {\n    for (int j=0; j<n; j++) {\n      if (grid[i][j] == 1) ___ ;\n      else if (i == 0 && j == 0) dp[i][j] = 1;\n      else dp[i][j] = ___ + ___ ;\n    }\n  }\n  return dp[m-1][n-1];\n}',
      'blocks': {'a': '0', 'b': '1', 'c': 'up'},
      'hardBlocks': {
        'a': 'dp[i][j] = 0',
        'b': '(i>0 ? dp[i-1][j] : 0)',
        'c': '(j>0 ? dp[i][j-1] : 0)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z17_p9',
      'zone': 17,
      'subcategory': '2D DP / Grids',
      'title': 'Minimum Path Sum (LC 64)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find path from top-left to bottom-right that minimizes sum of numbers.',
      'hint': 'dp[i][j] = grid[i][j] + min(up, left).',
      'codeTemplate':
          'int up = (i > 0) ? dp[i-1][j] : ___ ;\nint left = (j > 0) ? dp[i][j-1] : ___ ;\ndp[i][j] = grid[i][j] + Math.min(up, left);',
      'hardTemplate':
          'for (int i = 0; i < m; i++) {\n  for (int j = 0; j < n; j++) {\n    if (i == 0 && j == 0) dp[i][j] = grid[i][j];\n    else {\n      int u = i > 0 ? dp[i-1][j] : ___ ;\n      int l = j > 0 ? dp[i][j-1] : ___ ;\n      dp[i][j] = ___ ;\n    }\n  }\n}',
      'blocks': {'a': '10000000', 'b': '0', 'c': 'grid[i][j]'},
      'hardBlocks': {
        'a': 'Integer.MAX_VALUE',
        'b': 'Integer.MAX_VALUE',
        'c': 'grid[i][j] + Math.min(u, l)',
      },
      'solution': {'1': 'a', '2': 'a'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z17_p10',
      'zone': 17,
      'subcategory': '2D DP / Grids',
      'title': 'Triangle (LC 120)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Minimum path sum in a triangle from top to bottom. Can move to (i+1, j) or (i+1, j+1).',
      'hint':
          'Start from the bottom row and move up. dp[i][j] = triangle[i][j] + min(dp[i+1][j], dp[i+1][j+1]).',
      'codeTemplate':
          'for (int j = 0; j < n; j++) dp[n-1][j] = triangle.get(n-1).get(j);\nfor (int i = n - 2; i >= 0; i--) {\n  for (int j = 0; j <= i; j++) {\n    int down = dp[i+1][j];\n    int diag = dp[i+1][j+1];\n    dp[i][j] = triangle.get(i).get(j) + Math.min(___ , ___ );\n  }\n}',
      'hardTemplate':
          'int[] next = new int[n];\nfor (int j = 0; j < n; j++) next[j] = t.get(n-1).get(j);\nfor (int i = n - 2; i >= 0; i--) {\n  int[] curr = new int[n];\n  for (int j = 0; j <= i; j++) {\n    curr[j] = t.get(i).get(j) + ___ ;\n  }\n  next = curr;\n}\nreturn next[0];',
      'blocks': {'a': 'down', 'b': 'diag', 'c': 'next[j]'},
      'hardBlocks': {
        'a': 'Math.min(next[j], next[j+1])',
        'b': 'next[j]',
        'c': 'next[j+1]',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },

    {
      'id': 'z17_p11',
      'zone': 17,
      'subcategory': 'Subsets / Knapsack',
      'title': 'Subset Sum Equal to K',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Check if there exists a subset of elements that adds up to exactly K.',
      'hint': 'dp[i][target] = dp[i-1][target] || dp[i-1][target - arr[i]]',
      'codeTemplate':
          'boolean take = false;\nif (arr[i] <= target) take = solve(i - 1, target - arr[i], arr, dp);\nboolean notTake = solve(i - 1, target, arr, dp);\ndp[i][target] = ___ || ___ ;',
      'hardTemplate':
          'boolean f(int i, int k, int[] a, Boolean[][] dp) {\n  if (k == 0) return true;\n  if (i < 0) return false;\n  if (dp[i][k] != null) return dp[i][k];\n  boolean skip = f(i-1, k, a, dp);\n  boolean pick = false;\n  if (a[i] <= k) pick = f(i-1, k-a[i], a, dp);\n  return dp[i][k] = skip || pick;\n}',
      'blocks': {'a': 'take', 'b': 'notTake', 'c': 'true'},
      'hardBlocks': {
        'a': 'f(i-1, k-a[i], a, dp)',
        'b': 'skip || pick',
        'c': 'skip',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z17_p12',
      'zone': 17,
      'subcategory': 'Subsets / Knapsack',
      'title': 'Partition Equal Subset Sum',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Can the array be partitioned into two subsets with equal sum?',
      'hint':
          'If total sum is odd, impossible. If even, find if a subset sum equals (totalSum / 2).',
      'codeTemplate':
          'int totalSum = 0;\nfor (int x : nums) totalSum += x;\nif (totalSum % 2 != 0) return ___ ;\nreturn canSubsetSum(nums, ___ );',
      'hardTemplate':
          'public boolean canPartition(int[] nums) {\n  int s = 0; for(int x : nums) s += x;\n  if(s % 2 != 0) return false;\n  int target = s / 2;\n  boolean[] dp = new boolean[target + 1];\n  dp[0] = true;\n  for(int x : nums) {\n    for(int i = target; i >= x; i--) dp[i] = dp[i] || dp[i-x];\n  }\n  return dp[target];\n}',
      'blocks': {'a': 'false', 'b': 'totalSum / 2', 'c': 'true'},
      'hardBlocks': {
        'a': 's / 2',
        'b': 'dp[i] = dp[i] || dp[i-x]',
        'c': 'target',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z17_p13',
      'zone': 17,
      'subcategory': 'Subsets / Knapsack',
      'title': '0/1 Knapsack (Basics)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Maximize value such that total weight does not exceed capacity W.',
      'hint':
          'At each item: take (value + dp[i-1][W-wt[i]]) or skip (dp[i-1][W]).',
      'codeTemplate':
          'int take = (wt[i] <= W) ? val[i] + solve(i-1, W-wt[i]) : ___ ;\nint skip = solve(i-1, W);\nreturn Math.max(take, skip);',
      'hardTemplate':
          'int knapsack(int[] wt, int[] val, int W) {\n  int n = wt.length;\n  int[] prev = new int[W + 1];\n  for (int i = 0; i < n; i++) {\n    for (int w = W; w >= wt[i]; w--) {\n      prev[w] = Math.max(prev[w], val[i] + prev[w - wt[i]]);\n    }\n  }\n  return prev[W];\n}',
      'blocks': {'a': '0', 'b': 'Integer.MIN_VALUE', 'c': 'skip'},
      'hardBlocks': {'a': 'prev[w]', 'b': 'val[i] + prev[w - wt[i]]', 'c': 'W'},
      'solution': {'1': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z17_p14',
      'zone': 17,
      'subcategory': 'Subsets / Knapsack',
      'title': 'Target Sum (LC 494)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Assign +/- to each element to reach target sum.',
      'hint': 'Translate to finding subsets with sum = (total + target) / 2.',
      'codeTemplate':
          'if ((sum + target) % 2 != 0 || sum < Math.abs(target)) return ___ ;\nint k = (sum + target) >> 1;\nreturn countSubsets(nums, ___ );',
      'hardTemplate':
          'int findTargetSumWays(int[] nums, int target) {\n  int sum = 0; for(int x : nums) sum += x;\n  if(sum < Math.abs(target) || (sum+target)%2 != 0) return 0;\n  int s2 = (sum + target) / 2;\n  int[] dp = new int[s2 + 1];\n  dp[0] = 1;\n  for(int x : nums) {\n    for(int i = s2; i >= x; i--) dp[i] += dp[i-x];\n  }\n  return dp[s2];\n}',
      'blocks': {'a': '0', 'b': 'k', 'c': 'sum'},
      'hardBlocks': {
        'a': '(sum + target) / 2',
        'b': 'dp[i] += dp[i-x]',
        'c': 'sum',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z17_p15',
      'zone': 17,
      'subcategory': 'Subsets / Knapsack',
      'title': 'Rod Cutting',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find the maximum value obtainable by cutting a rod of length N into pieces.',
      'hint': 'Unbounded Knapsack: pieces can be picked multiple times.',
      'codeTemplate':
          'int take = price[idx] + solve(idx, length - (idx + 1));\nint skip = solve(idx - 1, length);\nreturn Math.max(___ , ___ );',
      'hardTemplate':
          'for (int i = 0; i < n; i++) {\n  for (int j = 0; j <= n; j++) {\n    int skip = (i > 0) ? dp[i-1][j] : 0;\n    int take = (j >= i + 1) ? price[i] + dp[i][j - (i+1)] : 0;\n    dp[i][j] = Math.max(skip, take);\n  }\n}',
      'blocks': {'a': 'take', 'b': 'skip', 'c': 'length'},
      'hardBlocks': {
        'a': 'dp[i][j - (i+1)]',
        'b': 'dp[i-1][j - (i+1)]',
        'c': '0',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a'},
    },

    {
      'id': 'z17_p16',
      'zone': 17,
      'subcategory': 'Strings',
      'title': 'Longest Common Subsequence',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find length of the longest subsequence present in both strings.',
      'hint':
          'If chars match: 1 + solve(i-1, j-1). If not: max(solve(i-1, j), solve(i, j-1)).',
      'codeTemplate':
          'if (s1.charAt(i) == s2.charAt(j)) {\n  return dp[i][j] = 1 + solve(i-1, j-1);\n} else {\n  return dp[i][j] = Math.max(___ , ___ );\n}',
      'hardTemplate':
          'int lcs(String s, String t) {\n  int n=s.length(), m=t.length();\n  int[][] dp = new int[n+1][m+1];\n  for(int i=1; i<=n; i++) {\n    for(int j=1; j<=m; j++) {\n      if(s.charAt(i-1) == t.charAt(j-1)) dp[i][j] = 1 + dp[i-1][j-1];\n      else dp[i][j] = Math.max(dp[i-1][j], dp[i][j-1]);\n    }\n  }\n  return dp[n][m];\n}',
      'blocks': {'a': 'solve(i-1, j)', 'b': 'solve(i, j-1)', 'c': '0'},
      'hardBlocks': {
        'a': '1 + dp[i-1][j-1]',
        'b': 'Math.max(dp[i-1][j], dp[i][j-1])',
        'c': '0',
      },
      'solution': {'1': 'a', '2': 'b'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },
    {
      'id': 'z17_p17',
      'zone': 17,
      'subcategory': 'Strings',
      'title': 'Longest Palindromic Subsequence',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find the length of the longest palindromic subsequence in string S.',
      'hint': 'Identical to LCS(S, Reverse(S)).',
      'codeTemplate':
          'String s1 = s;\nString s2 = new StringBuilder(s).reverse().toString();\nreturn ___ (s1, s2);',
      'hardTemplate':
          'int longestPalindromeSubseq(String s) {\n  String r = new StringBuilder(s).reverse().toString();\n  return lcs(s, r);\n}',
      'blocks': {
        'a': 'longestCommonSubsequence',
        'b': 'length',
        'c': 's.length()',
      },
      'hardBlocks': {'a': 'lcs', 'b': 's.length()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p18',
      'zone': 17,
      'subcategory': 'Strings',
      'title': 'Edit Distance (LC 72)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Min operations (Insert, Delete, Replace) to convert string s1 to s2.',
      'hint':
          'Match: f(i-1, j-1). Not Match: 1 + min(Insert:f(i,j-1), Delete:f(i-1,j), Replace:f(i-1,j-1)).',
      'codeTemplate':
          'if (s1.charAt(i) == s2.charAt(j)) return solve(i-1, j-1);\nelse return 1 + Math.min(___ , Math.min(___ , ___ ));',
      'hardTemplate':
          'int f(int i, int j, String s1, String s2) {\n  if (i < 0) return j + 1;\n  if (j < 0) return i + 1;\n  if (s1.charAt(i) == s2.charAt(j)) return f(i-1, j-1, s1, s2);\n  return 1 + Math.min(f(i,j-1,s1,s2), Math.min(f(i-1,j,s1,s2), f(i-1,j-1,s1,s2)));\n}',
      'blocks': {
        'a': 'solve(i, j-1)',
        'b': 'solve(i-1, j)',
        'c': 'solve(i-1, j-1)',
      },
      'hardBlocks': {
        'a': 'f(i, j-1, s1, s2)',
        'b': 'f(i-1, j, s1, s2)',
        'c': 'f(i-1, j-1, s1, s2)',
      },
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a', '2': 'b', '3': 'c'},
    },
    {
      'id': 'z17_p19',
      'zone': 17,
      'subcategory': 'Strings',
      'title': 'Shortest Common Supersequence',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Length of shortest string that has both s1 and s2 as subsequences.',
      'hint': 'Length = n + m - LCS(s1, s2).',
      'codeTemplate': 'int common = getLCS(s1, s2);\nreturn ___ + ___ - ___ ;',
      'hardTemplate':
          'public String shortestCommonSupersequence(String s1, String s2) {\n  int l = s1.length() + s2.length() - lcs(s1, s2);\n  return ""; \n}',
      'blocks': {'a': 's1.length()', 'b': 's2.length()', 'c': 'common'},
      'hardBlocks': {'a': 'lcs(s1, s2)', 'b': '0', 'c': 's1.length()'},
      'solution': {'1': 'a', '2': 'b', '3': 'c'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p20',
      'zone': 17,
      'subcategory': 'Strings',
      'title': 'Delete Ops for 2 Strings',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Min steps to make two strings identical. Step = delete one char.',
      'hint': 'Minimum deletions = n + m - 2 * LCS(s1, s2).',
      'codeTemplate': 'int l = lcs(s1, s2);\nreturn (s1.length() - l) + (___);',
      'hardTemplate':
          'public int minDistance(String s1, String s2) {\n  return s1.length() + s2.length() - 2 * lcs(s1, s2);\n}',
      'blocks': {'a': 's2.length() - l', 'b': 's1.length() - l', 'c': '0'},
      'hardBlocks': {'a': '2 * lcs(s1, s2)', 'b': 'lcs(s1, s2)', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    {
      'id': 'z17_p21',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Coin Change (LC 322)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Fewest coins needed to make up amount. Infinite supply of coins.',
      'hint':
          'dp[i] = min(dp[i], 1 + dp[i - coins[j]]). Initial dp[0] = 0, others = infinity.',
      'codeTemplate':
          'for (int coin : coins) {\n  for (int i = coin; i <= amount; i++) {\n    if (dp[i - coin] != Integer.MAX_VALUE) {\n      dp[i] = Math.min(dp[i], ___ );\n    }\n  }\n}',
      'hardTemplate':
          'int coinChange(int[] coins, int amount) {\n  int[] dp = new int[amount + 1];\n  Arrays.fill(dp, amount + 1);\n  dp[0] = 0;\n  for (int i = 1; i <= amount; i++) {\n    for (int c : coins) {\n      if (i >= c) ___ ;\n    }\n  }\n  return dp[amount] > amount ? -1 : dp[amount];\n}',
      'blocks': {'a': '1 + dp[i - coin]', 'b': 'coin', 'c': 'amount'},
      'hardBlocks': {
        'a': 'dp[i] = Math.min(dp[i], 1 + dp[i-c])',
        'b': 'dp[i] = 1',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p22',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Coin Change 2 (LC 518)',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Number of ways to make up amount using infinite supply of coins.',
      'hint':
          'dp[i] += dp[i - coin]. This is a variation of Subsets/Unbounded Knapsack.',
      'codeTemplate':
          'dp[0] = 1;\nfor (int coin : coins) {\n  for (int i = coin; i <= amount; i++) {\n    dp[i] += ___ ;\n  }\n}',
      'hardTemplate':
          'public int change(int amount, int[] coins) {\n  int[] dp = new int[amount + 1];\n  dp[0] = 1;\n  for (int c : coins) {\n    for (int i = c; i <= amount; i++) ___ ;\n  }\n  return dp[amount];\n}',
      'blocks': {'a': 'dp[i - coin]', 'b': '1', 'c': 'amount'},
      'hardBlocks': {'a': 'dp[i] += dp[i-c]', 'b': 'dp[i]++', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p23',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Longest Incr Subsequence',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find length of the longest strictly increasing subsequence.',
      'hint':
          'dp[i] = 1 + max(dp[j]) for all j < i such that nums[j] < nums[i].',
      'codeTemplate':
          'for (int i = 0; i < n; i++) {\n  for (int j = 0; j < i; j++) {\n    if (nums[i] > nums[j]) {\n      dp[i] = Math.max(dp[i], ___ );\n    }\n  }\n}',
      'hardTemplate':
          'int lengthOfLIS(int[] nums) {\n  int[] dp = new int[nums.length];\n  Arrays.fill(dp, 1);\n  int max = 1;\n  for (int i = 1; i < nums.length; i++) {\n    for (int j = 0; j < i; j++) {\n      if (nums[i] > nums[j]) ___ ;\n    }\n    max = Math.max(max, dp[i]);\n  }\n  return max;\n}',
      'blocks': {'a': '1 + dp[j]', 'b': 'dp[j]', 'c': '1'},
      'hardBlocks': {
        'a': 'dp[i] = Math.max(dp[i], 1 + dp[j])',
        'b': 'dp[i]++',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p24',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Longest Strings Chain',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Variation of LIS. Word A is a predecessor of word B if inserting 1 char into A makes B.',
      'hint':
          'Sort words by length. For each word, try deleting one char and check if result exists in map.',
      'codeTemplate':
          'for (int i = 0; i < word.length(); i++) {\n  String pred = word.substring(0, i) + word.substring(i + 1);\n  if (map.containsKey(pred)) {\n    currMax = Math.max(currMax, ___ + 1);\n  }\n}',
      'blocks': {'a': 'map.get(pred)', 'b': '1', 'c': '0'},
      'hardBlocks': {'a': 'map.get(pred)', 'b': 'word.length()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p25',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Partition Array Max Sum',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Partition array into subarrays of max length K. Sum = total sum of (max of subarray * length).',
      'hint': 'dp[i] = max(dp[i-j] + maxVal * j) where j goes from 1 to K.',
      'codeTemplate':
          'for (int j = 1; j <= k && i - j >= 0; j++) {\n  curMax = Math.max(curMax, arr[i - j]);\n  dp[i] = Math.max(dp[i], ___ + curMax * j);\n}',
      'blocks': {'a': 'dp[i - j]', 'b': 'dp[i]', 'c': '0'},
      'hardBlocks': {'a': 'dp[i-j]', 'b': 'k', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p26',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Best Time to Buy Stock III',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Max profit with at most 2 transactions.',
      'hint': 'States: dp[i][buy][cap]. Cap is 2, 1, or 0.',
      'codeTemplate':
          'if (buy == 1) {\n  profit = Math.max(-prices[i] + solve(i+1, 0, cap), solve(i+1, 1, cap));\n} else {\n  profit = Math.max(prices[i] + solve(i+1, 1, ___ ), solve(i+1, 0, cap));\n}',
      'blocks': {'a': 'cap - 1', 'b': 'cap', 'c': 'cap + 1'},
      'hardBlocks': {'a': 'cap - 1', 'b': 'cap', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p27',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Best Time to Buy Stock IV',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Max profit with at most K transactions.',
      'hint': 'Generalizing Stock III to K capacity.',
      'codeTemplate': 'int[][][] dp = new int[n+1][2][___ + 1];',
      'hardTemplate':
          'int solve(int i, int buy, int k, int[] p, int[][][] dp) {\n  if (i == p.length || k == 0) return 0;\n  if (dp[i][buy][k] != -1) return dp[i][buy][k];\n  if (buy == 1) return dp[i][buy][k] = Math.max(-p[i] + solve(i+1, 0, k, p, dp), solve(i+1, 1, k, p, dp));\n  else return dp[i][buy][k] = Math.max(p[i] + ___ , solve(i+1, 0, k, p, dp));\n}',
      'blocks': {'a': 'k', 'b': '2', 'c': 'n'},
      'hardBlocks': {
        'a': 'solve(i+1, 1, k-1, p, dp)',
        'b': '0',
        'c': 'solve(i+1, 1, k, p, dp)',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p28',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Perfect Squares (LC 279)',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Least number of perfect square numbers that sum to N.',
      'hint': 'Similar to Coin Change, coins are squares i*i.',
      'codeTemplate':
          'for (int i = 1; i <= n; i++) {\n  for (int j = 1; j * j <= i; j++) {\n    dp[i] = Math.min(dp[i], ___ + 1);\n  }\n}',
      'blocks': {'a': 'dp[i - j * j]', 'b': 'dp[i - j]', 'c': '0'},
      'hardBlocks': {'a': 'dp[i - j*j]', 'b': '1', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p29',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Wildcard Matching (LC 44)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Matching with "?" (any char) and "*" (any sequence of chars).',
      'hint': 'If "*": try skip or match one (f(i-1,j) || f(i,j-1)).',
      'codeTemplate':
          'if (p.charAt(j) == \'*\') {\n  return dp[i][j] = solve(i - 1, j) || ___ ;\n}',
      'hardTemplate':
          'boolean match(int i, int j, String s, String p) {\n  if(i<0 && j<0) return true;\n  if(j<0) return false;\n  if(i<0) {\n     for(int k=0; k<=j; k++) if(p.charAt(k) != \'*\') return false;\n     return true;\n  }\n  if(p.charAt(j) == \'* \') return match(i-1, j, s, p) || ___ ;\n  return false; \n}',
      'blocks': {
        'a': 'match(i, j-1, s, p)',
        'b': 'match(i-1, j-1, s, p)',
        'c': 'false',
      },
      'hardBlocks': {
        'a': 'match(i, j-1, s, p)',
        'b': 'match(i-1, j-1, s, p)',
        'c': 'true',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z17_p30',
      'zone': 17,
      'subcategory': 'LC Mix',
      'title': 'Regular Expression Matching',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Matching with "." and "*" (preceding element 0 or more times).',
      'hint':
          'If "*": match 0 times or match 1 and stay. (f(i,j-2) || (match && f(i-1,j))).',
      'codeTemplate':
          'if (p.charAt(j - 1) == \'*\') {\n  dp[i][j] = dp[i][j - 2] || (firstMatch && ___ );\n}',
      'hardTemplate':
          'public boolean isMatch(String s, String p) {\n  int m = s.length(), n = p.length();\n  boolean[][] dp = new boolean[m+1][n+1];\n  dp[0][0] = true;\n  for(int j=2; j<=n; j++) if(p.charAt(j-1) == \'*\') dp[0][j] = dp[0][j-2];\n  for(int i=1; i<=m; i++) {\n    for(int j=1; j<=n; j++) {\n       if(p.charAt(j-1) == \'*\') dp[i][j] = dp[i][j-2] || ( (s.charAt(i-1) == p.charAt(j-2) || p.charAt(j-2) == \'.\') && ___ );\n       else dp[i][j] = (s.charAt(i-1) == p.charAt(j-1) || p.charAt(j-1) == \'.\') && ___ ;\n    }\n  }\n  return dp[m][n];\n}',
      'blocks': {'a': 'dp[i - 1][j]', 'b': 'dp[i][j - 1]', 'c': 'false'},
      'hardBlocks': {'a': 'dp[i-1][j]', 'b': 'dp[i-1][j-1]', 'c': 'false'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 18: Heaps ──
    {
      'id': 'z18_p1',
      'zone': 18,
      'subcategory': 'Basics',
      'title': 'Min Heap Insertion',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Add an element to a Min-Heap. Use bubbling up logic.',
      'hint':
          'Insert at end, then compare with parent (i-1)/2. Swap if child < parent.',
      'codeTemplate':
          'heap.add(val);\nint i = heap.size() - 1;\nwhile (i > 0 && heap.get(i) < heap.get((i-1)/2)) {\n  swap(i, (i-1)/2);\n  ___ ;\n}',
      'hardTemplate':
          'void insert(int val) {\n  list.add(val);\n  int curr = list.size() - 1;\n  while (curr > 0) {\n    int parent = (curr - 1) / 2;\n    if (list.get(curr) < list.get(parent)) {\n      swap(curr, parent);\n      ___ ;\n    } else break;\n  }\n}',
      'blocks': {'a': 'i = (i-1)/2', 'b': 'i++', 'c': 'i--'},
      'hardBlocks': {'a': 'curr = parent', 'b': 'curr = 0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p2',
      'zone': 18,
      'subcategory': 'Basics',
      'title': 'Min Heap Deletion',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Remove the root from a Min-Heap and restore heap property.',
      'hint':
          'Swap root with last element, delete last, then bubble down (heapify).',
      'codeTemplate': 'heap.set(0, heap.remove(heap.size() - 1));\nheapify(0);',
      'hardTemplate':
          'int poll() {\n  int min = list.get(0);\n  list.set(0, list.remove(list.size() - 1));\n  int i = 0;\n  while (true) {\n    int left = 2 * i + 1, right = 2 * i + 2, small = i;\n    if (left < list.size() && list.get(left) < list.get(small)) small = left;\n    if (right < list.size() && list.get(right) < list.get(small)) small = right;\n    if (small != i) {\n      swap(i, small);\n      ___ ;\n    } else break;\n  }\n  return min;\n}',
      'blocks': {'a': 'heapify(0)', 'b': 'heapify(i)', 'c': '0'},
      'hardBlocks': {'a': 'i = small', 'b': 'i = left', 'c': '0'},
      'solution': {'1': 'c'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p3',
      'zone': 18,
      'subcategory': 'Basics',
      'title': 'Build Heap (O(N))',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Convert an unordered array into a Min-Heap.',
      'hint':
          'Call heapify starting from the last non-leaf node (n/2 - 1) down to 0.',
      'codeTemplate': 'for (int i = n / 2 - 1; i >= 0; i--) {\n  ___ (i);\n}',
      'hardTemplate':
          'void buildHeap(int[] arr) {\n  int n = arr.length;\n  for (int i = n / 2 - 1; i >= 0; i--) {\n    ___ (arr, n, i);\n  }\n}',
      'blocks': {'a': 'heapify', 'b': 'bubbleUp', 'c': 'sort'},
      'hardBlocks': {'a': 'heapify', 'b': 'shiftDown', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p4',
      'zone': 18,
      'subcategory': 'Stream',
      'title': 'Kth Largest Element',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Find the Kth largest element using a Heap.',
      'hint':
          'Min-Heap of size K. If current > heap.peek(), replace and heapify.',
      'codeTemplate':
          'PriorityQueue<Integer> pq = new PriorityQueue<>();\nfor (int val : nums) {\n  pq.add(val);\n  if (pq.size() > k) ___ ;\n}\nreturn pq.peek();',
      'hardTemplate':
          'public int findKthLargest(int[] nums, int k) {\n  PriorityQueue<Integer> pq = new PriorityQueue<>();\n  for (int x : nums) {\n    pq.offer(x);\n    if (pq.size() > k) ___ ;\n  }\n  return pq.peek();\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': 'pq.clear()'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.remove(0)', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p5',
      'zone': 18,
      'subcategory': 'Stream',
      'title': 'Kth Smallest Element',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Find the Kth smallest element using a Heap.',
      'hint': 'Max-Heap of size K. If current < heap.peek(), replace.',
      'codeTemplate':
          'PriorityQueue<Integer> pq = new PriorityQueue<>((a, b) -> b - a);\nfor (int val : nums) {\n  pq.add(val);\n  if (pq.size() > k) ___ ;\n}\nreturn pq.peek();',
      'hardTemplate':
          'int kthSmallest(int[] nums, int k) {\n  PriorityQueue<Integer> pq = new PriorityQueue<>(Collections.reverseOrder());\n  for (int x : nums) {\n    pq.offer(x);\n    if (pq.size() > k) ___ ;\n  }\n  return pq.peek();\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.pop()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p6',
      'zone': 18,
      'subcategory': 'Stream',
      'title': 'Sort Nearly Sorted Array',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Sort an array where each element is at most K away from its sorted position.',
      'hint': 'Use a Min-Heap of size K+1.',
      'codeTemplate':
          'for (int i = 0; i <= k; i++) pq.add(arr[i]);\nfor (int i = k + 1; i < n; i++) {\n  res[j++] = ___ ;\n  pq.add(arr[i]);\n}',
      'hardTemplate':
          'void sortK(int[] arr, int k) {\n  PriorityQueue<Integer> pq = new PriorityQueue<>();\n  int j = 0;\n  for (int i = 0; i < arr.length; i++) {\n    pq.add(arr[i]);\n    if (pq.size() > k) ___ ;\n  }\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.peek()', 'c': '0'},
      'hardBlocks': {'a': 'arr[j++] = pq.poll()', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p7',
      'zone': 18,
      'subcategory': 'Priority Queue',
      'title': 'Top K Frequent Elements',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Find the K most frequent elements in an array.',
      'hint':
          'Map for frequency. Min-Heap of size K storing pairs based on count.',
      'codeTemplate':
          'for (int n : map.keySet()) {\n  pq.add(n);\n  if (pq.size() > k) ___ ;\n}',
      'hardTemplate':
          'public int[] topKFrequent(int[] nums, int k) {\n  Map<Integer, Integer> map = new HashMap<>();\n  for(int n: nums) map.put(n, map.getOrDefault(n,0)+1);\n  PriorityQueue<Integer> pq = new PriorityQueue<>((a,b) -> map.get(a) - map.get(b));\n  for(int n: map.keySet()) {\n    pq.add(n);\n    if (pq.size() > k) ___ ;\n  }\n  return res;\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p8',
      'zone': 18,
      'subcategory': 'Priority Queue',
      'title': 'K Closest Points to Origin',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Find K points closest to (0,0) in 2D plane.',
      'hint': 'Max-Heap of size K. Comparison based on distance: x^2 + y^2.',
      'codeTemplate': 'pq.add(point);\nif (pq.size() > k) ___ ;',
      'hardTemplate':
          'public int[][] kClosest(int[][] pts, int k) {\n  PriorityQueue<int[]> pq = new PriorityQueue<>((a,b) -> (b[0]*b[0]+b[1]*b[1]) - (a[0]*a[0]+a[1]*a[1]));\n  for(int[] p: pts) {\n    pq.add(p);\n    if(pq.size() > k) ___ ;\n  }\n  return pq.toArray();\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.pop()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p9',
      'zone': 18,
      'subcategory': 'Priority Queue',
      'title': 'Connect Ropes (Min Cost)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Min cost to connect N ropes. Cost = sum of lengths of ropes connected.',
      'hint': 'Always pick the two smallest ropes. Min-Heap.',
      'codeTemplate':
          'while (pq.size() > 1) {\n  int combined = pq.poll() + pq.poll();\n  cost += combined;\n  pq.add( ___ );\n}',
      'hardTemplate':
          'long minCost(long arr[], int n) {\n  PriorityQueue<Long> pq = new PriorityQueue<>();\n  for(long x: arr) pq.add(x);\n  long cost = 0;\n  while(pq.size() > 1) {\n    long combined = pq.poll() + pq.poll();\n    cost += combined;\n    pq.add( ___ );\n  }\n  return cost;\n}',
      'blocks': {'a': 'combined', 'b': 'pq.peek()', 'c': '0'},
      'hardBlocks': {'a': 'combined', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p10',
      'zone': 18,
      'subcategory': 'Basics',
      'title': 'Min Heapify',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'The core operation to maintain heap property.',
      'hint': 'Compare node with children, swap with smaller, recurse.',
      'codeTemplate':
          'if (left < n && arr[left] < arr[smallest]) smallest = left;\nif (right < n && arr[right] < arr[smallest]) smallest = right;\nif (smallest != i) {\n  swap(i, smallest);\n  ___ (arr, n, smallest);\n}',
      'hardTemplate':
          'void heapify(int arr[], int n, int i) {\n  int small = i, l = 2*i+1, r = 2*i+2;\n  if (l < n && arr[l] < arr[small]) small = l;\n  if (r < n && arr[r] < arr[small]) small = r;\n  if (small != i) {\n    swap(i, small);\n    ___ ;\n  }\n}',
      'blocks': {'a': 'heapify', 'b': 'bubbleUp', 'c': '0'},
      'hardBlocks': {
        'a': 'heapify(arr, n, small)',
        'b': 'heapify(arr, n, i)',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p11',
      'zone': 18,
      'subcategory': 'Merging',
      'title': 'Merge K Sorted Lists',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Merge K sorted linked lists into one sorted list.',
      'hint':
          'Put the head of each list into a Min-Heap. Poll, add to result, and insert next node from same list.',
      'codeTemplate':
          'for (ListNode node : lists) if (node != null) pq.add(node);\nwhile (!pq.isEmpty()) {\n  ListNode curr = ___ ;\n  tail.next = curr;\n  if (curr.next != null) pq.add(curr.next);\n}',
      'hardTemplate':
          'public ListNode mergeKLists(ListNode[] lists) {\n  PriorityQueue<ListNode> pq = new PriorityQueue<>((a,b) -> a.val - b.val);\n  for(ListNode l: lists) if(l != null) pq.add(l);\n  ListNode dummy = new ListNode(0), tail = dummy;\n  while(!pq.isEmpty()) {\n    ListNode curr = ___ ;\n    tail.next = curr;\n    tail = tail.next;\n    if(curr.next != null) pq.add(curr.next);\n  }\n  return dummy.next;\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.peek()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p12',
      'zone': 18,
      'subcategory': 'Merging',
      'title': 'Merge K Sorted Arrays',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Merge K sorted arrays of varying lengths.',
      'hint':
          'Similar to merging K lists, but store indices (array_idx, element_idx) in the Heap.',
      'codeTemplate':
          'pq.add(new Node(arr[i][0], i, 0));\nwhile (!pq.isEmpty()) {\n  Node curr = pq.poll();\n  res.add(curr.val);\n  if (curr.eIdx + 1 < arr[curr.aIdx].length) {\n    pq.add(new Node(arr[curr.aIdx][curr.eIdx + 1], ___ ));\n  }\n}',
      'blocks': {
        'a': 'curr.aIdx, curr.eIdx + 1',
        'b': 'curr.val, curr.aIdx',
        'c': '0',
      },
      'hardBlocks': {'a': 'curr.aIdx, curr.eIdx + 1', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p13',
      'zone': 18,
      'subcategory': 'Merging',
      'title': 'Smallest Range K Lists',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Find the smallest range [start, end] that includes at least one number from each of the K lists.',
      'hint':
          'Min-Heap for heads + Track current max. Range = max - min. Slide and update.',
      'codeTemplate':
          'int min = pq.poll().val;\nif (max - min < range) {\n  range = max - min;\n  res = new int[]{min, ___ };\n}',
      'blocks': {'a': 'max', 'b': 'min', 'c': '0'},
      'hardBlocks': {'a': 'max', 'b': 'range', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p14',
      'zone': 18,
      'subcategory': 'Stream Challenges',
      'title': 'Median from Data Stream',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Track the median as numbers are added one by one.',
      'hint':
          'Two Heaps: Max-Heap for lower half, Min-Heap for upper half. Balance sizes.',
      'codeTemplate':
          'if (small.size() == large.size()) {\n  large.add(val);\n  small.add(large.poll());\n} else {\n  small.add(val);\n  large.add( ___ );\n}',
      'hardTemplate':
          'class MedianFinder {\n  PriorityQueue<Integer> small = new PriorityQueue<>(Collections.reverseOrder());\n  PriorityQueue<Integer> large = new PriorityQueue<>();\n  public void addNum(int num) {\n    if (small.size() == large.size()) {\n      large.add(num);\n      small.add(large.poll());\n    } else {\n      small.add(num);\n      large.add( ___ );\n    }\n  }\n}',
      'blocks': {'a': 'small.poll()', 'b': 'large.poll()', 'c': '0'},
      'hardBlocks': {'a': 'small.poll()', 'b': 'small.peek()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p15',
      'zone': 18,
      'subcategory': 'Stream Challenges',
      'title': 'Sliding Window Median',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Find the median for every window of size K in an array.',
      'hint':
          'Similar to Median in Stream, but handle deletion of elements as window slides.',
      'codeTemplate':
          'for (int i = 0; i < n; i++) {\n  add(nums[i]);\n  if (i >= k) {\n    remove(nums[i - k]);\n    res[j++] = ___ ;\n  }\n}',
      'blocks': {'a': 'getMedian()', 'b': 'nums[i]', 'c': '0'},
      'hardBlocks': {'a': 'getMedian()', 'b': 'small.peek()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p16',
      'zone': 18,
      'subcategory': 'Advanced LC',
      'title': 'Task Scheduler (LC 621)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Min time to finish tasks with cooling period N between same-type tasks.',
      'hint':
          'Schedule most frequent tasks first. Use Max-Heap + Waiting Queue.',
      'codeTemplate':
          'int maxFreq = map.get(tasks[0]);\nint count = 0;\nfor (int f : map.values()) if (f == maxFreq) count++;\nreturn Math.max(tasks.length, ___ );',
      'hardTemplate':
          'public int leastInterval(char[] tasks, int n) {\n  int[] freq = new int[26];\n  for(char c: tasks) freq[c-\'A\']++;\n  Arrays.sort(freq);\n  int f_max = freq[25];\n  int idle_time = (f_max - 1) * n;\n  for(int i=24; i>=0 && idle_time > 0; i--) ___ ;\n  idle_time = Math.max(0, idle_time);\n  return tasks.length + idle_time;\n}',
      'blocks': {
        'a': '(maxFreq - 1) * (n + 1) + count',
        'b': 'tasks.length',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'idle_time -= Math.min(f_max - 1, freq[i])',
        'b': 'idle_time -= freq[i]',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p17',
      'zone': 18,
      'subcategory': 'Advanced LC',
      'title': 'Min Refueling Stops',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Min gasoline stops to reach target. Each station provides fixed fuel.',
      'hint':
          'Greedy with a Max-Heap. Add all reachable stations to Heap, pick max fuel if stuck.',
      'codeTemplate':
          'while (currDist < target) {\n  while (i < n && stations[i][0] <= currDist) {\n    pq.add(stations[i++][1]);\n  }\n  if (pq.isEmpty()) return -1;\n  currDist += ___ ;\n  stops++;\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.peek()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'stations[i][1]', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p18',
      'zone': 18,
      'subcategory': 'Advanced LC',
      'title': 'Max Frequency Stack',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Pop the most frequent element. If tied, pop the one closest to the top.',
      'hint':
          'Map of frequencies + Map of stacks (freq -> Stack of elements). Track maxFreq.',
      'codeTemplate':
          'int f = freq.get(val) + 1;\nfreq.put(val, f);\nmaxFreq = Math.max(maxFreq, f);\n___ ;',
      'hardTemplate':
          'public void push(int x) {\n  int f = freq.getOrDefault(x, 0) + 1;\n  freq.put(x, f);\n  maxFreq = Math.max(maxFreq, f);\n  if (!group.containsKey(f)) group.put(f, new Stack<>());\n  ___ ;\n}',
      'blocks': {'a': 'group.get(f).push(val)', 'b': 'pq.add(val)', 'c': '0'},
      'hardBlocks': {
        'a': 'group.get(f).push(x)',
        'b': 'stack.push(x)',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p19',
      'zone': 18,
      'subcategory': 'Priority Queue',
      'title': 'Top K Frequent Words',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Frequent words sorted by count (desc) then lexographical (asc).',
      'hint':
          'Min-Heap where if counts equal, compare string alphabetically in reverse.',
      'codeTemplate':
          'PriorityQueue<String> pq = new PriorityQueue<>((a, b) -> {\n  int fa = map.get(a), fb = map.get(b);\n  return fa == fb ? ___ : fa - fb;\n});',
      'blocks': {'a': 'b.compareTo(a)', 'b': 'a.compareTo(b)', 'c': '0'},
      'hardBlocks': {'a': 'b.compareTo(a)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p20',
      'zone': 18,
      'subcategory': 'Advanced LC',
      'title': 'Single-Threaded CPU',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'CPU picks available task with shortest processing time.',
      'hint':
          'Sort tasks by arrival. Min-Heap for available tasks (by duration then index).',
      'codeTemplate':
          'while (i < n && tasks[i].arrival <= time) {\n  pq.add(tasks[i++]);\n}\nif (pq.isEmpty()) time = tasks[i].arrival;\nelse {\n  Task curr = ___ ;\n  time += curr.duration;\n  res[j++] = curr.index;\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.peek()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    {
      'id': 'z18_p21',
      'zone': 18,
      'subcategory': 'Greedy',
      'title': 'Kth Smallest Element in Matrix',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find Kth smallest element in a row-wise and column-wise sorted 2D matrix.',
      'hint':
          'Min-Heap of size N (first column). Poll min, then insert next element from its row.',
      'codeTemplate':
          'for (int i = 0; i < n; i++) pq.add(new Node(matrix[i][0], i, 0));\nfor (int i = 0; i < k - 1; i++) {\n  Node curr = pq.poll();\n  if (curr.col + 1 < n) pq.add(new Node(matrix[curr.row][curr.col + 1], ___ ));\n}',
      'blocks': {'a': 'curr.row, curr.col + 1', 'b': 'curr.val', 'c': '0'},
      'hardBlocks': {'a': 'curr.row, curr.col + 1', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p22',
      'zone': 18,
      'subcategory': 'Hard Mix',
      'title': 'IPO (LC 502)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Maximize total capital by picking at most K projects. Each needs minimum capital.',
      'hint':
          'Sort projects by capital needed. Min-Heap for unavailable, Max-Heap for available profits.',
      'codeTemplate':
          'while (k-- > 0) {\n  while (i < n && projects[i].capital <= W) {\n    pq.add(projects[i++].profit);\n  }\n  if (pq.isEmpty()) break;\n  W += ___ ;\n}',
      'hardTemplate':
          'public int findMaximizedCapital(int k, int w, int[] profits, int[] capital) {\n  int n = profits.length, i = 0;\n  Project[] p = new Project[n];\n  for(int j=0; j<n; j++) p[j] = new Project(capital[j], profits[j]);\n  Arrays.sort(p, (a,b) -> a.cap - b.cap);\n  PriorityQueue<Integer> pq = new PriorityQueue<>(Collections.reverseOrder());\n  while(k > 0) {\n    while(i < n && p[i].cap <= w) pq.add(p[i++].pro);\n    if(pq.isEmpty()) break;\n    w += ___ ;\n    k--;\n  }\n  return w;\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.peek()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p23',
      'zone': 18,
      'subcategory': 'Hard Mix',
      'title': 'Design Twitter Feed',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Fetch the 10 most recent tweet IDs in the user\'s news feed.',
      'hint':
          'Each user has a list of tweets with timestamps. Use a Max-Heap to merge the most recent from followees.',
      'codeTemplate':
          'for (int user : followees) {\n  Tweet t = map.get(user).head;\n  if (t != null) pq.add(t);\n}\nwhile (!pq.isEmpty() && res.size() < 10) {\n  Tweet t = ___ ;\n  res.add(t.id);\n  if (t.next != null) pq.add(t.next);\n}',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.peek()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p24',
      'zone': 18,
      'subcategory': 'Hard Mix',
      'title': 'Find Building Meet (LC 2944)',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Find the earliest building Alice and Bob can both reach based on heights.',
      'hint':
          'Process queries offline. Use a Min-Heap to track height requirements as you sweep buildings.',
      'codeTemplate':
          'while (!pq.isEmpty() && heights[i] > pq.peek().maxH) {\n  res[pq.poll().index] = ___ ;\n}',
      'blocks': {'a': 'i', 'b': 'pq.peek().index', 'c': '0'},
      'hardBlocks': {'a': 'i', 'b': 'pq.poll().index', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p25',
      'zone': 18,
      'subcategory': 'Greedy',
      'title': 'Rearrange String K Apart',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Rearrange string so same characters are at least K distance apart.',
      'hint': 'Max-Heap for counts + Waiting Queue of size K.',
      'codeTemplate':
          'char c = pq.poll();\nsb.append(c);\nwaitQueue.add(new Node(c, count - 1));\nif (waitQueue.size() >= k) {\n  Node n = waitQueue.poll();\n  if (n.count > 0) ___ ;\n}',
      'blocks': {'a': 'pq.add(n.c)', 'b': 'sb.append(n.c)', 'c': '0'},
      'hardBlocks': {'a': 'pq.add(n.c)', 'b': 'pq.poll()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p26',
      'zone': 18,
      'subcategory': 'Hard Mix',
      'title': 'Construct Target Array',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Can you reach target array by repeatedly replacing one element with sum of current array?',
      'hint':
          'Work backwards. Max element was last replaced. val = max % (sum - max).',
      'codeTemplate':
          'long max = pq.poll();\nlong rem = sum - max;\nif (rem == 1) return true;\nlong next = max % rem;\nif (next == 0 || next == max) return false;\npq.add( ___ );',
      'blocks': {'a': 'next', 'b': 'max - rem', 'c': '0'},
      'hardBlocks': {'a': 'next', 'b': 'rem', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p27',
      'zone': 18,
      'subcategory': 'Hard Mix',
      'title': 'Trapping Rain Water II',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Amount of water trapped in a 2D height map.',
      'hint':
          'Process boundaries inward using a Min-Heap. Each cell processed once.',
      'codeTemplate':
          'Cell curr = pq.poll();\nfor (int[] dir : directions) {\n  int nx = curr.x + dir[0], ny = curr.y + dir[1];\n  if (inBounds(nx, ny) && !visited[nx][ny]) {\n    count += Math.max(0, curr.h - h[nx][ny]);\n    pq.add(new Cell(nx, ny, Math.max( ___ )));\n  }\n}',
      'blocks': {'a': 'curr.h, h[nx][ny]', 'b': 'h[nx][ny], 0', 'c': '0'},
      'hardBlocks': {'a': 'curr.h, h[nx][ny]', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p28',
      'zone': 18,
      'subcategory': 'Greedy',
      'title': 'Minimum Operations to Array',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Min operations to make all array elements equal by reducing k elements by val.',
      'hint': 'Greedy logic with PriorityQueue.',
      'codeTemplate':
          'pq.add(val);\nwhile (pq.size() > 1) {\n  int v1 = pq.poll(), v2 = pq.poll();\n  if (v1 != v2) pq.add( ___ );\n}',
      'blocks': {'a': 'Math.abs(v1 - v2)', 'b': 'v1 + v2', 'c': '0'},
      'hardBlocks': {'a': 'Math.abs(v1 - v2)', 'b': 'v1', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p29',
      'zone': 18,
      'subcategory': 'Advanced LC',
      'title': 'Process Tasks Servers',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Assign tasks to available servers with smallest weight then smallest index.',
      'hint':
          'Two Heaps: Available (Min-Heap by weight/idx) and Working (Min-Heap by finish time).',
      'codeTemplate':
          'while (!working.isEmpty() && working.peek().finishTime <= time) {\n  available.add(working.poll().server);\n}\nif (available.isEmpty()) time = working.peek().finishTime;\nelse {\n  Server s = ___ ;\n  working.add(new Task(s, time + tasks[j]));\n}',
      'blocks': {'a': 'available.poll()', 'b': 'working.poll()', 'c': '0'},
      'hardBlocks': {'a': 'available.poll()', 'b': 'working.poll()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z18_p30',
      'zone': 18,
      'subcategory': 'Hard Mix',
      'title': 'Maximum Performance Team',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Pick at most K engineers to maximize (sum of speed) * (min of efficiency).',
      'hint':
          'Sort by efficiency desc. Maintain speed sum of at most K engineers in a Min-Heap.',
      'codeTemplate':
          'pq.add(eng.speed);\nspeedSum += eng.speed;\nif (pq.size() > k) speedSum -= ___ ;\nmaxPerm = Math.max(maxPerm, speedSum * eng.efficiency);',
      'blocks': {'a': 'pq.poll()', 'b': 'pq.peek()', 'c': '0'},
      'hardBlocks': {'a': 'pq.poll()', 'b': 'pq.remove()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },

    // ── ZONE 19: Graphs ──
    {
      'id': 'z19_p1',
      'zone': 19,
      'subcategory': 'Basics',
      'title': 'BFS Graph Traversal',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Standard Breadth-First Search for an adjacency list.',
      'hint': 'Use a Queue and visited array. Push neighbors if not visited.',
      'codeTemplate':
          'Queue<Integer> q = new LinkedList<>();\nq.offer(start); visited[start] = true;\nwhile (!q.isEmpty()) {\n  int node = q.poll();\n  for(int it : adj.get(node)) {\n    if(!visited[it]) {\n      visited[it] = true;\n      ___ ;\n    }\n  }\n}',
      'hardTemplate':
          'public ArrayList<Integer> bfsOfGraph(int V, ArrayList<ArrayList<Integer>> adj) {\n  ArrayList<Integer> bfs = new ArrayList<>();\n  boolean[] vis = new boolean[V];\n  Queue<Integer> q = new LinkedList<>();\n  q.add(0); vis[0] = true;\n  while(!q.isEmpty()) {\n    int node = q.poll();\n    bfs.add(node);\n    for(int it: adj.get(node)) {\n      if(!vis[it]) {\n        vis[it] = true;\n        ___ ;\n      }\n    }\n  }\n  return bfs;\n}',
      'blocks': {'a': 'q.offer(it)', 'b': 'q.poll()', 'c': '0'},
      'hardBlocks': {'a': 'q.add(it)', 'b': 'vis[it]=false', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p2',
      'zone': 19,
      'subcategory': 'Basics',
      'title': 'DFS Graph Traversal',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Recursive Depth-First Search for an adjacency list.',
      'hint': 'Mark visited, add to list, then recurse on unvisited neighbors.',
      'codeTemplate':
          'visited[node] = true;\nres.add(node);\nfor (int it : adj.get(node)) {\n  if (!visited[it]) {\n    ___ (it, visited, adj, res);\n  }\n}',
      'hardTemplate':
          'void dfs(int node, boolean[] vis, ArrayList<ArrayList<Integer>> adj, ArrayList<Integer> res) {\n  vis[node] = true;\n  res.add(node);\n  for(int it: adj.get(node)) {\n    if(!vis[it]) ___ ;\n  }\n}',
      'blocks': {'a': 'dfs', 'b': 'bfs', 'c': '0'},
      'hardBlocks': {
        'a': 'dfs(it, vis, adj, res)',
        'b': 'dfs(node, vis, adj, res)',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p3',
      'zone': 19,
      'subcategory': 'Basics',
      'title': 'Number of Islands (BFS)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find connected components in a 2D grid of 1s (land) and 0s (water).',
      'hint':
          'Iterate through grid. If 1 found, start BFS to mark all land in that island as 0.',
      'codeTemplate':
          'if (grid[i][j] == \'1\') {\n  count++;\n  ___ (grid, i, j);\n}',
      'hardTemplate':
          'void bfs(int r, int c, boolean[][] vis, char[][] grid) {\n  vis[r][c] = true;\n  Queue<Pair> q = new LinkedList<>();\n  q.add(new Pair(r, c));\n  while(!q.isEmpty()) {\n    int row = q.peek().first, col = q.peek().second; q.remove();\n    for(int delrow=-1; delrow<=1; delrow++) {\n      for(int delcol=-1; delcol<=1; delcol++) {\n        int nr = row + delrow, nc = col + delcol;\n        if(nr >= 0 && nr < n && nc >= 0 && nc < m && grid[nr][nc] == \'1\' && !vis[nr][nc]) {\n          vis[nr][nc] = true;\n          ___ ;\n        }\n      }\n    }\n  }\n}',
      'blocks': {'a': 'bfs', 'b': 'dfs', 'c': 'count++'},
      'hardBlocks': {'a': 'q.add(new Pair(nr, nc))', 'b': 'q.poll()', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p4',
      'zone': 19,
      'subcategory': 'Basics',
      'title': 'Flood Fill (DFS)',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Change color of all connected pixels of same starting color.',
      'hint':
          'Base case check (out of bounds, already colored, wrong color). Then recurse in 4 directions.',
      'codeTemplate':
          'void dfs(int r, int c, int[][] image, int color, int startColor) {\n  if (r < 0 || r >= n || c < 0 || c >= m || image[r][c] != startColor) return;\n  image[r][c] = color;\n  dfs(r + 1, c, image, color, startColor);\n  ___ (r - 1, c, image, color, startColor);\n  dfs(r, c + 1, image, color, startColor);\n  dfs(r, c - 1, image, color, startColor);\n}',
      'blocks': {'a': 'dfs', 'b': 'bfs', 'c': '0'},
      'hardBlocks': {'a': 'dfs', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p5',
      'zone': 19,
      'subcategory': 'Basics',
      'title': 'Rotting Oranges',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Min time until all oranges rot. Fresh oranges rot if adjacent to a rotten one.',
      'hint':
          'BFS with levels. Start BFS with all initially rotten oranges in the queue.',
      'codeTemplate':
          'while (!q.isEmpty()) {\n  int sz = q.size();\n  for (int i = 0; i < sz; i++) {\n    int[] curr = q.poll();\n    // check 4 neighbors and add fresh ones to queue\n  }\n  if (!q.isEmpty()) ___ ;\n}',
      'blocks': {'a': 'time++', 'b': 'count++', 'c': '0'},
      'hardBlocks': {'a': 'time++', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p6',
      'zone': 19,
      'subcategory': 'Cycles & Paths',
      'title': 'Cycle in Undirected Graph (BFS)',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Detect cycle using Breadth-First Search.',
      'hint':
          'If we visit an already visited node that is NOT the parent of the current node, we found a cycle.',
      'codeTemplate':
          'if (visited[it] && it != parent) return true;\nif (!visited[it]) {\n  visited[it] = true;\n  q.add(new Node(it, ___ ));\n}',
      'blocks': {'a': 'node', 'b': 'it', 'c': 'parent'},
      'hardBlocks': {'a': 'node', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p7',
      'zone': 19,
      'subcategory': 'Cycles & Paths',
      'title': 'Cycle in Undirected Graph (DFS)',
      'difficulty': 'Medium',
      'xp': 180,
      'description': 'Detect cycle using Depth-First Search.',
      'hint':
          'Pass parent in DFS. If neighbor visited and not parent, cycle exists.',
      'codeTemplate':
          'if (vis[it]) {\n  if (it != parent) return true;\n} else {\n  if (dfs(it, node, vis, adj)) return true;\n}',
      'hardTemplate':
          'boolean dfs(int node, int parent, boolean[] vis, ArrayList<ArrayList<Integer>> adj) {\n  vis[node] = true;\n  for(int it: adj.get(node)) {\n    if(!vis[it]) {\n       if(dfs(it, node, vis, adj)) return true;\n    } else if ( ___ ) return true;\n  }\n  return false;\n}',
      'blocks': {'a': 'it != parent', 'b': 'it == parent', 'c': 'node == it'},
      'hardBlocks': {'a': 'it != parent', 'b': 'it == parent', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p8',
      'zone': 19,
      'subcategory': 'Cycles & Paths',
      'title': 'Bipartite Graph (DFS)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Check if graph can be colored with 2 colors such that no neighbors have same color.',
      'hint':
          'If neighbor colored with same color, return false. If not colored, paint with opposite color.',
      'codeTemplate':
          'if (color[it] == -1) {\n  if (dfs(it, 1 - col, color, adj) == false) return false;\n} else if (color[it] == ___ ) return false;',
      'hardTemplate':
          'boolean dfs(int node, int col, int[] color, ArrayList<ArrayList<Integer>> adj) {\n  color[node] = col;\n  for(int it: adj.get(node)) {\n    if(color[it] == -1) {\n      if(dfs(it, 1-col, color, adj) == false) return false;\n    } else if(color[it] == ___ ) return false;\n  }\n  return true;\n}',
      'blocks': {'a': 'col', 'b': '1 - col', 'c': '0'},
      'hardBlocks': {'a': 'col', 'b': '1-col', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p9',
      'zone': 19,
      'subcategory': 'Cycles & Paths',
      'title': 'Cycle in Directed Graph (DFS)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Detect cycle in directed graph using path tracing.',
      'hint':
          'Keep track of pathVisited (nodes in current recursion stack). If visited and pathVisited, cycle found.',
      'codeTemplate':
          'vis[node] = true;\npathVis[node] = true;\nfor (int it : adj.get(node)) {\n  if (!vis[it]) {\n    if (dfs(it, vis, pathVis, adj)) return true;\n  } else if (pathVis[it]) return true;\n}\n___ [node] = false;',
      'blocks': {'a': 'pathVis', 'b': 'vis', 'c': 'adj'},
      'hardBlocks': {'a': 'pathVis', 'b': 'vis', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p10',
      'zone': 19,
      'subcategory': 'Cycles & Paths',
      'title': 'Topological Sort (Kahn\'s BFS)',
      'difficulty': 'Medium',
      'xp': 220,
      'description':
          'Linear ordering of vertices for a Directed Acyclic Graph (DAG).',
      'hint':
          'Calculate in-degree. Push nodes with 0 in-degree. Decr in-degree of neighbors.',
      'codeTemplate':
          'for (int it : adj.get(node)) {\n  indegree[it]--;\n  if (indegree[it] == 0) ___ ;\n}',
      'hardTemplate':
          'public int[] topoSort(int V, ArrayList<ArrayList<Integer>> adj) {\n  int[] indegree = new int[V];\n  for(int i=0; i<V; i++) for(int it: adj.get(i)) indegree[it]++;\n  Queue<Integer> q = new LinkedList<>();\n  for(int i=0; i<V; i++) if(indegree[i] == 0) q.add(i);\n  int[] res = new int[V]; int i = 0;\n  while(!q.isEmpty()) {\n    int node = q.poll(); res[i++] = node;\n    for(int it: adj.get(node)) {\n      indegree[it]--;\n      if(indegree[it] == 0) ___ ;\n    }\n  }\n  return res;\n}',
      'blocks': {'a': 'q.add(it)', 'b': 'q.poll()', 'c': '0'},
      'hardBlocks': {'a': 'q.add(it)', 'b': 'q.offer(node)', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p11',
      'zone': 19,
      'subcategory': 'Shortest Path',
      'title': 'Dijkstra\'s Algorithm',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Find shortest path from source to all nodes using a Priority Queue.',
      'hint':
          'Relax edges: if dist[node] + weight < dist[neighbor], update and add to PQ.',
      'codeTemplate':
          'while (!pq.isEmpty()) {\n  Node curr = pq.poll();\n  for (Edge neighbor : adj.get(curr.node)) {\n    if (dist[curr.node] + neighbor.weight < dist[neighbor.node]) {\n      dist[neighbor.node] = dist[curr.node] + neighbor.weight;\n      ___ ;\n    }\n  }\n}',
      'hardTemplate':
          'public int[] dijkstra(int V, ArrayList<ArrayList<ArrayList<Integer>>> adj, int S) {\n  int[] dist = new int[V];\n  Arrays.fill(dist, (int)1e9);\n  PriorityQueue<Pair> pq = new PriorityQueue<>((a,b) -> a.dist - b.dist);\n  dist[S] = 0; pq.add(new Pair(0, S));\n  while(!pq.isEmpty()) {\n    int d = pq.peek().dist, node = pq.peek().node; pq.remove();\n    for(ArrayList<Integer> it : adj.get(node)) {\n      int edgeW = it.get(1), adjNode = it.get(0);\n      if(d + edgeW < dist[adjNode]) {\n        dist[adjNode] = d + edgeW;\n        ___ ;\n      }\n    }\n  }\n  return dist;\n}',
      'blocks': {
        'a': 'pq.add(new Node(neighbor.node, dist[neighbor.node]))',
        'b': 'pq.poll()',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'pq.add(new Pair(dist[adjNode], adjNode))',
        'b': 'pq.poll()',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p12',
      'zone': 19,
      'subcategory': 'Shortest Path',
      'title': 'Bellman-Ford Algorithm',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find shortest paths and detect negative cycles by relaxing all edges V-1 times.',
      'hint':
          'Iterate through all edges V-1 times. If can still relax on Vth try, negative cycle exists.',
      'codeTemplate':
          'for (int i = 0; i < V - 1; i++) {\n  for (Edge edge : edges) {\n    if (dist[edge.u] != inf && dist[edge.u] + edge.w < dist[edge.v]) {\n      ___ ;\n    }\n  }\n}',
      'blocks': {
        'a': 'dist[edge.v] = dist[edge.u] + edge.w',
        'b': 'dist[edge.u] = dist[edge.v] + edge.w',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'dist[edge.v] = dist[edge.u] + edge.w',
        'b': '0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p13',
      'zone': 19,
      'subcategory': 'Shortest Path',
      'title': 'Floyd-Warshall Algorithm',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'All-pairs shortest path algorithm using Dynamic Programming.',
      'hint':
          'For every node k, check if path through k is shorter: dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j]).',
      'codeTemplate':
          'for (int k = 0; k < n; k++) {\n  for (int i = 0; i < n; i++) {\n    for (int j = 0; j < n; j++) {\n      ___ ;\n    }\n  }\n}',
      'blocks': {
        'a':
            'matrix[i][j] = Math.min(matrix[i][j], matrix[i][k] + matrix[k][j])',
        'b': 'matrix[i][j] = matrix[i][k] + matrix[k][j]',
        'c': '0',
      },
      'hardBlocks': {
        'a':
            'matrix[i][j] = Math.min(matrix[i][j], matrix[i][k] + matrix[k][j])',
        'b': '0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p14',
      'zone': 19,
      'subcategory': 'Shortest Path',
      'title': 'Shortest Path in DAG',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Shortest path in Directed Acyclic Graph using Topological Sort.',
      'hint':
          'Get Topo Sort. Relax edges in that order. This is faster than Dijkstra.',
      'codeTemplate':
          'while (!stack.isEmpty()) {\n  int node = stack.pop();\n  for (Pair it : adj.get(node)) {\n    if (dist[node] + it.weight < dist[it.v]) {\n      ___ ;\n    }\n  }\n}',
      'blocks': {
        'a': 'dist[it.v] = dist[node] + it.weight',
        'b': 'dist[it.v] = dist[node]',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'dist[it.v] = dist[node] + it.weight',
        'b': '0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p15',
      'zone': 19,
      'subcategory': 'Components & Sets',
      'title': 'Number of Provinces',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Find total number of connected components in a generic graph.',
      'hint':
          'Run DFS from every unvisited node. Increment count for each fresh DFS start.',
      'codeTemplate':
          'for (int i = 0; i < n; i++) {\n  if (!visited[i]) {\n    count++;\n    ___ ;\n  }\n}',
      'blocks': {
        'a': 'dfs(i, visited, adj)',
        'b': 'bfs(i, visited, adj)',
        'c': 'count++',
      },
      'hardBlocks': {'a': 'dfs(i, vis, adj)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p16',
      'zone': 19,
      'subcategory': 'Components & Sets',
      'title': 'Disjoint Set Union (DSU)',
      'difficulty': 'Medium',
      'xp': 220,
      'description':
          'Implement Union-Find with path compression and union by rank/size.',
      'hint':
          'Find returns parent of set. Union merges sets by attaching smaller tree to larger.',
      'codeTemplate':
          'int find(int i) {\n  if (parent[i] == i) return i;\n  return ___ ;\n}\nvoid union(int i, int j) {\n  int rootI = find(i);\n  int rootJ = find(j);\n  if (rootI != rootJ) parent[rootI] = rootJ;\n}',
      'blocks': {
        'a': 'parent[i] = find(parent[i])',
        'b': 'parent[i]',
        'c': 'i',
      },
      'hardBlocks': {'a': 'parent[i] = find(parent[i])', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p17',
      'zone': 19,
      'subcategory': 'Components & Sets',
      'title': 'Redundant Connection (DSU)',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find an edge that can be removed so the graph becomes a tree.',
      'hint':
          'Tree has no cycles. Use DSU. If union fails because nodes already in same set, edge is redundant.',
      'codeTemplate':
          'for (int[] edge : edges) {\n  if (find(edge[0]) == find(edge[1])) return edge;\n  ___ ;\n}',
      'hardTemplate':
          'public int[] findRedundantConnection(int[][] edges) {\n  int n = edges.length;\n  int[] parent = new int[n+1];\n  for(int i=0; i<=n; i++) parent[i] = i;\n  for(int[] edge : edges) {\n     int u = find(edge[0], parent);\n     int v = find(edge[1], parent);\n     if(u == v) return edge;\n     ___ ;\n  }\n  return new int[0];\n}',
      'blocks': {'a': 'union(edge[0], edge[1])', 'b': 'return edge', 'c': '0'},
      'hardBlocks': {'a': 'parent[u] = v', 'b': 'parent[v] = u', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p18',
      'zone': 19,
      'subcategory': 'Components & Sets',
      'title': 'Accounts Merge (DSU)',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Merge accounts belonging to same person based on common emails.',
      'hint':
          'Map each email to an ID. Use DSU to union IDs of same account and those sharing emails.',
      'codeTemplate':
          'for (String email : account.emails) {\n  if (!map.containsKey(email)) map.put(email, i);\n  else ___ ;\n}',
      'blocks': {
        'a': 'dsu.union(i, map.get(email))',
        'b': 'dsu.find(i)',
        'c': '0',
      },
      'hardBlocks': {'a': 'dsu.union(i, map.get(email))', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p19',
      'zone': 19,
      'subcategory': 'Components & Sets',
      'title': 'Number of Operations (DSU)',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Min cables to move to connect all computers.',
      'hint':
          'If edges < n-1, impossible. Answer = (number of components - 1). Use DSU to count sets.',
      'codeTemplate':
          'for (int[] edge : edges) dsu.union(edge[0], edge[1]);\nfor (int i = 0; i < n; i++) {\n  if (dsu.parent[i] == i) ___ ;\n}\nreturn count - 1;',
      'blocks': {'a': 'count++', 'b': 'count--', 'c': '0'},
      'hardBlocks': {'a': 'count++', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p20',
      'zone': 19,
      'subcategory': 'Components & Sets',
      'title': 'Smallest String with Swaps',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Lexicographical smallest string by swapping allowed pairs.',
      'hint':
          'Swaps are transitive (0,1) and (1,2) means 0,1,2 controllable. Use DSU to find connected components of indices.',
      'codeTemplate':
          'for (int i = 0; i < n; i++) {\n  int root = dsu.find(i);\n  ___ ;\n}',
      'blocks': {
        'a': 'map.get(root).add(s.charAt(i))',
        'b': 'sb.append(s.charAt(i))',
        'c': '0',
      },
      'hardBlocks': {'a': 'map.get(root).add(s.charAt(i))', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p21',
      'zone': 19,
      'subcategory': 'MST',
      'title': 'Prim\'s Algorithm',
      'difficulty': 'Medium',
      'xp': 250,
      'description': 'Construct MST by greedily adding nearest unvisited node.',
      'hint':
          'Use a Priority Queue to store (weight, node). Maintain a MST sum. Mark nodes visited as they are polled.',
      'codeTemplate':
          'while (!pq.isEmpty()) {\n  Node curr = pq.poll();\n  if (vis[curr.node]) continue;\n  vis[curr.node] = true;\n  mstSum += curr.weight;\n  for (Edge neighbor : adj.get(curr.node)) {\n    if (!vis[neighbor.node]) ___ ;\n  }\n}',
      'blocks': {
        'a': 'pq.add(new Node(neighbor.node, neighbor.weight))',
        'b': 'pq.poll()',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'pq.add(new Node(neighbor.node, neighbor.weight))',
        'b': '0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p22',
      'zone': 19,
      'subcategory': 'MST',
      'title': 'Kruskal\'s Algorithm',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Construct MST by sorting all edges and using DSU to avoid cycles.',
      'hint':
          'Sort all edges by weight. For each edge, if endpoints are in different sets, add to MST and union them.',
      'codeTemplate':
          'Collections.sort(edges);\nfor (Edge edge : edges) {\n  if (dsu.find(edge.u) != dsu.find(edge.v)) {\n    mstWeight += edge.w;\n    ___ ;\n  }\n}',
      'blocks': {
        'a': 'dsu.union(edge.u, edge.v)',
        'b': 'dsu.find(edge.u)',
        'c': '0',
      },
      'hardBlocks': {'a': 'dsu.union(edge.u, edge.v)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p23',
      'zone': 19,
      'subcategory': 'LC Mix',
      'title': 'Course Schedule I',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Can you finish all courses? (Cycle detection in directed graph).',
      'hint':
          'Model as a graph. If cycle exists, return false. Use Kahn\'s algorithm or DFS pathVisited.',
      'codeTemplate':
          'for (int i = 0; i < n; i++) if (indegree[i] == 0) q.add(i);\nwhile (!q.isEmpty()) {\n  int node = q.poll();\n  count++;\n  for (int it : adj.get(node)) {\n    indegree[it]--;\n    if (indegree[it] == 0) ___ ;\n  }\n}\nreturn count == n;',
      'blocks': {'a': 'q.add(it)', 'b': 'q.poll()', 'c': '0'},
      'hardBlocks': {'a': 'q.add(it)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p24',
      'zone': 19,
      'subcategory': 'LC Mix',
      'title': 'Course Schedule II',
      'difficulty': 'Medium',
      'xp': 220,
      'description':
          'Return order of courses to finish all. Return empty if impossible.',
      'hint':
          'This is just Topological Sorting. If count of sorted nodes != N, return empty.',
      'codeTemplate':
          'if (indegree[it] == 0) q.add(it);\n...\nif (i == n) return res;\nelse ___ ;',
      'blocks': {'a': 'return new int[0]', 'b': 'return res', 'c': '0'},
      'hardBlocks': {'a': 'return new int[0]', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p25',
      'zone': 19,
      'subcategory': 'LC Mix',
      'title': 'Alien Dictionary',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Determine character order based on list of words from an alien language.',
      'hint':
          'Create directed edges for first differing characters in adjacent words. Perform Topo Sort.',
      'codeTemplate':
          'for (int j = 0; j < Math.min(s1.length(), s2.length()); j++) {\n  if (s1.charAt(j) != s2.charAt(j)) {\n    adj.get(s1.charAt(j) - \'a\').add(s2.charAt(j) - \'a\');\n    ___ ;\n  }\n}',
      'blocks': {'a': 'break', 'b': 'continue', 'c': 'return'},
      'hardBlocks': {'a': 'break', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p26',
      'zone': 19,
      'subcategory': 'LC Mix',
      'title': 'Word Ladder I',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Shortest transformation sequence from beginWord to endWord.',
      'hint':
          'Use BFS. Change one char at a time, check if in wordList. Sequence length increases with each BFS level.',
      'codeTemplate':
          'for (char c = \'a\'; c <= \'z\'; c++) {\n  char[] replaced = curr.toCharArray();\n  replaced[i] = c;\n  String next = new String(replaced);\n  if (set.contains(next)) {\n    set.remove(next);\n    ___ ;\n  }\n}',
      'blocks': {
        'a': 'q.add(new Pair(next, steps + 1))',
        'b': 'q.poll()',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'q.add(new Pair(next, steps + 1))',
        'b': '0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p27',
      'zone': 19,
      'subcategory': 'Shortest Path',
      'title': 'Path With Minimum Effort',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Find route with minimum absolute difference between adjacent heights.',
      'hint':
          'Modified Dijkstra. dist[nx][ny] = max(dist[curr], abs(h[curr] - h[next])).',
      'codeTemplate':
          'int newEffort = Math.max(effort, Math.abs(heights[nx][ny] - heights[x][y]));\nif (newEffort < dist[nx][ny]) {\n  dist[nx][ny] = newEffort;\n  ___ ;\n}',
      'blocks': {
        'a': 'pq.add(new Node(nx, ny, newEffort))',
        'b': 'pq.poll()',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'pq.add(new Node(nx, ny, newEffort))',
        'b': '0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p28',
      'zone': 19,
      'subcategory': 'Shortest Path',
      'title': 'Cheapest Flights K Stops',
      'difficulty': 'Medium',
      'xp': 250,
      'description': 'Min cost from src to dst with at most K stops.',
      'hint': 'BFS with levels based on stops. Only relax if stops < K.',
      'codeTemplate':
          'if (stops <= K && cost + weight < dist[neighbor]) {\n  dist[neighbor] = cost + weight;\n  ___ ;\n}',
      'blocks': {
        'a': 'q.add(new Node(neighbor, dist[neighbor], stops + 1))',
        'b': 'q.poll()',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'q.add(new Tuple(stops+1, neighbor, dist[neighbor]))',
        'b': '0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p29',
      'zone': 19,
      'subcategory': 'Shortest Path',
      'title': 'Minimum Multiplications',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Find min steps to reach end by multiplying start with given numbers.',
      'hint': 'BFS on numbers 0-99999. Use distance array initialized to -1.',
      'codeTemplate':
          'int num = (node * it) % 100000;\nif (dist[num] == -1) {\n  dist[num] = steps + 1;\n  if (num == end) return dist[num];\n  ___ ;\n}',
      'blocks': {'a': 'q.add(num)', 'b': 'return steps', 'c': '0'},
      'hardBlocks': {'a': 'q.add(num)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z19_p30',
      'zone': 19,
      'subcategory': 'Shortest Path',
      'title': 'Threshold Distance Cities',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Find city with smallest number of reachable cities within distance threshold.',
      'hint':
          'Use Floyd-Warshall to get all-pairs shortest paths. Then count reachable per city.',
      'codeTemplate':
          'for (int j = 0; j < n; j++) {\n  if (matrix[i][j] <= threshold) ___ ;\n}\nif (count <= minCount) { minCount = count; res = i; }',
      'blocks': {'a': 'count++', 'b': 'count--', 'c': '0'},
      'hardBlocks': {'a': 'count++', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p1',
      'zone': 20,
      'subcategory': 'Bit Basics',
      'title': 'Odd or Even',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Check if a number is odd or even using bitwise operators.',
      'hint':
          'Any even number has 0 as its last bit. (n & 1) == 0 for even, 1 for odd.',
      'codeTemplate':
          'String check(int n) {\n  return (n & 1) == ___ ? "Even" : "Odd";\n}',
      'hardTemplate':
          'String oddEven(int n) {\n  return (___) == 1 ? "Odd" : "Even";\n}',
      'blocks': {'a': '0', 'b': '1', 'c': 'n'},
      'hardBlocks': {'a': 'n & 1', 'b': 'n | 1', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p2',
      'zone': 20,
      'subcategory': 'Bit Basics',
      'title': 'Single Number I',
      'difficulty': 'Easy',
      'xp': 120,
      'description':
          'Find the only number appearing once where every other appears twice.',
      'hint':
          'XORing a number with itself gives 0. n ^ n = 0. XOR all elements.',
      'codeTemplate':
          'int singleNumber(int[] nums) {\n  int res = 0;\n  for(int x : nums) res = ___ ;\n  return res;\n}',
      'hardTemplate':
          'public int singleNumber(int[] nums) {\n  int ans = 0;\n  for(int i: nums) ___ ;\n  return ans;\n}',
      'blocks': {'a': 'res ^ x', 'b': 'res | x', 'c': '0'},
      'hardBlocks': {'a': 'ans ^= i', 'b': 'ans |= i', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p3',
      'zone': 20,
      'subcategory': 'Bit Basics',
      'title': 'Get i-th Bit',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Find the value (0 or 1) of the i-th bit from the right (0-indexed).',
      'hint':
          'Left shift 1 by i positions to create a mask. Then use bitwise AND.',
      'codeTemplate':
          'int getBit(int n, int i) {\n  int mask = 1 << i;\n  return (n & mask) == ___ ? 0 : 1;\n}',
      'hardTemplate':
          'int getBit(int n, int i) {\n  return (n & ( ___ )) != 0 ? 1 : 0;\n}',
      'blocks': {'a': '0', 'b': '1', 'c': 'mask'},
      'hardBlocks': {'a': '1 << i', 'b': 'i << 1', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p4',
      'zone': 20,
      'subcategory': 'Bit Basics',
      'title': 'Set i-th Bit',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Turn the i-th bit to 1, regardless of its current state.',
      'hint': 'Mask: (1 << i). Use bitwise OR to set the bit.',
      'codeTemplate': 'int setBit(int n, int i) {\n  return n | ( ___ );\n}',
      'blocks': {'a': '1 << i', 'b': '1 >> i', 'c': '0'},
      'hardBlocks': {'a': '1 << i', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p5',
      'zone': 20,
      'subcategory': 'Bit Basics',
      'title': 'Clear i-th Bit',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Turn the i-th bit to 0, regardless of its current state.',
      'hint':
          'Mask: ~(1 << i). This gives a number with 0 at i and 1s everywhere else. Use bitwise AND.',
      'codeTemplate':
          'int clearBit(int n, int i) {\n  int mask = ___ ;\n  return n & mask;\n}',
      'hardTemplate': 'int clearBit(int n, int i) {\n  return n & ( ___ );\n}',
      'blocks': {'a': '~(1 << i)', 'b': '1 << i', 'c': '0'},
      'hardBlocks': {'a': '~(1 << i)', 'b': '!(1 << i)', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p6',
      'zone': 20,
      'subcategory': 'Bit Hacks',
      'title': 'Power of 2 Check',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Determine if a number N is a power of 2 using bits.',
      'hint':
          'If N is power of 2, (N & (N-1)) will be 0. Example: 8 (1000) & 7 (0111) = 0.',
      'codeTemplate':
          'boolean isPowerOfTwo(int n) {\n  if (n <= 0) return false;\n  return (n & ( ___ )) == 0;\n}',
      'hardTemplate':
          'public boolean isPowerOfTwo(int n) {\n  return n > 0 && ( ___ ) == 0;\n}',
      'blocks': {'a': 'n - 1', 'b': 'n + 1', 'c': 'n'},
      'hardBlocks': {'a': 'n & (n-1)', 'b': 'n | (n-1)', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p7',
      'zone': 20,
      'subcategory': 'Bit Hacks',
      'title': 'Count Set Bits',
      'difficulty': 'Medium',
      'xp': 180,
      'description':
          'Count number of 1s in the binary representation (Hamming Weight).',
      'hint':
          'Brian Kernighan\'s Algorithm: n = n & (n-1) repeatedly until n becomes 0.',
      'codeTemplate': 'while (n > 0) {\n  n = n & ( ___ );\n  count++;\n}',
      'hardTemplate':
          'public int hammingWeight(int n) {\n  int count = 0;\n  while(n != 0) {\n    n &= ( ___ );\n    count++;\n  }\n  return count;\n}',
      'blocks': {'a': 'n - 1', 'b': 'n + 1', 'c': '0'},
      'hardBlocks': {'a': 'n - 1', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p8',
      'zone': 20,
      'subcategory': 'Bit Hacks',
      'title': 'Find Position of Set Bit',
      'difficulty': 'Medium',
      'xp': 200,
      'description':
          'Find the index of the only set bit. If more than one or zero bits are set, return -1.',
      'hint':
          'Check if power of 2 first. Then use log2 or right shift until n becomes 1.',
      'codeTemplate':
          'if (!isPowerOfTwo(n)) return -1;\nint pos = 1;\nwhile (n > 1) {\n  n = ___ ;\n  pos++;\n}\nreturn pos;',
      'blocks': {'a': 'n >> 1', 'b': 'n << 1', 'c': '0'},
      'hardBlocks': {'a': 'n >> 1', 'b': 'n / 2', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p9',
      'zone': 20,
      'subcategory': 'Bit Hacks',
      'title': 'XOR from 1 to N',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Calculate XOR of all numbers from 1 to N in O(1) time.',
      'hint': 'Pattern: N%4 == 0 (N), 1 (1), 2 (N+1), 3 (0).',
      'codeTemplate':
          'if (n % 4 == 0) return n;\nif (n % 4 == 1) return 1;\nif (n % 4 == 2) return ___ ;\nreturn 0;',
      'blocks': {'a': 'n + 1', 'b': 'n - 1', 'c': '0'},
      'hardBlocks': {'a': 'n + 1', 'b': 'n', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p10',
      'zone': 20,
      'subcategory': 'Bit Hacks',
      'title': 'Two Non-Repeating Numbers',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Every number appears twice except two. Find those two unique numbers.',
      'hint':
          'XOR all. Result is x^y. Find the rightmost set bit in x^y. Divide numbers into two groups based on that bit.',
      'codeTemplate':
          'int xor = 0;\nfor(int i : nums) xor ^= i;\nint set_bit = xor & ___ ;\nfor(int i : nums) {\n  if((i & set_bit) > 0) ans1 ^= i;\n  else ans2 ^= i;\n}',
      'hardTemplate':
          'public int[] singleNumber(int[] nums) {\n  int xor = 0;\n  for(int n : nums) xor ^= n;\n  int bit = xor & ( ___ );\n  int[] res = new int[2];\n  for(int n : nums) {\n    if((n & bit) == 0) res[0] ^= n;\n    else res[1] ^= n;\n  }\n  return res;\n}',
      'blocks': {'a': '-xor', 'b': 'xor', 'c': '1'},
      'hardBlocks': {'a': '-xor', 'b': '~(xor-1)', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p11',
      'zone': 20,
      'subcategory': 'Bitmasks',
      'title': 'Subsets using Bitmask',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Generate all possible subsets of an array using bit manipulation.',
      'hint':
          'An array of size N has 2^N subsets. Use bits of numbers from 0 to 2^N - 1 to decide which elements to include.',
      'codeTemplate':
          'int n = nums.length;\nfor (int i = 0; i < (1 << n); i++) {\n  List<Integer> subset = new ArrayList<>();\n  for (int j = 0; j < n; j++) {\n    if (((i >> j) & 1) == 1) ___ ;\n  }\n  res.add(subset);\n}',
      'blocks': {'a': 'subset.add(nums[j])', 'b': 'subset.add(i)', 'c': '0'},
      'hardBlocks': {'a': 'subset.add(nums[j])', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p12',
      'zone': 20,
      'subcategory': 'Bitmasks',
      'title': 'Bitwise AND of Range',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Find bitwise AND of all numbers in range [left, right].',
      'hint':
          'Find common prefix of left and right binary representations. Keep shifting right until they match.',
      'codeTemplate':
          'while (left < right) {\n  left >>= 1;\n  right >>= 1;\n  shift++;\n}\nreturn left << ___ ;',
      'blocks': {'a': 'shift', 'b': '1', 'c': '0'},
      'hardBlocks': {'a': 'shift', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p13',
      'zone': 20,
      'subcategory': 'Bitmasks',
      'title': 'Maximum XOR Two Numbers',
      'difficulty': 'Medium',
      'xp': 250,
      'description': 'Find max XOR value of two numbers in an array.',
      'hint':
          'Build the answer bit by bit from left to right. Use a Set to store prefixes.',
      'codeTemplate':
          'for (int i = 31; i >= 0; i--) {\n  mask = mask | (1 << i);\n  Set<Integer> set = new HashSet<>();\n  for (int num : nums) set.add(num & mask);\n  int tmp = max | (1 << i);\n  for (int pref : set) {\n    if (set.contains(tmp ^ pref)) { ___ ; break; }\n  }\n}',
      'blocks': {'a': 'max = tmp', 'b': 'max = max | pref', 'c': '0'},
      'hardBlocks': {'a': 'max = tmp', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p14',
      'zone': 20,
      'subcategory': 'Bitmasks',
      'title': 'Min Flips for OR',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Min flips to make (a OR b) == c.',
      'hint':
          'Check bits of a, b, and c one by one. If c\'s bit is 0, both a and b bits must become 0.',
      'codeTemplate':
          'if ((c_bit) == 0) {\n  flips += (a_bit + b_bit);\n} else {\n  if (a_bit == 0 && b_bit == 0) ___ ;\n}',
      'blocks': {'a': 'flips++', 'b': 'flips--', 'c': '0'},
      'hardBlocks': {'a': 'flips++', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p15',
      'zone': 20,
      'subcategory': 'Bitmasks',
      'title': 'Total Hamming Distance',
      'difficulty': 'Medium',
      'xp': 220,
      'description':
          'Sum of Hamming distances between all pairs of integers in an array.',
      'hint':
          'Check each of the 32 bits independently. If k elements have i-th bit set and N-k have it unset, contribution = k * (N-k).',
      'codeTemplate':
          'for (int i = 0; i < 32; i++) {\n  int countOnes = 0;\n  for (int num : nums) countOnes += (num >> i) & 1;\n  ans += (countOnes) * ( ___ );\n}',
      'blocks': {'a': 'n - countOnes', 'b': 'countOnes', 'c': 'n'},
      'hardBlocks': {'a': 'n - countOnes', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p16',
      'zone': 20,
      'subcategory': 'Advanced Algos',
      'title': 'Sqrt Decomposition Intro',
      'difficulty': 'Medium',
      'xp': 250,
      'description': 'Calculate sum of range queries using Sqrt Decomposition.',
      'hint':
          'Divide array into blocks of size sqrt(N). Store sum of each block. Query = partial block + full blocks + partial block.',
      'codeTemplate':
          '// Build\nfor (int i = 0; i < n; i++) {\n  blocks[i / blockSize] += nums[i];\n}\n// Query range [L, R]\nwhile (i <= R) {\n  if (i % blockSize == 0 && i + blockSize - 1 <= R) {\n     sum += blocks[i / blockSize];\n     ___ ;\n  } else {\n     sum += nums[i++];\n  }\n}',
      'blocks': {'a': 'i += blockSize', 'b': 'i++', 'c': 'i--'},
      'hardBlocks': {'a': 'i += blockSize', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p17',
      'zone': 20,
      'subcategory': 'Advanced Algos',
      'title': 'Mo\'s Algorithm Intro',
      'difficulty': 'Hard',
      'xp': 300,
      'description':
          'Offline range sum queries optimized using Mo\'s square root heuristic.',
      'hint':
          'Sort queries by block index of L, then by R. Move L and R pointers only as much as needed.',
      'codeTemplate':
          'for (Query q : queries) {\n  while (currL > q.L) add(--currL);\n  while (currR < q.R) add(++currR);\n  while (currL < q.L) ___ ;\n  while (currR > q.R) remove(currR--);\n  q.ans = currentAns;\n}',
      'blocks': {
        'a': 'remove(currL++)',
        'b': 'add(currL++)',
        'c': 'remove(currL--)',
      },
      'hardBlocks': {'a': 'remove(currL++)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p18',
      'zone': 20,
      'subcategory': 'Advanced Algos',
      'title': 'Fenwick Tree (BIT) Update',
      'difficulty': 'Medium',
      'xp': 250,
      'description': 'Update an element in a Binary Indexed Tree.',
      'hint':
          'To update, add value to current index and move to next responsible index using i += i & (-i).',
      'codeTemplate':
          'void update(int i, int val) {\n  for (; i <= n; i += ___ ) {\n    bit[i] += val;\n  }\n}',
      'blocks': {'a': 'i & (-i)', 'b': 'i | (-i)', 'c': 'i'},
      'hardBlocks': {'a': 'i & (-i)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p19',
      'zone': 20,
      'subcategory': 'Advanced Algos',
      'title': 'Fenwick Tree (BIT) Query',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Get prefix sum up to index i using a Binary Indexed Tree.',
      'hint':
          'To query, add current bit value and move to parent index using i -= i & (-i).',
      'codeTemplate':
          'int query(int i) {\n  int sum = 0;\n  for (; i > 0; i -= ___ ) {\n    sum += bit[i];\n  }\n  return sum;\n}',
      'blocks': {'a': 'i & (-i)', 'b': 'i | (-i)', 'c': 'i'},
      'hardBlocks': {'a': 'i & (-i)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p20',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Counting Bits (LC 338)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Given n, return an array of size n+1 where each element is the number of set bits.',
      'hint': 'DP approach: bits[i] = bits[i >> 1] + (i & 1).',
      'codeTemplate':
          'for (int i = 1; i <= n; i++) {\n  res[i] = res[i >> 1] + ( ___ );\n}',
      'blocks': {'a': 'i & 1', 'b': 'i | 1', 'c': '0'},
      'hardBlocks': {'a': 'i & 1', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p21',
      'zone': 20,
      'subcategory': 'String Algos',
      'title': 'Rabin-Karp Algorithm',
      'difficulty': 'Medium',
      'xp': 250,
      'description': 'String matching using rolling hash.',
      'hint':
          'Calculate hash of pattern. Calculate hash of first window of text. Compare. Slide window by updating hash in O(1).',
      'codeTemplate':
          'for (int i = 0; i <= n - m; i++) {\n  if (pHash == tHash) {\n    if (text.substring(i, i + m).equals(pattern)) return i;\n  }\n  if (i < n - m) tHash = (d * (tHash - text.charAt(i) * h) + ___ ) % q;\n}',
      'blocks': {'a': 'text.charAt(i + m)', 'b': 'text.charAt(i)', 'c': '0'},
      'hardBlocks': {'a': 'text.charAt(i + m)', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p22',
      'zone': 20,
      'subcategory': 'String Algos',
      'title': 'Z-Algorithm',
      'difficulty': 'Medium',
      'xp': 250,
      'description': 'Linear time string matching using Z-array.',
      'hint':
          'Z[i] is length of longest common prefix between S and S[i..n-1]. Form string P + \$ + T.',
      'codeTemplate':
          'for (int i = 1; i < n; i++) {\n  if (i <= r) z[i] = Math.min(r - i + 1, z[i - l]);\n  while (i + z[i] < n && s.charAt(z[i]) == s.charAt(i + z[i])) ___ ;\n  if (i + z[i] - 1 > r) { l = i; r = i + z[i] - 1; }\n}',
      'blocks': {'a': 'z[i]++', 'b': 'z[i]--', 'c': '0'},
      'hardBlocks': {'a': 'z[i]++', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p23',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Single Number II',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Every number appears thrice except one. Find it.',
      'hint':
          'Count bits at each position across all numbers. If sum % 3 != 0, that bit belongs to the answer.',
      'codeTemplate':
          'for (int i = 0; i < 32; i++) {\n  int sum = 0;\n  for (int num : nums) sum += (num >> i) & 1;\n  if (sum % 3 != 0) ans |= ( ___ );\n}',
      'blocks': {'a': '1 << i', 'b': '1 >> i', 'c': 'i'},
      'hardBlocks': {'a': '1 << i', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p24',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Single Number III',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Two numbers appear once, all others twice. Find the two.',
      'hint':
          'XOR all. Find rightmost set bit. Partition array into two groups based on that bit and XOR separately.',
      'codeTemplate':
          'int xor = 0;\nfor (int n : nums) xor ^= n;\nint mask = xor & ( ___ );\nint[] res = new int[2];\nfor (int n : nums) {\n  if ((n & mask) == 0) res[0] ^= n;\n  else res[1] ^= n;\n}',
      'blocks': {'a': '-xor', 'b': 'xor', 'c': '1'},
      'hardBlocks': {'a': '-xor', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p25',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Max Product Word Lengths',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Find max value of length(s[i]) * length(s[j]) where strings share no common letters.',
      'hint':
          'Represent each word as a 26-bit integer (bitmask). Two words share no letters if (mask1 & mask2) == 0.',
      'codeTemplate':
          'for (char c : words[i].toCharArray()) {\n  masks[i] |= (1 << ( ___ ));\n}\n...\nif ((masks[i] & masks[j]) == 0) ans = Math.max(ans, len[i] * len[j]);',
      'blocks': {'a': 'c - \'a\'', 'b': 'c', 'c': '0'},
      'hardBlocks': {'a': 'c - \'a\'', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p26',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Divide Two Integers',
      'difficulty': 'Medium',
      'xp': 250,
      'description':
          'Divide two integers without using multiplication, division, or mod operators.',
      'hint':
          'Use bit shifts. Find largest k such that (divisor << k) <= dividend. Subtract and repeat.',
      'codeTemplate':
          'while (a >= b) {\n  int k = 0;\n  while (a >= (b << (k + 1))) ___ ;\n  a -= (b << k);\n  ans += (1 << k);\n}',
      'blocks': {'a': 'k++', 'b': 'k--', 'c': '0'},
      'hardBlocks': {'a': 'k++', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p27',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Sum of Two Integers',
      'difficulty': 'Medium',
      'xp': 200,
      'description': 'Calculate sum of a and b without using + or - operators.',
      'hint':
          'Use XOR for addition and AND with bit shift for carry. Repeat until carry is 0.',
      'codeTemplate':
          'while (b != 0) {\n  int carry = (a & b) << 1;\n  a = ___ ;\n  b = carry;\n}',
      'blocks': {'a': 'a ^ b', 'b': 'a | b', 'c': 'a & b'},
      'hardBlocks': {'a': 'a ^ b', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p28',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Binary Watch (LC 401)',
      'difficulty': 'Easy',
      'xp': 150,
      'description':
          'Total possible times shown by watch with specific number of set bits.',
      'hint':
          'Iterate through hours (0-11) and minutes (0-59). Count set bits in both. If sum == N, add to result.',
      'codeTemplate':
          'for (int h = 0; h < 12; h++) {\n  for (int m = 0; m < 60; m++) {\n    if (Integer.bitCount(h) + Integer.bitCount(m) == n) ___ ;\n  }\n}',
      'blocks': {
        'a': 'res.add(String.format("%d:%02d", h, m))',
        'b': 'res.add(h + ":" + m)',
        'c': '0',
      },
      'hardBlocks': {
        'a': 'res.add(String.format("%d:%02d", h, m))',
        'b': '0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p29',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Power of Four',
      'difficulty': 'Easy',
      'xp': 150,
      'description': 'Check if a number is a power of 4.',
      'hint':
          'Must be power of 2. Also (n - 1) % 3 == 0. Or check if the only set bit is at an even position.',
      'codeTemplate': 'return n > 0 && (n & (n - 1)) == 0 && ___ ;',
      'blocks': {'a': '(n - 1) % 3 == 0', 'b': 'n % 3 == 0', 'c': 'n % 4 == 0'},
      'hardBlocks': {
        'a': '(n - 1) % 3 == 0',
        'b': '(n & 0x55555555) != 0',
        'c': '0',
      },
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
    {
      'id': 'z20_p30',
      'zone': 20,
      'subcategory': 'LC Mix',
      'title': 'Min XOR Sum Permutations',
      'difficulty': 'Hard',
      'xp': 300,
      'description': 'Find min sum of (a[i] XOR b[j]) over all permutations.',
      'hint':
          'Use DP with Bitmask. dp[mask] is min sum using first `countSetBits(mask)` elements of A.',
      'codeTemplate':
          'for (int j = 0; j < n; j++) {\n  if (((mask >> j) & 1) == 0) {\n    res = Math.min(res, (a[i] ^ b[j]) + ___ );\n  }\n}',
      'blocks': {
        'a': 'solve(i + 1, mask | (1 << j))',
        'b': 'solve(i, mask)',
        'c': '0',
      },
      'hardBlocks': {'a': 'solve(i + 1, mask | (1 << j))', 'b': '0', 'c': '0'},
      'solution': {'1': 'a'},
      'hardSolution': {'1': 'a'},
    },
  ];

  // ── Title-specific lessons for named base problems ──
  List<Map<String, dynamic>>? getLessonByTitle(String title) {
    final t = title.toLowerCase();

    // ── ARRAYS ──
    if (t.contains('array reversal') ||
        t.contains('reverse') && t.contains('array')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'What Is an Array?',
          'content':
              'An array is a contiguous block of memory holding elements of the same type. In Java: int[] arr = {5, 3, 8, 1, 9}. Each element sits at index 0..N-1. Access is O(1) — arr[2] goes directly to the 3rd slot.',
          'data': [5, 3, 8, 1, 9],
          'highlights': <int, int>{2: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: '[0]',
            1: '[1]',
            2: '[2]=8',
            3: '[3]',
            4: '[4]',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Two-Pointer Reversal',
          'content':
              'To reverse in-place: start with left=0 and right=4. Swap arr[left] & arr[right], then left++, right--. Repeat until left≥right. No extra array needed — O(N) time, O(1) space.',
          'data': [9, 1, 8, 3, 5],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            4: AppTheme.errorRed.value,
          },
          'pointers': <int, String>{0: 'left', 4: 'right → swapped!'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What is the index of the LAST element in an array of size 5?',
          'options': ['5', '4', '3', '0'],
          'answer': 1,
        },
      ];
    }

    if (t.contains('swap') && (t.contains('array') || t.contains('element'))) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Why Swapping Needs a Temp Variable',
          'content':
              'To swap arr[0] and arr[3]: if you do arr[0]=arr[3] first, you lose the original arr[0]. Always use a temp: temp=arr[0], arr[0]=arr[3], arr[3]=temp. A classic beginner trap!',
          'data': [5, 3, 8, 1, 9],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            3: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{0: 'index1=5', 3: 'index2=1'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'After Swap',
          'content':
              'After: temp=5, arr[0]=arr[3]=1, arr[3]=temp=5. The values are exchanged. This temp-variable pattern appears everywhere: bubble sort, reversal, cyclic sort.',
          'data': [1, 3, 8, 5, 9],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            3: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{0: 'now=1 ✓', 3: 'now=5 ✓'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'Why do we need a temp variable to swap two array elements?',
          'options': [
            'To speed up the swap',
            'To avoid losing one value when it gets overwritten',
            'Because arrays are immutable',
            'Java requires it by syntax',
          ],
          'answer': 1,
        },
      ];
    }

    if (t.contains('max') && t.contains('array') ||
        t.contains('max item') ||
        t.contains('maximum')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Linear Scan — Finding Maximum',
          'content':
              'To find the max: start by assuming arr[0] is the max. Then scan every element — if you find something bigger, update max. You MUST look at every element, so it\'s O(N). No shortcut exists for unsorted arrays.',
          'data': [3, 7, 1, 9, 4, 6],
          'highlights': <int, int>{0: AppTheme.accentYellow.value},
          'pointers': <int, String>{0: 'max=3 (start)'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Scan Complete',
          'content':
              'After scanning: we hit 7 (update), hit 9 (update again). Final max=9 at index 3. This is the classic "running max" pattern — also used for max profit, peak finding, and more.',
          'data': [3, 7, 1, 9, 4, 6],
          'highlights': <int, int>{3: AppTheme.matrixGreen.value},
          'pointers': <int, String>{1: 'update max=7', 3: 'update max=9 ✓'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What time complexity is required to find the max in an unsorted array of N elements?',
          'options': ['O(1)', 'O(log N)', 'O(N)', 'O(N²)'],
          'answer': 2,
        },
      ];
    }

    // ── SORTING ──
    if (t.contains('bubble sort')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Bubble Sort — How It Works',
          'content':
              'Bubble Sort repeatedly compares adjacent pairs and swaps them if out of order. The largest element "bubbles up" to the end each pass. Array: [5, 3, 8, 1]. After pass 1: [3, 5, 1, 8] — the 8 is in its final place!',
          'data': [5, 3, 8, 1],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            1: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{0: 'compare', 1: 'compare → swap!'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Pass 1 Result',
          'content':
              'After comparing (5,3)→swap, (5,8)→ok, (8,1)→swap: [3, 5, 1, 8]. The 8 is now locked at the end. Each pass locks one more element at its final position. N passes needed → O(N²) comparisons total.',
          'data': [3, 5, 1, 8],
          'highlights': <int, int>{3: AppTheme.matrixGreen.value},
          'pointers': <int, String>{0: 'compare next', 3: 'locked ✓'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'After the first full pass of Bubble Sort on [5, 3, 8, 1], which element is guaranteed to be in its correct final position?',
          'options': [
            'Smallest element (1)',
            'Largest element (8)',
            'Middle element',
            'First element (5)',
          ],
          'answer': 1,
        },
      ];
    }

    if (t.contains('selection sort')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Selection Sort — Find & Place Max',
          'content':
              'Selection Sort finds the maximum in the unsorted section and swaps it to the end. Array: [29, 10, 14, 37, 13]. Scan [0..4] → max=37 at index 3. Swap with index 4.',
          'data': [29, 10, 14, 37, 13],
          'highlights': <int, int>{
            3: AppTheme.errorRed.value,
            4: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{3: 'max=37', 4: 'swap target'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'After Pass 1',
          'content':
              'After swap: [29, 10, 14, 13, 37]. Now 37 is locked at index 4. Next: scan [0..3], find max=29, swap to index 3. Repeat. Unlike Bubble Sort, Selection Sort does at most N swaps — useful when swaps are expensive.',
          'data': [29, 10, 14, 13, 37],
          'highlights': <int, int>{4: AppTheme.matrixGreen.value},
          'pointers': <int, String>{4: 'locked ✓', 0: 'scan next'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What is the maximum number of swaps that Selection Sort performs on an array of N elements?',
          'options': ['O(N²)', 'O(N log N)', 'O(N)', 'O(1)'],
          'answer': 2,
        },
      ];
    }

    if (t.contains('cyclic sort') || t.contains('cycle sort')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Cyclic Sort — The Key Insight',
          'content':
              'If you have numbers 1..N, each number\'s correct index is: index = value - 1. Number 1 goes to index 0, number 3 goes to index 2. This lets us sort in O(N) with just one pass by placing each element at its correct spot!',
          'data': [3, 1, 5, 4, 2],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            2: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{0: 'arr[0]=3 → belongs at [2]', 2: 'swap!'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'After Cyclic Placement',
          'content':
              'After placing each element: [1, 2, 3, 4, 5]. We only swap when arr[i] != arr[arr[i]-1]. Total swaps ≤ N, so O(N)! Used for: find missing number, find duplicate — anywhere numbers are 1..N.',
          'data': [1, 2, 3, 4, 5],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            1: AppTheme.matrixGreen.value,
            2: AppTheme.matrixGreen.value,
            3: AppTheme.matrixGreen.value,
            4: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{0: '✓', 1: '✓', 2: '✓', 3: '✓', 4: '✓'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What must be true about the array for Cyclic Sort to work in O(N)?',
          'options': [
            'Array must be already sorted',
            'Array must contain numbers 1 to N (or 0 to N-1)',
            'Array must have no duplicates',
            'Array must be a power of 2 in size',
          ],
          'answer': 1,
        },
      ];
    }

    // ── OOP (Zone 12) ──
    if (t.contains('oop') || t.contains('constructor') || t.contains('class')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'OOP: Class vs Object',
          'content':
              'A class is a blueprint. An object is an instance made from it. Like "Car" is the blueprint — your specific "Tesla Model 3" is the object. A constructor initializes the object\'s fields when you call `new`.',
          'data': [1, 2, 3],
          'highlights': <int, int>{0: AppTheme.matrixGreen.value},
          'pointers': <int, String>{0: 'class', 1: 'object', 2: 'instance'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'The "this" Keyword',
          'content':
              'Inside a constructor, `this.name = name` disambiguates between the parameter `name` and the field `name`. Without `this`, Java would assign the parameter to itself — a no-op bug.',
          'data': [10, 20, 30],
          'highlights': <int, int>{1: AppTheme.accentYellow.value},
          'pointers': <int, String>{0: 'field', 1: 'this.field', 2: 'param'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What is the purpose of the `this` keyword in a Java constructor?',
          'options': [
            'Refers to the superclass',
            'Refers to the current object instance',
            'Creates a new object',
            'Returns from the constructor',
          ],
          'answer': 1,
        },
      ];
    }

    // ── LINKED LIST: Named problems ──
    if (t.contains('reverse linked') || t.contains('reverse a linked')) {
      return null; // Already has an inline lesson in the base data
    }

    // ── GRAPHS: Named problems ──
    if (t.contains('bfs') ||
        t.contains('breadth-first') ||
        t.contains('breadth first')) {
      return null; // Already has inline lesson
    }

    // ── BINARY SEARCH: Named problems ──
    if (t.contains('binary search') || t.contains('order agnostic')) {
      return null; // Already has inline lesson
    }

    // ── ZONE 1: Foundations ──
    if (t.contains('hello world') ||
        t.contains('variables') && t.contains('hello')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Your First Program: Hello World',
          'content':
              'Every program starts here! In Java: System.out.println("Hello, World!") sends output to the console. A variable is a named container: int age = 25 stores the number 25 with the label "age". Variables have a TYPE (int, String, boolean) that determines what they can hold.',
          'data': [25, 1, 0, 3],
          'highlights': <int, int>{0: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: 'int age=25',
            1: 'bool=true',
            2: 'bool=false',
            3: 'char=3',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Primitive Data Types',
          'content':
              'Java has 8 primitives: byte(8-bit), short(16-bit), int(32-bit), long(64-bit), float, double, char, boolean. The most common is int (whole numbers) and double (decimals). String is NOT a primitive — it is an Object.',
          'data': [255, 32767, 2147483647, 1],
          'highlights': <int, int>{2: AppTheme.accentYellow.value},
          'pointers': <int, String>{
            0: 'byte max',
            1: 'short max',
            2: 'int max',
            3: 'boolean',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'Which Java keyword is used to print output to the console?',
          'options': [
            'print()',
            'console.log()',
            'System.out.println()',
            'echo()',
          ],
          'answer': 2,
        },
      ];
    }

    if (t.contains('even or odd') || t.contains('even') && t.contains('odd')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'The Modulo Operator (%)',
          'content':
              'Modulo (%) gives the REMAINDER of division. 7 % 2 = 1 (not even). 8 % 2 = 0 (even). Rule: if n % 2 == 0 → even, else → odd. Modulo is used everywhere: days-of-week cycling, wrapping array indices, checking divisibility.',
          'data': [2, 3, 4, 5, 6, 7],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            2: AppTheme.matrixGreen.value,
            4: AppTheme.matrixGreen.value,
            1: AppTheme.errorRed.value,
            3: AppTheme.errorRed.value,
            5: AppTheme.errorRed.value,
          },
          'pointers': <int, String>{0: 'even', 1: 'odd', 2: 'even', 3: 'odd'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'If-Else Branching',
          'content':
              'An if-else selects one of two code paths. Only ONE branch runs. if(n%2==0) { // even path } else { // odd path }. The condition evaluates to true or false — boolean. Short-circuit: Java stops evaluating conditions as soon as the result is known.',
          'data': [8, 3, 10, 7],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            2: AppTheme.matrixGreen.value,
            1: AppTheme.accentYellow.value,
            3: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{
            0: '8%2=0→even',
            1: '3%2=1→odd',
            2: '10%2=0→even',
            3: '7%2=1→odd',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question': 'What does the expression 15 % 4 evaluate to?',
          'options': ['3', '0', '1', '4'],
          'answer': 0,
        },
      ];
    }

    if (t.contains('greeting') || t.contains('greet')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'String Concatenation',
          'content':
              'Strings are joined with +. "Hello " + "World" = "Hello World". Java also allows: "Score: " + 42 = "Score: 42" (int auto-converts to String). Be careful: "1" + 2 = "12" (String wins!) but 1 + 2 + "!" = "3!" (left-to-right).',
          'data': [72, 101, 108, 108, 111],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            4: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{0: "H='Hello '", 4: "end+name"},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Method Parameters',
          'content':
              'String greet(String name) takes a name and returns "Hello " + name. A parameter is a placeholder — actual value is passed when calling greet("Alice"). The method works for ANY name — that\'s the power of parameterization!',
          'data': [65, 108, 105, 99, 101],
          'highlights': <int, int>{0: AppTheme.matrixGreen.value},
          'pointers': <int, String>{0: "A", 1: "l", 2: "i", 3: "c", 4: "e"},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question': 'What does "Hello " + "World" evaluate to in Java?',
          'options': [
            '"HelloWorld"',
            '"Hello World"',
            'Error',
            '"Hello " + "World"',
          ],
          'answer': 1,
        },
      ];
    }

    if (t.contains('simple interest')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Simple Interest Formula',
          'content':
              'SI = (P × T × R) / 100. P=Principal (money), T=Time (years), R=Rate (% per year). Example: P=1000, T=2, R=5 → SI = (1000×2×5)/100 = 100. Your money grows by 100 in 2 years. This is why operators and order of operations matter!',
          'data': [1000, 2, 5, 100],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            1: AppTheme.accentYellow.value,
            2: AppTheme.accentYellow.value,
            3: AppTheme.errorRed.value,
          },
          'pointers': <int, String>{
            0: 'P=1000',
            1: 'T=2',
            2: 'R=5%',
            3: 'SI=100',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Integer vs Double',
          'content':
              'In Java, 5 / 2 = 2 (integer division!). 5.0 / 2 = 2.5 (double division). For SI, use double to avoid truncation. Always cast when mixing types: (double)p * t * r / 100. This is a classic beginner bug!',
          'data': [5, 2, 2, 25],
          'highlights': <int, int>{
            2: AppTheme.errorRed.value,
            3: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{
            0: '5',
            1: '÷2',
            2: 'int=2 ⚠',
            3: 'double=2.5 ✓',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question': 'In Java, what is the result of 7 / 2 if both are int?',
          'options': ['3.5', '3', '4', 'Error'],
          'answer': 1,
        },
      ];
    }

    // ── ZONE 2: Flow of Program ──
    if (t.contains('largest of three') ||
        t.contains('largest') && t.contains('three')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Comparing Three Numbers',
          'content':
              'To find the max of three: start with max=a. Then compare b — if b>max, update max=b. Then compare c — if c>max, update max=c. This is the "running max" pattern. Works for any number of values, not just three!',
          'data': [15, 42, 7],
          'highlights': <int, int>{1: AppTheme.matrixGreen.value},
          'pointers': <int, String>{0: 'a=15', 1: 'b=42→MAX!', 2: 'c=7'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Nested If vs Math.max()',
          'content':
              'Java has Math.max(a, b) for two values. For three: Math.max(a, Math.max(b, c)). This composes well! The nested max evaluates from inside out: Math.max(b,c) first, then Math.max(a, that result).',
          'data': [15, 42, 7],
          'highlights': <int, int>{1: AppTheme.accentYellow.value},
          'pointers': <int, String>{0: 'a', 1: 'max(b,c)=42', 2: 'c'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'Using the "running max" pattern, how many comparisons are needed to find the max of 3 numbers?',
          'options': ['1', '2', '3', '6'],
          'answer': 1,
        },
      ];
    }

    if (t.contains('fibonacci series') ||
        t.contains('fibonacci') && t.contains('series')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Fibonacci: The Pattern',
          'content':
              'Fibonacci: 0, 1, 1, 2, 3, 5, 8, 13, 21... Each number is the SUM of the two before it. Starting values: F(0)=0, F(1)=1. F(N) = F(N-1) + F(N-2). Appears in nature: sunflower spirals, shell growth, golden ratio!',
          'data': [0, 1, 1, 2, 3, 5, 8, 13],
          'highlights': <int, int>{
            5: AppTheme.matrixGreen.value,
            6: AppTheme.matrixGreen.value,
            7: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{5: 'F(5)=5', 6: '+F(6)=8', 7: '=F(7)=13'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Iterative Fibonacci',
          'content':
              'Track two variables: a=0, b=1. Each step: temp=a+b, a=b, b=temp. This generates the sequence iteratively in O(N) time, O(1) space — no recursion needed. Print a at each step.',
          'data': [0, 1, 1, 2, 3, 5],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            1: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{0: 'a (print)', 1: 'b (next)', 2: 'a+b'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What is the 7th term of the Fibonacci sequence (starting from F(0)=0)?',
          'options': ['8', '13', '21', '5'],
          'answer': 1,
        },
      ];
    }

    // ── ZONE 3: Java Syntax ──
    if (t.contains('sum of n') || t.contains('sum of numbers')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'For Loop: Summing 1 to N',
          'content':
              'A for-loop has 3 parts: init (int i=1), condition (i<=n), update (i++). To sum 1..5: i=1→sum=1, i=2→sum=3, i=3→sum=6, i=4→sum=10, i=5→sum=15. The formula n*(n+1)/2 gives the answer directly — no loop needed!',
          'data': [1, 3, 6, 10, 15],
          'highlights': <int, int>{4: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: 'i=1',
            1: '+2=3',
            2: '+3=6',
            3: '+4=10',
            4: '+5=15 ✓',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Loop Anatomy',
          'content':
              'for(int i=1; i<=N; i++): (1) Init: runs ONCE before loop. (2) Condition: checked BEFORE each iteration — if false, loop ends. (3) Update: runs AFTER each body execution. Common mistake: using < instead of <= misses the Nth number!',
          'data': [1, 2, 3, 4, 5],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            4: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{0: 'i=1 start', 4: 'i=5=N (included!)'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'Using the formula n*(n+1)/2, what is the sum of numbers 1 to 10?',
          'options': ['45', '55', '50', '60'],
          'answer': 1,
        },
      ];
    }

    if (t.contains('reverse a number') ||
        t.contains('reverse') && t.contains('number')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Extracting Digits with Modulo',
          'content':
              'To reverse 1234: get last digit with % 10 → rem=4. Add to result: ans = ans*10 + rem = 4. Remove last digit: num /= 10 → num=123. Repeat: rem=3 → ans=43, num=12 → rem=2 → ans=432, num=1 → rem=1 → ans=4321.',
          'data': [1234, 123, 12, 1, 0],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            4: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{0: 'original', 4: 'all digits extracted'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Building the Reversed Number',
          'content':
              'The key formula: ans = ans * 10 + rem. This shifts existing digits left (×10) and appends the new digit. Result: [4, 43, 432, 4321]. This works because our decimal system is positional — each position is 10× the next.',
          'data': [4, 43, 432, 4321],
          'highlights': <int, int>{3: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: 'rem=4',
            1: 'ans=43',
            2: 'ans=432',
            3: 'ans=4321 ✓',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question': 'What does (12345 % 10) evaluate to?',
          'options': ['1', '5', '12345', '1234'],
          'answer': 1,
        },
      ];
    }

    // ── ZONE 4: Methods ──
    if (t.contains('method design') ||
        t.contains('max method') ||
        (t.contains('method') && t.contains('design'))) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Anatomy of a Method',
          'content':
              'A Java method has: ACCESS_MODIFIER RETURN_TYPE name(PARAMS). Example: public int max(int a, int b). "public" = visible everywhere. "int" = returns a whole number. Parameters a,b are the INPUTS. The method body computes and returns the output.',
          'data': [3, 7, 5, 1],
          'highlights': <int, int>{1: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: 'a=3',
            1: 'b=7 → return 7',
            2: 'a=5',
            3: 'b=1',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Return Statement',
          'content':
              'return immediately exits the method and sends a value back. if(a>b) return a; — if a>b is true, the method ends here and returns a. The else clause can just be return b; Java guarantees one path always returns.',
          'data': [10, 3],
          'highlights': <int, int>{0: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: 'a=10 > b=3 → return a',
            1: 'b (not returned)',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question': 'What does the return type "void" mean in a Java method?',
          'options': [
            'Returns 0',
            'Returns null',
            'The method does not return a value',
            'Returns an empty string',
          ],
          'answer': 2,
        },
      ];
    }

    if (t.contains('prime check') ||
        t.contains('prime') && t.contains('method')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'What Makes a Number Prime?',
          'content':
              'A prime number has exactly 2 factors: 1 and itself. 2,3,5,7,11,13... To check: try dividing by every number from 2 to N-1. If ANY divides evenly (n%i == 0), it\'s NOT prime. But we can stop at √N — if no factor by then, there won\'t be one!',
          'data': [2, 3, 5, 7, 11, 13],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            1: AppTheme.matrixGreen.value,
            2: AppTheme.matrixGreen.value,
            3: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{
            0: 'prime',
            1: 'prime',
            2: 'prime',
            3: 'prime',
            4: 'prime',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'The √N Optimization',
          'content':
              'Factors come in pairs: if i divides N, so does N/i. The smaller of the pair is ≤ √N. So checking up to √N is sufficient! For N=100, instead of checking 99 numbers, we only check up to 10. This turns O(N) into O(√N)!',
          'data': [1, 2, 4, 5, 10, 20, 25, 50, 100],
          'highlights': <int, int>{3: AppTheme.accentYellow.value},
          'pointers': <int, String>{
            0: 'factor',
            3: '√100=10 stop here!',
            8: 'N=100',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'Why do we only check divisors up to √N when testing for primality?',
          'options': [
            'To save time, though it\'s not always correct',
            'Because factors always come in pairs — the smaller factor is always ≤ √N',
            'Because all primes are less than √N',
            'Because the modulo operation fails above √N',
          ],
          'answer': 1,
        },
      ];
    }

    // ── ZONE 9: Math ──
    if (t.contains('check prime') ||
        t.contains('prime (math)') ||
        (t.contains('prime') && t.contains('math'))) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Sieve of Eratosthenes',
          'content':
              'To find ALL primes up to N: start with all numbers marked as prime. Cross out multiples of 2 (except 2). Cross out multiples of 3 (except 3). Continue for each unmarked number. What remains are all primes! O(N log log N).',
          'data': [2, 3, 5, 7, 11, 13, 17, 19],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            1: AppTheme.matrixGreen.value,
            2: AppTheme.matrixGreen.value,
            3: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{
            0: 'prime',
            2: 'prime',
            4: 'prime',
            6: 'prime',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'GCD: Euclidean Algorithm',
          'content':
              'GCD(48, 18): 48 = 18×2 + 12 → GCD(18,12). 18 = 12×1 + 6 → GCD(12,6). 12 = 6×2 + 0 → GCD = 6. Rule: GCD(a,b) = GCD(b, a%b). When remainder = 0, b is the GCD. This is O(log(min(a,b))) — very fast!',
          'data': [48, 18, 12, 6],
          'highlights': <int, int>{3: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: 'a=48',
            1: 'b=18',
            2: 'rem=12',
            3: 'GCD=6 ✓',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question': 'What is GCD(36, 24) using the Euclidean algorithm?',
          'options': ['4', '6', '12', '24'],
          'answer': 2,
        },
      ];
    }

    // ── ZONE 10: Recursion ──
    if (t.contains('fibonacci') && t.contains('recursion') ||
        (t.contains('fibonacci') && t.contains('recursive'))) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'The Recursion Recipe',
          'content':
              'Every recursive function needs: (1) BASE CASE — when to stop, e.g., if(n<=1) return n. (2) RECURSIVE CASE — reduce problem size, e.g., return fib(n-1) + fib(n-2). Without a base case, you get infinite recursion → StackOverflow!',
          'data': [0, 1, 1, 2, 3, 5],
          'highlights': <int, int>{
            0: AppTheme.errorRed.value,
            1: AppTheme.errorRed.value,
            5: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{
            0: 'BASE: fib(0)=0',
            1: 'BASE: fib(1)=1',
            5: 'fib(5)=5',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'The Problem: Exponential Calls',
          'content':
              'fib(5) calls fib(4)+fib(3). fib(4) calls fib(3)+fib(2)... fib(3) is computed TWICE! With naive recursion, fib(N) makes O(2^N) calls. fib(40) = 2^40 ≈ 1 trillion calls! This is WHY memoization (DP) exists.',
          'data': [1, 1, 2, 3, 5, 8, 13, 21],
          'highlights': <int, int>{
            2: AppTheme.accentYellow.value,
            3: AppTheme.accentYellow.value,
            4: AppTheme.errorRed.value,
          },
          'pointers': <int, String>{
            2: 'recomputed!',
            3: 'recomputed!',
            4: 'fib(5)',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question': 'What happens if a recursive function has NO base case?',
          'options': [
            'It returns 0',
            'It runs once and stops',
            'It causes a StackOverflowError',
            'It compiles but returns null',
          ],
          'answer': 2,
        },
      ];
    }

    // ── ZONE 11: Backtracking ──
    if (t.contains('n-queens') ||
        t.contains('n queens') ||
        t.contains('queen')) {
      return [
        {
          'type': 'text',
          'visualizer': 'grid',
          'title': 'Backtracking: Try, Check, Undo',
          'content':
              'Backtracking explores ALL possible solutions by trying each option, recursing to check it, and UNDOING if it fails. For N-Queens: try placing a queen in row 0, col 0. Recurse to row 1. If stuck, undo (backtrack) and try col 1, col 2...',
          'data': [
            ['Q', '.', '.'],
            ['.', '.', 'Q'],
            ['.', 'Q', '.'],
          ],
          'highlights': <String, int>{
            '0,0': AppTheme.matrixGreen.value,
            '1,2': AppTheme.matrixGreen.value,
            '2,1': AppTheme.matrixGreen.value,
          },
          'pointers': <String, String>{'0,0': 'Q1', '1,2': 'Q2', '2,1': 'Q3'},
        },
        {
          'type': 'text',
          'visualizer': 'grid',
          'title': 'Attack Zones',
          'content':
              'A queen attacks its entire row, column, and both diagonals. The algorithm checks: is this cell safe? (no queen in same row, col, or diagonal). If safe → place queen and recurse. If not safe → try next position.',
          'data': [
            ['Q', 'X', 'X'],
            ['X', 'X', '.'],
            ['X', '.', 'X'],
          ],
          'highlights': <String, int>{
            '0,0': AppTheme.matrixGreen.value,
            '0,1': AppTheme.errorRed.value,
            '0,2': AppTheme.errorRed.value,
            '1,0': AppTheme.errorRed.value,
            '2,0': AppTheme.errorRed.value,
          },
          'pointers': <String, String>{'0,0': 'Queen', '1,1': 'diagonal!'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What is the key operation in backtracking that distinguishes it from brute force?',
          'options': [
            'Using a priority queue',
            'UNDOING (unmarking) a choice when it leads to failure',
            'Sorting before searching',
            'Memoizing subproblem results',
          ],
          'answer': 1,
        },
      ];
    }

    // ── ZONE 14: Stacks & Queues ──
    if (t.contains('valid parentheses') ||
        t.contains('parentheses') ||
        t.contains('bracket')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Stack: LIFO Principle',
          'content':
              'A Stack is Last-In-First-Out. Like a stack of plates: you add (push) to the top and remove (pop) from the top. For "( [ { } ] )": push ( → push [ → push { → see } → pop { match! → see ] → pop [ match! → see ) → pop ( match!',
          'data': [40, 91, 123],
          'highlights': <int, int>{2: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: '( push',
            1: '[ push',
            2: '{ push → top',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Stack Unwinding',
          'content':
              'When we see a closing bracket, we pop from stack and check if it matches. "( )" → push (, see ) → pop (, matches! Stack empty at end → VALID. "( ]" → push (, see ] → pop ( which ≠ ] → INVALID. Stack empty after mismatch → also invalid.',
          'data': [40, 0],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            1: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{
            0: '( pushed',
            1: ') matches! pop → empty=VALID',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'Is the string "{ [ ( ) ] }" a valid parentheses sequence?',
          'options': [
            'No — order is wrong',
            'Yes — all brackets match and are properly nested',
            'No — too many brackets',
            'Yes — but only if using a queue',
          ],
          'answer': 1,
        },
      ];
    }

    // ── ZONE 15: Trees ──
    if (t.contains('inorder') ||
        t.contains('traversal') ||
        (t.contains('tree') && t.contains('traversal'))) {
      return [
        {
          'type': 'text',
          'visualizer': 'node',
          'title': 'Tree Traversal Orders',
          'content':
              'Trees can be visited in 3 key orders: (1) In-order: Left → Root → Right — gives SORTED output for BST. (2) Pre-order: Root → Left → Right — used to copy a tree. (3) Post-order: Left → Right → Root — used to delete a tree.',
          'data': [4, 2, 6, 1, 3, 5, 7],
          'highlights': <int, int>{0: AppTheme.matrixGreen.value},
          'pointers': <int, String>{0: 'root=4', 1: 'left=2', 2: 'right=6'},
        },
        {
          'type': 'text',
          'visualizer': 'node',
          'title': 'In-Order = Sorted Output',
          'content':
              'For BST with root=4, left=2, right=6: In-order visits 1, 2, 3, 4, 5, 6, 7 — perfectly sorted! This is HOW we sort using a BST. The recursive call: inorder(root.left) → print(root.val) → inorder(root.right). Base case: if root==null, return.',
          'data': [4, 2, 6, 1, 3, 5, 7],
          'highlights': <int, int>{
            3: AppTheme.accentYellow.value,
            1: AppTheme.accentYellow.value,
            0: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{
            3: '1st: 1',
            1: '2nd: 2',
            0: '4th: 4 (root)',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'For a BST, which traversal order produces a SORTED sequence of values?',
          'options': [
            'Pre-order',
            'Post-order',
            'In-order (Left→Root→Right)',
            'Level-order (BFS)',
          ],
          'answer': 2,
        },
      ];
    }

    // ── ZONE 16: Hashmaps ──
    if (t.contains('two sum') ||
        t.contains('hashmap') ||
        t.contains('two sum hashmap')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'HashMap: O(1) Lookup Magic',
          'content':
              'A HashMap stores key-value pairs. map.put(key, value) adds a pair. map.get(key) retrieves in O(1)! For Two Sum with target=9 and nums=[2,7,11,15]: we need complement = 9-2=7. Is 7 in our map? Not yet. Store 2. Next: complement=9-7=2. Is 2 in map? YES! → return indices.',
          'data': [2, 7, 11, 15],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            1: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{0: 'nums[0]=2', 1: 'complement=7 FOUND!'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Why Not Use Brute Force?',
          'content':
              'Brute force: check every pair (i,j) → O(N²). With HashMap: ONE pass — store each number, check if complement exists. O(N) time, O(N) space. Trading SPACE for TIME is a core algorithmic concept. HashMap turns search from O(N) to O(1).',
          'data': [2, 7, 11, 15],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            1: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{
            0: 'store index 0',
            1: 'comp found! ans=[0,1]',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What is the average time complexity for a HashMap lookup (get/containsKey)?',
          'options': ['O(N)', 'O(log N)', 'O(1)', 'O(N²)'],
          'answer': 2,
        },
      ];
    }

    // ── ZONE 17: Dynamic Programming ──
    if (t.contains('climbing stairs') ||
        t.contains('climbstairs') ||
        t.contains('stair')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Climbing Stairs: Spot the Pattern',
          'content':
              'n=1: 1 way {1}. n=2: 2 ways {1+1, 2}. n=3: 3 ways {1+1+1, 1+2, 2+1}. n=4: 5 ways. n=5: 8 ways. It\'s Fibonacci! dp[i] = dp[i-1] + dp[i-2]. To reach stair i: come from i-1 (1 step) or i-2 (2 steps).',
          'data': [1, 2, 3, 5, 8, 13],
          'highlights': <int, int>{
            3: AppTheme.matrixGreen.value,
            4: AppTheme.matrixGreen.value,
            5: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{
            3: 'dp[4]=5',
            4: 'dp[5]=8',
            5: 'dp[5]+dp[4]',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'DP Table Filling',
          'content':
              'Build the dp[] array bottom-up: dp[1]=1, dp[2]=2. For each i from 3 to n: dp[i]=dp[i-1]+dp[i-2]. This avoids re-computing! Each cell is computed ONCE → O(N) time, O(N) space (or O(1) with two variables).',
          'data': [0, 1, 2, 3, 5, 8],
          'highlights': <int, int>{
            1: AppTheme.accentYellow.value,
            2: AppTheme.accentYellow.value,
            5: AppTheme.matrixGreen.value,
          },
          'pointers': <int, String>{1: 'dp[1]=1', 2: 'dp[2]=2', 5: 'dp[6]=8'},
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'How many distinct ways can you climb 4 stairs taking 1 or 2 steps at a time?',
          'options': ['3', '4', '5', '8'],
          'answer': 2,
        },
      ];
    }

    // ── ZONE 18: Heaps ──
    if (t.contains('kth largest') ||
        t.contains('k largest') ||
        t.contains('heap')) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Min-Heap for Kth Largest',
          'content':
              'A Min-Heap always keeps its SMALLEST element at the top. To find K=3 largest in [3,2,1,5,6,4]: maintain a min-heap of size K. Push 3,2,1 → heap=[1,2,3]. See 5: push → heap=[1,2,3,5]. Size > K → pop min (1) → heap=[2,3,5]. At end, heap.top() = 3rd largest = 4.',
          'data': [3, 2, 1, 5, 6, 4],
          'highlights': <int, int>{
            4: AppTheme.matrixGreen.value,
            3: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{
            0: 'K=3',
            4: '1st largest=6',
            3: '2nd largest=5',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Heap Property',
          'content':
              'Min-Heap invariant: parent ≤ both children. The minimum is ALWAYS at root → O(1) access. Insert: add at end, bubble up O(log N). Remove min: swap root with last, remove last, bubble down O(log N). PriorityQueue in Java is a min-heap by default.',
          'data': [1, 3, 6, 5, 9, 8],
          'highlights': <int, int>{0: AppTheme.matrixGreen.value},
          'pointers': <int, String>{
            0: 'min=1 at root',
            1: 'child=3≥1',
            2: 'child=6≥1',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question':
              'What is the time complexity of finding the Kth largest element using a min-heap of size K?',
          'options': ['O(N)', 'O(N log K)', 'O(K log N)', 'O(N²)'],
          'answer': 1,
        },
      ];
    }

    // ── ZONE 20: Advanced (Bit Manipulation) ──
    if (t.contains('single number') ||
        t.contains('xor') ||
        (t.contains('single') && t.contains('number'))) {
      return [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'XOR: The Cancellation Trick',
          'content':
              'XOR (^) has a magical property: a ^ a = 0 (same number cancels!) and a ^ 0 = a. So in [4, 1, 2, 1, 2]: XOR all: 4^1^2^1^2 = 4^(1^1)^(2^2) = 4^0^0 = 4. The duplicates cancel out, leaving the solo number. O(N) time, O(1) space!',
          'data': [4, 1, 2, 1, 2],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            1: AppTheme.errorRed.value,
            2: AppTheme.errorRed.value,
            3: AppTheme.errorRed.value,
            4: AppTheme.errorRed.value,
          },
          'pointers': <int, String>{
            0: 'SINGLE=4',
            1: 'pair cancels',
            3: 'pair cancels',
          },
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Bit Manipulation Toolkit',
          'content':
              'Key bit tricks: (n & 1) = last bit (even/odd check). (n >> 1) = divide by 2. (n << 1) = multiply by 2. (n & (n-1)) = clears lowest set bit (check if power of 2: n & n-1 == 0). These replace slow division/multiplication with O(1) operations!',
          'data': [1, 2, 4, 8, 16],
          'highlights': <int, int>{
            0: AppTheme.accentYellow.value,
            1: AppTheme.accentYellow.value,
            2: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{
            0: '2^0',
            1: '2^1',
            2: '2^2',
            3: '2^3',
            4: '2^4',
          },
        },
        {
          'type': 'quiz',
          'title': 'Knowledge Check',
          'question': 'What does a ^ a evaluate to for any integer a?',
          'options': ['a', '1', '0', '-a'],
          'answer': 2,
        },
      ];
    }

    return null; // No title match — fall through to generateLesson(z, pIndex)
  }

  List<Map<String, dynamic>> generateLesson(int z, dynamic pIndex) {
    switch (z) {
      case 1: // Foundations — Variables & Data Types
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Variables Are Boxes - Problem $pIndex',
            'content':
                'Think of a variable as a labeled box. An int holds a whole number, a double holds decimals, a boolean holds true/false. In memory, each sits at a unique address.',
            'data': [42, 3, 1, 0],
            'highlights': <int, int>{0: AppTheme.matrixGreen.value},
            'pointers': <int, String>{
              0: 'int x=42',
              1: 'bool',
              2: 'byte',
              3: 'null',
            },
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Primitive vs Reference Types',
            'content':
                'Primitives (int, char, boolean) live directly on the stack. Objects like String or arrays live on the heap — your variable only holds a reference (pointer) to them.',
            'data': [7, 99, 18, 3],
            'highlights': <int, int>{
              1: AppTheme.accentYellow.value,
              2: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{
              0: 'stack',
              1: 'heap ref',
              2: 'heap ref',
              3: 'stack',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question': 'Which of these is a primitive data type in Java?',
            'options': ['String', 'Integer', 'int', 'ArrayList'],
            'answer': 2,
          },
        ];

      case 2: // Flow of Program — Loops & Conditionals
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Loop Iteration - Problem $pIndex',
            'content':
                'A for-loop iterates index 0 to N-1. The classic "sum of array" pattern accumulates results as the pointer moves right — a fundamental building block of nearly every DSA problem.',
            'data': [3, 1, 4, 1, 5, 9, 2, 6],
            'highlights': <int, int>{0: AppTheme.matrixGreen.value},
            'pointers': <int, String>{0: 'i=0 → sum=3'},
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Conditional Branching',
            'content':
                'If-else splits execution. In binary decisions (even/odd, positive/negative), the condition guards which branch runs. Short-circuit evaluation means the second condition may not even execute.',
            'data': [8, 3, 7, 2, 5, 1],
            'highlights': <int, int>{
              1: AppTheme.accentYellow.value,
              3: AppTheme.accentYellow.value,
              5: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{1: 'odd', 3: 'odd', 5: 'odd'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'How many times does a for-loop "for(int i=0; i<5; i++)" execute its body?',
            'options': ['4', '5', '6', 'Infinite'],
            'answer': 1,
          },
        ];

      case 3: // Java Syntax — Strings & Arrays
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'String as Char Array - Problem $pIndex',
            'content':
                'In Java, a String is an immutable sequence of characters. "hello".charAt(0) == h. Strings are compared with .equals(), not == (which compares references). To reverse, convert to char[] first.',
            'data': [104, 101, 108, 108, 111], // ASCII for 'h','e','l','l','o'
            'highlights': <int, int>{0: AppTheme.matrixGreen.value},
            'pointers': <int, String>{
              0: "'h'",
              1: "'e'",
              2: "'l'",
              3: "'l'",
              4: "'o'",
            },
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Array Declaration & Access',
            'content':
                'int[] arr = new int[5] creates a zero-initialized array of size 5. Access is O(1) by index. ArrayIndexOutOfBoundsException is the #1 beginner bug — always check arr.length.',
            'data': [0, 0, 0, 0, 0],
            'highlights': <int, int>{2: AppTheme.errorRed.value},
            'pointers': <int, String>{
              0: '[0]',
              2: 'access here',
              4: '[4] last',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'What is the correct way to compare two Strings for equality in Java?',
            'options': [
              'str1 == str2',
              'str1.equals(str2)',
              'str1.compareTo(str2) == 0',
              'Both B and C',
            ],
            'answer': 3,
          },
        ];

      case 4: // Methods — Functions & Call Stack
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Method Parameters & Return - Problem $pIndex',
            'content':
                'A method takes inputs (parameters) and produces an output (return value). Java passes primitives by VALUE — changes inside the method do not affect the caller. Objects are passed by reference value.',
            'data': [5, 10, 15],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              2: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{0: 'param a', 1: 'local', 2: 'return'},
          },
          {
            'type': 'text',
            'visualizer': 'node',
            'title': 'The Call Stack',
            'content':
                'Every method call pushes a "frame" onto the call stack. When it returns, the frame is popped. Stack Overflow occurs when recursion goes too deep — always have a base case!',
            'data': [1, null, 2, null, 3],
            'highlights': <int, int>{4: AppTheme.accentYellow.value},
            'pointers': <int, String>{4: 'current frame'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'What happens to a primitive int passed into a Java method when modified inside?',
            'options': [
              'The original changes',
              'Nothing — primitives are passed by value',
              'A NullPointerException is thrown',
              'It depends on the JVM',
            ],
            'answer': 1,
          },
        ];

      case 5: // Arrays — Fundamentals First
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Arrays: Memory Layout - Problem $pIndex',
            'content':
                'An array is a fixed-size, contiguous block of memory. In Java: int[] arr = new int[6] creates 6 slots numbered 0..5. Each slot holds one value. arr[0] is the first element, arr[5] is the last. Accessing any element is O(1) — instant!',
            'data': [10, 20, 30, 40, 50, 60],
            'highlights': <int, int>{0: AppTheme.matrixGreen.value},
            'pointers': <int, String>{
              0: '[0]=10',
              1: '[1]=20',
              2: '[2]=30',
              3: '[3]=40',
              4: '[4]=50',
              5: '[5]=60',
            },
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Iterating an Array',
            'content':
                'Use a for-loop to visit every element. int sum=0; for(int i=0; i<arr.length; i++) sum += arr[i]. This runs O(N) — touching each element once. This "linear scan" pattern is the foundation for max, min, sum, count, and search algorithms.',
            'data': [10, 20, 30, 40, 50, 60],
            'highlights': <int, int>{
              0: AppTheme.accentYellow.value,
              1: AppTheme.accentYellow.value,
              2: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{0: 'i=0', 1: 'i=1', 2: 'i=2 →...'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'In Java, what is the valid index range for an array declared as int[] arr = new int[6]?',
            'options': ['1 to 6', '0 to 6', '0 to 5', '1 to 5'],
            'answer': 2,
          },
        ];

      case 6: // Binary Search
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Binary Search - Problem $pIndex',
            'content':
                'Classic target=6 on sorted array. lo=0, hi=6, mid=3 → arr[3]=8 > 6 → hi=2. Next: mid=1 → arr[1]=2 < 6 → lo=2. Now mid=2 → arr[2]=6 ✓ Found!',
            'data': [1, 2, 6, 8, 10, 14, 19],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              6: AppTheme.matrixGreen.value,
              3: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{0: 'lo', 6: 'hi', 3: 'mid=8 (too big)'},
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Narrowing the Search Space',
            'content':
                'After eliminating right half (hi=2), we now search [0..2]. mid=1 (value 2, too small) → lo=2. Final: lo=hi=2, arr[2]=6 = target. Binary search eliminates half the search space every step!',
            'data': [1, 2, 6, 8, 10, 14, 19],
            'highlights': <int, int>{2: AppTheme.matrixGreen.value},
            'pointers': <int, String>{2: 'found! ✓'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question': 'What is the time complexity of Binary Search?',
            'options': ['O(N)', 'O(N²)', 'O(log N)', 'O(N log N)'],
            'answer': 2,
          },
        ];

      case 7: // Sorting
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Merge Sort in Action - Problem $pIndex',
            'content':
                'Merge Sort: divide [38, 27, 43, 3] → [38,27] and [43,3] → merge back sorted. The "merge" step compares smallest elements from each half. Time: O(N log N). Space: O(N).',
            'data': [38, 27, 43, 3, 9, 82, 10],
            'highlights': <int, int>{
              0: AppTheme.accentYellow.value,
              1: AppTheme.accentYellow.value,
              2: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{0: 'left half', 3: 'pivot split'},
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'QuickSort Partition',
            'content':
                'QuickSort picks a pivot (here: 10), partitions so all elements ≤10 are left, >10 are right. Average O(N log N), worst case O(N²) if pivot is always min/max.',
            'data': [3, 9, 10, 27, 38, 43, 82],
            'highlights': <int, int>{2: AppTheme.matrixGreen.value},
            'pointers': <int, String>{
              2: 'pivot=10',
              0: 'left part',
              6: 'right part',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'Which sorting algorithm has the best guaranteed worst-case time complexity?',
            'options': [
              'QuickSort - O(N log N)',
              'BubbleSort - O(N²)',
              'MergeSort - O(N log N)',
              'SelectionSort - O(N²)',
            ],
            'answer': 2,
          },
        ];

      case 8: // Time Complexity
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Big-O Visualization - Problem $pIndex',
            'content':
                'Big-O measures how runtime scales with input size N. O(1) is constant (array access). O(log N) halves the problem (binary search). O(N) is linear (single loop). O(N²) is quadratic (nested loops).',
            'data': [1, 7, 49, 343, 2401, 16807, 117649],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              6: AppTheme.errorRed.value,
            },
            'pointers': <int, String>{
              0: 'O(1)',
              1: 'O(log N)',
              3: 'O(N)',
              6: 'O(N²)→bad',
            },
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Drop Constants & Lower Terms',
            'content':
                'O(2N) = O(N). We ignore constants and lower order terms. 5N² + 3N + 7 = O(N²). The dominant term wins. This is why a nested loop is always O(N²) regardless of the inner constants.',
            'data': [1, 4, 9, 16, 25, 36, 49],
            'highlights': <int, int>{
              3: AppTheme.accentYellow.value,
              6: AppTheme.errorRed.value,
            },
            'pointers': <int, String>{0: 'N=1', 3: 'N=4 (16x)', 6: 'N=7 (49x)'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'What is the Big-O of two sequential (not nested) O(N) loops?',
            'options': ['O(N²)', 'O(2N) = O(N)', 'O(N log N)', 'O(1)'],
            'answer': 1,
          },
        ];

      case 9: // Math & Number Theory
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Sieve of Eratosthenes - Problem $pIndex',
            'content':
                'To find all primes up to N: start with all numbers marked prime. Cross out multiples of 2, then 3, then 5... Remaining marked numbers are prime. Time: O(N log log N).',
            'data': [2, 3, 5, 7, 11, 13, 17, 19, 23],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              1: AppTheme.matrixGreen.value,
              2: AppTheme.matrixGreen.value,
            },
            'pointers': <int, String>{0: 'prime', 1: 'prime', 2: 'prime'},
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'GCD via Euclidean Algorithm',
            'content':
                'GCD(48, 18): 48 mod 18 = 12 → GCD(18, 12). 18 mod 12 = 6 → GCD(12, 6). 12 mod 6 = 0 → GCD is 6. This runs in O(log min(a,b)) — much faster than checking every divisor.',
            'data': [48, 18, 12, 6],
            'highlights': <int, int>{3: AppTheme.matrixGreen.value},
            'pointers': <int, String>{
              0: 'GCD(48,18)',
              1: '→GCD(18,12)',
              2: '→GCD(12,6)',
              3: '→GCD=6 ✓',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question': 'What does the modulo operator (%) return for 17 % 5?',
            'options': ['3', '2', '4', '5'],
            'answer': 1,
          },
        ];

      case 10: // Recursion
        return [
          {
            'type': 'text',
            'visualizer': 'node',
            'title': 'Fibonacci Call Tree - Problem $pIndex',
            'content':
                'fib(4) calls fib(3) + fib(2). fib(3) calls fib(2) + fib(1). Notice fib(2) is computed TWICE — this is exponential O(2^N) without memoization. Always check for overlapping subproblems!',
            'data': [4, 3, 2, 1, 2, 1, 0],
            'highlights': <int, int>{
              2: AppTheme.errorRed.value,
              4: AppTheme.errorRed.value,
            },
            'pointers': <int, String>{
              0: 'fib(4)',
              1: 'fib(3)',
              2: 'fib(2)×2!',
              3: 'fib(1)',
            },
          },
          {
            'type': 'text',
            'visualizer': 'node',
            'title': 'Base Case is Critical',
            'content':
                'Every recursive function needs a base case to stop. fib(0)=0, fib(1)=1. Without it, you get infinite recursion → StackOverflowError. The call stack depth equals recursion depth.',
            'data': [1, 0, null, null, null],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              1: AppTheme.matrixGreen.value,
            },
            'pointers': <int, String>{0: 'fib(1)=1', 1: 'fib(0)=0 BASE'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'What is the time complexity of naive recursive Fibonacci without memoization?',
            'options': ['O(N)', 'O(N log N)', 'O(2^N)', 'O(N²)'],
            'answer': 2,
          },
        ];

      case 11: // Backtracking
        return [
          {
            'type': 'text',
            'visualizer': 'grid',
            'title': 'Maze Backtracking - Problem $pIndex',
            'content':
                'Backtracking explores all paths. At each cell, try all 4 directions. If blocked or visited, backtrack. Classic problems: N-Queens, Sudoku, Word Search. We mark cells visited, then unmark on backtrack.',
            'data': [
              ['S', '.', '#'],
              ['.', '.', '.'],
              ['#', '.', 'E'],
            ],
            'highlights': <String, int>{
              '0,0': AppTheme.matrixGreen.value,
              '2,2': AppTheme.accentYellow.value,
              '0,2': AppTheme.errorRed.value,
              '2,0': AppTheme.errorRed.value,
            },
            'pointers': <String, String>{
              '0,0': 'Start',
              '2,2': 'End',
              '0,2': 'wall',
              '2,0': 'wall',
            },
          },
          {
            'type': 'text',
            'visualizer': 'grid',
            'title': 'Backtrack: Mark & Unmark',
            'content':
                'The key insight: mark a cell as visited before recursing, and UNmark it when you backtrack. This "undo" step is what separates backtracking from simple DFS — you restore state perfectly.',
            'data': [
              ['S', 'v', '#'],
              ['v', 'v', 'v'],
              ['#', 'v', 'E'],
            ],
            'highlights': <String, int>{
              '0,1': AppTheme.accentYellow.value,
              '1,0': AppTheme.accentYellow.value,
              '1,1': AppTheme.accentYellow.value,
              '1,2': AppTheme.accentYellow.value,
              '2,1': AppTheme.accentYellow.value,
            },
            'pointers': <String, String>{'0,1': 'visited', '2,1': 'visited'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question': 'What distinguishes backtracking from plain recursion?',
            'options': [
              'Backtracking uses loops',
              'Backtracking undoes choices (restores state) when a path fails',
              'Backtracking is always O(N)',
              'Backtracking does not use a call stack',
            ],
            'answer': 1,
          },
        ];

      case 12: // Dynamic Programming
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Coin Change DP Table - Problem $pIndex',
            'content':
                'Coins=[1,3,4], target=6. dp[0]=0. dp[1]=1 (one 1-coin). dp[3]=1 (one 3-coin). dp[4]=1 (one 4-coin). dp[6]=2 (3+3). We build up the answer from smaller subproblems.',
            'data': [0, 1, 2, 1, 1, 2, 2],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              3: AppTheme.accentYellow.value,
              4: AppTheme.accentYellow.value,
              6: AppTheme.matrixGreen.value,
            },
            'pointers': <int, String>{
              0: 'dp[0]=0',
              3: 'dp[3]=1',
              6: 'dp[6]=2 ✓',
            },
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Bottom-Up vs Top-Down',
            'content':
                'Top-down (memoization): cache recursive results. Bottom-up (tabulation): fill dp[] iteratively. Both avoid recomputation. DP rule: if the problem has overlapping subproblems AND optimal substructure → use DP.',
            'data': [0, 1, 1, 2, 3, 5, 8, 13],
            'highlights': <int, int>{
              5: AppTheme.matrixGreen.value,
              6: AppTheme.matrixGreen.value,
              7: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{
              5: 'fib(5)=5',
              6: 'fib(6)=8',
              7: 'fib(7)=13',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'What two properties must a problem have for Dynamic Programming to apply?',
            'options': [
              'Sorted input and O(N) space',
              'Overlapping subproblems and optimal substructure',
              'Greedy choice and recursion',
              'Binary search and divide-and-conquer',
            ],
            'answer': 1,
          },
        ];

      case 13: // Linked List
        return [
          {
            'type': 'text',
            'visualizer': 'node',
            'title': 'Linked List Reverse - Problem $pIndex',
            'content':
                'Classic 3-pointer reversal: prev=null, curr=head. Each step: save next=curr.next, then curr.next=prev, prev=curr, curr=next. When curr==null, prev is the new head. O(N) time, O(1) space.',
            'data': [1, 2, 3, 4, 5],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              1: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{0: 'curr', 1: 'next', 4: 'tail'},
          },
          {
            'type': 'text',
            'visualizer': 'node',
            'title': 'Cycle Detection: Floyd\'s Algorithm',
            'content':
                'Use slow (1 step) and fast (2 steps) pointers. If they ever meet, there is a cycle. If fast reaches null, no cycle. Also called the "hare and tortoise" algorithm. O(N) time, O(1) space.',
            'data': [3, 2, 0, 4, 2],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              3: AppTheme.errorRed.value,
            },
            'pointers': <int, String>{
              0: 'slow',
              1: 'fast',
              3: 'they meet! cycle',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'How many pointers are needed for the classic in-place linked list reversal?',
            'options': ['1', '2', '3', '4'],
            'answer': 2,
          },
        ];

      case 14: // Stacks & Queues
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Stack: Valid Parentheses - Problem $pIndex',
            'content':
                'Classic stack problem: "(())" → push ( on open. On close ), pop and check it matches. If stack empty when seeing ), or non-empty at end → invalid. Stack perfectly models LIFO matching.',
            'data': [40, 40, 41, 41],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              1: AppTheme.matrixGreen.value,
              2: AppTheme.accentYellow.value,
              3: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{
              0: "'('",
              1: "'('",
              2: "')' pop",
              3: "')' pop",
            },
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Queue: BFS Level Order',
            'content':
                'A Queue (FIFO) powers BFS traversal. Enqueue root, then dequeue node, enqueue its children. Process level by level. Queue size at each loop = current level\'s node count. Used for shortest path in unweighted graphs.',
            'data': [1, 2, 3, 4, 5, 6, 7],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              1: AppTheme.accentYellow.value,
              2: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{
              0: 'root(dequeue)',
              1: 'enqueue L2',
              2: 'enqueue L2',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question': 'Which data structure is FIFO (First In, First Out)?',
            'options': ['Stack', 'Queue', 'Heap', 'HashMap'],
            'answer': 1,
          },
        ];

      case 15: // Trees (BST)
        return [
          {
            'type': 'text',
            'visualizer': 'node',
            'title': 'BST Property - Problem $pIndex',
            'content':
                'In a Binary Search Tree, every left child < parent < right child. Searching for 4: start at root 8 → go left to 3 → go right to 6 → go right? No — left to 4. Found! O(log N) average.',
            'data': [8, 3, 10, 1, 6, null, 14, null, null, 4, 7],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              4: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{
              0: 'root=8',
              1: 'go left',
              4: 'found area',
            },
          },
          {
            'type': 'text',
            'visualizer': 'node',
            'title': 'In-Order = Sorted Output',
            'content':
                'In-order traversal of a BST (left → root → right) always gives elements in sorted order. This is why BSTs are useful for sorted data. Level-order uses a queue, DFS variants use the call stack.',
            'data': [8, 3, 10, 1, 6],
            'highlights': <int, int>{
              2: Colors.grey.shade800.value,
              1: AppTheme.accentYellow.value,
              0: AppTheme.matrixGreen.value,
            },
            'pointers': <int, String>{
              2: '1st: left',
              1: '2nd: root?',
              0: '3rd: right',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'Which BST traversal produces elements in sorted (ascending) order?',
            'options': ['Pre-order', 'In-order', 'Post-order', 'Level-order'],
            'answer': 1,
          },
        ];

      case 16: // Graphs / BFS
        return [
          {
            'type': 'text',
            'visualizer': 'grid',
            'title': 'BFS Shortest Path - Problem $pIndex',
            'content':
                'BFS explores neighbors layer by layer. Starting from S, we visit all cells at distance 1 first, then distance 2, etc. This guarantees the SHORTEST path to E in an unweighted grid.',
            'data': [
              ['S', '.', '.'],
              ['#', '#', '.'],
              ['.', '.', 'E'],
            ],
            'highlights': <String, int>{
              '0,0': AppTheme.matrixGreen.value,
              '0,1': AppTheme.accentYellow.value,
              '2,2': AppTheme.errorRed.value,
            },
            'pointers': <String, String>{
              '0,0': 'Start(dist=0)',
              '0,1': 'dist=1',
              '2,2': 'End',
            },
          },
          {
            'type': 'text',
            'visualizer': 'grid',
            'title': 'BFS Visited Set',
            'content':
                'Always track visited nodes in BFS to avoid processing the same node twice (which could cause infinite loops). Mark a node as visited when you ENQUEUE it, not when you process it.',
            'data': [
              ['v', 'v', 'v'],
              ['#', '#', 'v'],
              ['.', 'v', 'E'],
            ],
            'highlights': <String, int>{
              '0,0': AppTheme.accentYellow.value,
              '0,1': AppTheme.accentYellow.value,
              '0,2': AppTheme.accentYellow.value,
              '1,2': AppTheme.accentYellow.value,
              '2,2': AppTheme.matrixGreen.value,
            },
            'pointers': <String, String>{'2,2': 'reached!'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'Why does BFS guarantee the shortest path in an unweighted graph?',
            'options': [
              'Because it uses a priority queue',
              'Because it explores nodes level-by-level (by distance)',
              'Because it always visits the smallest node first',
              'Because it backtracks when stuck',
            ],
            'answer': 1,
          },
        ];

      case 17: // Graphs / DFS
        return [
          {
            'type': 'text',
            'visualizer': 'grid',
            'title': 'DFS: Number of Islands - Problem $pIndex',
            'content':
                'Classic DFS problem: count connected components. When we find a land cell (1), run DFS to flood-fill the entire island to 0 (mark visited), then increment count. Each DFS call explores one full island.',
            'data': [
              ['1', '1', '0'],
              ['0', '1', '0'],
              ['0', '0', '1'],
            ],
            'highlights': <String, int>{
              '0,0': AppTheme.matrixGreen.value,
              '0,1': AppTheme.matrixGreen.value,
              '1,1': AppTheme.matrixGreen.value,
              '2,2': AppTheme.accentYellow.value,
            },
            'pointers': <String, String>{'0,0': 'Island 1', '2,2': 'Island 2'},
          },
          {
            'type': 'text',
            'visualizer': 'grid',
            'title': 'DFS 4-Direction Exploration',
            'content':
                'From each cell, DFS explores up, down, left, right. Add diagonal if problem allows 8-connectivity. Always check bounds (row>=0, col>=0, row<rows, col<cols) before recursing to avoid ArrayIndexOutOfBounds.',
            'data': [
              ['v', 'v', '0'],
              ['0', 'v', '0'],
              ['0', '0', 'v'],
            ],
            'highlights': <String, int>{
              '0,0': AppTheme.accentYellow.value,
              '0,1': AppTheme.accentYellow.value,
              '1,1': AppTheme.accentYellow.value,
            },
            'pointers': <String, String>{'0,0': 'visited', '1,1': 'visited'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question': 'What data structure does DFS implicitly use?',
            'options': [
              'Queue (FIFO)',
              'HashMap',
              'Stack (call stack or explicit)',
              'Priority Queue',
            ],
            'answer': 2,
          },
        ];

      case 18: // Heaps & Priority Queue
        return [
          {
            'type': 'text',
            'visualizer': 'node',
            'title': 'Min Heap Property - Problem $pIndex',
            'content':
                'A Min Heap guarantees parent ≤ children. Root is always the minimum. Insertion: add at end, bubble up (heapify up). Extract-min: swap root with last, remove last, bubble down (heapify down). Both O(log N).',
            'data': [1, 3, 5, 7, 9, 8, 10],
            'highlights': <int, int>{0: AppTheme.matrixGreen.value},
            'pointers': <int, String>{0: 'min=1 (root)', 1: '3', 2: '5'},
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'K Largest Elements Pattern',
            'content':
                'To find K largest from a stream: maintain a MIN-heap of size K. If new element > heap.peek(), pop the min and push the new element. This keeps the K largest seen so far. O(N log K) — much better than sorting all N.',
            'data': [3, 2, 1, 5, 6, 4],
            'highlights': <int, int>{
              4: AppTheme.matrixGreen.value,
              3: AppTheme.matrixGreen.value,
            },
            'pointers': <int, String>{4: 'K=2 → 6', 3: 'K=2 → 5'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question': 'What is stored at the root of a max-heap?',
            'options': [
              'The minimum element',
              'The median element',
              'The maximum element',
              'A random element',
            ],
            'answer': 2,
          },
        ];

      case 19: // Greedy
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Activity Selection - Problem $pIndex',
            'content':
                'Greedy: always pick the activity that ends earliest (leaves most room for future activities). Sort by end time. If next activity starts after the last selected ends, select it. Gives the maximum number of non-overlapping activities.',
            'data': [1, 3, 0, 3, 1, 4, 5, 7, 3, 5],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              2: AppTheme.matrixGreen.value,
              6: AppTheme.matrixGreen.value,
            },
            'pointers': <int, String>{
              0: 'act1(end=2)',
              2: 'act3(end=4)',
              6: 'act5(end=7)',
            },
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Greedy vs DP',
            'content':
                'Greedy makes the locally optimal choice at each step, never reconsidering. DP explores all possibilities. Greedy is faster (usually O(N log N)) but only works when the greedy choice property holds. Coin change with arbitrary coins requires DP!',
            'data': [1, 5, 6, 9],
            'highlights': <int, int>{
              2: AppTheme.accentYellow.value,
              3: AppTheme.matrixGreen.value,
            },
            'pointers': <int, String>{2: 'greedy picks 6', 3: 'DP picks 9'},
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question':
                'The Greedy algorithm works optimally for coin change ONLY when:',
            'options': [
              'Coins are in any order',
              'The coin system is canonical (like US coins)',
              'There are fewer than 10 coin types',
              'The target is less than 100',
            ],
            'answer': 1,
          },
        ];

      case 20: // Advanced / Bit Manipulation
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'XOR Trick — Find Single Number - Problem $pIndex',
            'content':
                'XOR (^) has a magic property: x^x=0, x^0=x. So XOR-ing all numbers cancels pairs. [4,1,2,1,2] → 4^1^2^1^2 = 4^(1^1)^(2^2) = 4^0^0 = 4. Finds the single element in O(N) time, O(1) space.',
            'data': [4, 1, 2, 1, 2],
            'highlights': <int, int>{
              1: Colors.grey.shade800.value,
              3: Colors.grey.shade800.value,
              2: Colors.grey.shade800.value,
              4: Colors.grey.shade800.value,
              0: AppTheme.matrixGreen.value,
            },
            'pointers': <int, String>{
              0: 'only one = 4',
              1: 'cancelled',
              2: 'cancelled',
            },
          },
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Bit Manipulation Toolkit',
            'content':
                'n & (n-1) clears the lowest set bit (counts set bits). n & 1 checks odd/even. n >> 1 divides by 2. n << 1 multiplies by 2. These O(1) tricks often replace O(log N) division-based approaches in competitive programming.',
            'data': [8, 4, 2, 1, 0],
            'highlights': <int, int>{
              0: AppTheme.matrixGreen.value,
              3: AppTheme.accentYellow.value,
            },
            'pointers': <int, String>{
              0: '8=1000b',
              1: '4=0100b',
              2: '2=0010b',
              3: '1=0001b',
            },
          },
          {
            'type': 'quiz',
            'title': 'Knowledge Check',
            'question': 'What does n & (n-1) do for any integer n?',
            'options': [
              'Doubles n',
              'Checks if n is even',
              'Clears the lowest set bit of n',
              'Negates n',
            ],
            'answer': 2,
          },
        ];

      default:
        return [
          {
            'type': 'text',
            'visualizer': 'array',
            'title': 'Zone $z - Problem $pIndex',
            'content': 'General problem visualization step.',
            'data': [1, 2, 3],
            'highlights': <int, int>{0: AppTheme.matrixGreen.value},
            'pointers': <int, String>{0: 'Start'},
          },
        ];
    }
  }

  // Ensure all base problems have a lesson
  // Try title-aware routing first, then fall back to zone-level generateLesson
  for (var p in base) {
    if (p['lesson'] == null) {
      final titleLesson = getLessonByTitle(p['title'] as String);
      p['lesson'] =
          titleLesson ??
          generateLesson(p['zone'], p['id'].toString().split('_p').last);
    }
  }

  for (int z = 11; z <= 20; z++) {
    for (int pIndex = 1; pIndex <= 40; pIndex++) {
      base.add({
        'id': 'z${z}_p${100 + pIndex}',
        'zone': z,
        'title': 'Advanced Challenge $pIndex',
        'difficulty': pIndex > 30
            ? 'Hard'
            : pIndex > 15
            ? 'Medium'
            : 'Easy',
        'xp': pIndex > 30
            ? 250
            : pIndex > 15
            ? 150
            : 100,
        'description':
            'Advanced interview-style question $pIndex for Zone $z focusing on optimization.',
        'hint': 'Think about optimal time and space complexity.',
        'codeTemplate':
            'class Solution {\n  public void solve() {\n    ___;\n  }\n}',
        'blocks': {'a': 'return;', 'b': 'continue;'},
        'solution': {'1': 'a'},
        'lesson': generateLesson(z, '${100 + pIndex}'),
      });
    }
  }
  return base;
})();
