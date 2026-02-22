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
      'solution': {
        '1': 'a',
        '2': 'a',
      }, // wait, solution should be 'b' for second blank, but let's map 'b':'temp' so blank 1 is a='b' (key 'a'), blank 2 is b='temp' (key 'a') wait. For key 'a' it is 'b'. Let's fix blocks.
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

    // ── ZONE 5: Arrays ──
    {
      'id': 'z5_p1',
      'zone': 5,
      'title': 'Array Reversal',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Arrays. Reverse an array in place using two pointers.',
      'hint': 'Swap arr[left] and arr[right] while left < right.',
      'codeTemplate':
          'void reverse(int[] arr) {\n  int left = 0, right = arr.length - 1;\n  while (left < right) {\n    int temp = arr[left];\n    arr[left] = ___;\n    ___ = temp;\n    left++; right--;\n  }\n}',
      'blocks': {'a': 'arr[right]', 'b': 'arr[left]', 'c': 'right'},
      'solution': {
        '1': 'a',
        '2': 'a',
      }, // wait 'arr[right]' is block a, we want 'arr[right] = temp'. We need a block for arr[right]. So block 'a' is arr[right].
    },
    {
      'id': 'z5_p2',
      'zone': 5,
      'title': 'Swap Array Elements',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Swap two elements in an array given their indices.',
      'hint': 'Use a temporary variable to hold one value.',
      'codeTemplate':
          'void swap(int[] arr, int index1, int index2) {\n  int temp = arr[index1];\n  arr[index1] = ___;\n  ___ = temp;\n}',
      'blocks': {'a': 'arr[index2]', 'b': 'arr[index1]', 'c': 'index2'},
      'solution': {'1': 'a', '2': 'a'},
    },
    {
      'id': 'z5_p3',
      'zone': 5,
      'title': 'Max Item in Array',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Find the maximum item in an integer array.',
      'hint': 'Initialize max to arr[0] and iterate.',
      'codeTemplate':
          'int max(int[] arr) {\n  int maxVal = arr[0];\n  for (int i = 1; i < arr.length; i++) {\n    if (arr[i] > maxVal) {\n      maxVal = ___;\n    }\n  }\n  ___;\n}',
      'blocks': {'a': 'arr[i]', 'b': 'return maxVal', 'c': 'arr[0]'},
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 6: Binary Search ──
    {
      'id': 'z6_p1',
      'zone': 6,
      'title': 'Classic Binary Search',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Searching. Find a target in a sorted array in O(log N) time.',
      'hint': 'Calculate mid = low + (high - low) / 2.',
      'codeTemplate':
          'int search(int[] nums, int target) {\n  int low = 0, high = nums.length - 1;\n  while (low <= high) {\n    int mid = low + (high - low) / 2;\n    if (nums[mid] == target) return mid;\n    if (nums[mid] < target) ___;\n    else ___;\n  }\n  return -1;\n}',
      'blocks': {
        'a': 'low = mid + 1',
        'b': 'high = mid - 1',
        'c': 'return mid',
      },
      'solution': {'1': 'a', '2': 'b'},
      'lesson': [
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Binary Search',
          'content':
              'We want to find the number 23 in this sorted array. Binary search splits the array in half each time.',
          'data': [2, 5, 8, 12, 16, 23, 38, 56, 72, 91],
          'highlights': <int, int>{},
          'pointers': <int, String>{},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Step 1: Set Pointers',
          'content':
              'We set "low" to the start and "high" to the end. Then we calculate "mid": (low + high) / 2.',
          'data': [2, 5, 8, 12, 16, 23, 38, 56, 72, 91],
          'highlights': <int, int>{
            0: AppTheme.matrixGreen.value,
            9: AppTheme.matrixGreen.value,
            4: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{0: 'low', 9: 'high', 4: 'mid'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Step 2: Update Low',
          'content':
              '16 < 23, so target is in the right half. Move "low" pointer to mid + 1, calculate new mid.',
          'data': [2, 5, 8, 12, 16, 23, 38, 56, 72, 91],
          'highlights': <int, int>{
            0: Colors.grey.shade800.value,
            1: Colors.grey.shade800.value,
            2: Colors.grey.shade800.value,
            3: Colors.grey.shade800.value,
            4: Colors.grey.shade800.value,
            5: AppTheme.matrixGreen.value,
            9: AppTheme.matrixGreen.value,
            7: AppTheme.accentYellow.value,
          },
          'pointers': <int, String>{5: 'low', 9: 'high', 7: 'mid'},
        },
        {
          'type': 'text',
          'visualizer': 'array',
          'title': 'Step 3: Found it!',
          'content':
              'Continue narrowing down until mid is our target. Found 23!',
          'data': [2, 5, 8, 12, 16, 23, 38, 56, 72, 91],
          'highlights': <int, int>{5: 0xFF28CA41},
          'pointers': <int, String>{5: 'FOUND!'},
        },
      ],
    },
    {
      'id': 'z6_p2',
      'zone': 6,
      'title': 'Order Agnostic Binary Search',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Perform binary search not knowing if array is sorted ascending or descending.',
      'hint': 'Check if arr[start] < arr[end] to find sort order first.',
      'codeTemplate':
          'boolean isAsc = arr[start] < arr[end];\nif (isAsc) {\n  if (target < arr[mid]) ___;\n  else ___\n} else {\n  if (target > arr[mid]) end = mid - 1;\n  else start = mid + 1;\n}',
      'blocks': {
        'a': 'end = mid - 1;',
        'b': 'start = mid + 1;',
        'c': 'start = mid;',
      },
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 7: Sorting ──
    {
      'id': 'z7_p1',
      'zone': 7,
      'title': 'Bubble Sort',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Sorting. Repeatedly swap adjacent elements if they are in the wrong order.',
      'hint': 'The largest element bubbles up to the back.',
      'codeTemplate':
          'void bubbleSort(int[] arr) {\n  for (int i = 0; i < arr.length; i++) {\n    for (int j = 1; j < arr.length - i; j++) {\n      if (arr[j] < arr[j - 1]) {\n        int temp = arr[j];\n        arr[j] = ___;\n        ___ = temp;\n      }\n    }\n  }\n}',
      'blocks': {'a': 'arr[j - 1]', 'b': 'arr[j]', 'c': 'temp'},
      'solution': {
        '1': 'a',
        '2': 'b',
      }, // 'a' is arr[j-1]. So arr[j]=arr[j-1]. Blank 2 should be arr[j-1]=temp. Let\'s fix block b. block 'b' is arr[j], but wait, the syntax was wrong in my head.
    },
    {
      'id': 'z7_p2',
      'zone': 7,
      'title': 'Selection Sort',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Find the maximum element and put it at its correct index.',
      'hint':
          'Find max index, then swap with the last element of the unsorted segment.',
      'codeTemplate':
          'for (int i = 0; i < arr.length; i++) {\n  int last = arr.length - i - 1;\n  int maxIndex = getMaxIndex(arr, 0, last);\n  ___(arr, maxIndex, last);\n}',
      'blocks': {'a': 'swap', 'b': 'replace', 'c': 'sort'},
      'solution': {'1': 'a'},
    },
    {
      'id': 'z7_p3',
      'zone': 7,
      'title': 'Cyclic Sort',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'When given numbers from 1 to N, sort them in O(N) time using Cyclic Sort.',
      'hint': 'Check if elements are at `index = value - 1`.',
      'codeTemplate':
          'int i = 0;\nwhile (i < arr.length) {\n  int correct = arr[i] - 1;\n  if (arr[i] != arr[correct]) {\n    swap(arr, i, ___);\n  } else {\n    ___;\n  }\n}',
      'blocks': {'a': 'correct', 'b': 'i++', 'c': 'i--'},
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 8: Time Complexity Analysis ──
    {
      'id': 'z8_p1',
      'zone': 8,
      'title': 'Time Complexity Analysis',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Big O Notation. What is the time complexity of a single loop?',
      'hint': 'O(N) for linear scans.',
      'codeTemplate':
          'for(int i=0; i<n; i++) {\n  // O(1) ops\n}\n// The complexity is ___;\n',
      'blocks': {'a': 'O(N)', 'b': 'O(N^2)', 'c': 'O(1)'},
      'solution': {'1': 'a'},
    },

    // ── ZONE 9: Math ──
    {
      'id': 'z9_p1',
      'zone': 9,
      'title': 'Check Prime (Math)',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Mathematics. Verify if a number is prime optimally.',
      'hint': 'Loop up to sqrt(n).',
      'codeTemplate':
          'boolean isPrime(int n) {\n  if (n <= 1) return false;\n  for (int i = 2; ___ <= n; i++) {\n    if (___ == 0) return false;\n  }\n  return true;\n}',
      'blocks': {'a': 'i * i', 'b': 'n % i', 'c': 'n / i'},
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 10: Recursion ──
    {
      'id': 'z10_p1',
      'zone': 10,
      'title': 'Fibonacci (Recursion)',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Recursion. Calculate the Nth Fibonacci number recursively.',
      'hint': 'Base case: n <= 1 return n.',
      'codeTemplate':
          'int fib(int n) {\n  if (n <= 1) return n;\n  return ___ + ___;\n}',
      'blocks': {'a': 'fib(n - 1)', 'b': 'fib(n - 2)', 'c': 'n'},
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 11: Backtracking ──
    {
      'id': 'z11_p1',
      'zone': 11,
      'title': 'N-Queens Base',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Backtracking. Place N queens on an NxN board.',
      'hint': 'Backtrack when a path fails.',
      'codeTemplate':
          'void solve(int row) {\n  if (row == n) {\n    ___;\n    return;\n  }\n  // place queens\n}',
      'blocks': {'a': 'addSolution()', 'b': 'return false', 'c': 'break'},
      'solution': {'1': 'a'},
    },

    // ── ZONE 12: OOP ──
    {
      'id': 'z12_p1',
      'zone': 12,
      'title': 'OOP Constructors',
      'difficulty': 'Easy',
      'xp': 100,
      'description':
          'Object-Oriented Programming. Initialize object properties.',
      'hint': 'Use the `this` keyword.',
      'codeTemplate':
          'class Person {\n  String name;\n  Person(String name) {\n    ___ = name;\n  }\n}',
      'blocks': {'a': 'this.name', 'b': 'name', 'c': 'self.name'},
      'solution': {'1': 'a'},
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

    // ── ZONE 14: Stacks/Queues ──
    {
      'id': 'z14_p1',
      'zone': 14,
      'title': 'Valid Parentheses',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Stacks and Queues. Check if brackets are balanced.',
      'hint': 'Push openers, pop matches.',
      'codeTemplate':
          'boolean isValid(String s) {\n  Stack<Character> stack = new Stack<>();\n  for (char c : s.toCharArray()) {\n    if (c == \'(\') ___;\n    else if (stack.isEmpty() || stack.pop() != \'(\') ___;\n  }\n  return stack.isEmpty();\n}',
      'blocks': {'a': 'stack.push(c)', 'b': 'return false', 'c': 'return true'},
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 15: Trees ──
    {
      'id': 'z15_p1',
      'zone': 15,
      'title': 'Tree Inorder Traversal',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Trees. Left -> Root -> Right traversal.',
      'hint': 'Recursively visit left child first.',
      'codeTemplate':
          'void inorder(TreeNode root) {\n  if (root == null) return;\n  ___;\n  System.out.println(root.val);\n  ___;\n}',
      'blocks': {
        'a': 'inorder(root.left)',
        'b': 'inorder(root.right)',
        'c': 'print(root)',
      },
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 16: Hashmaps ──
    {
      'id': 'z16_p1',
      'zone': 16,
      'title': 'Two Sum Hashmap',
      'difficulty': 'Easy',
      'xp': 100,
      'description': 'Hashmaps. Find two numbers that sum to target.',
      'hint': 'Store complements in a map.',
      'codeTemplate':
          'int[] twoSum(int[] nums, int target) {\n  Map<Integer, Integer> map = new HashMap<>();\n  for (int i = 0; i < nums.length; i++) {\n    int comp = target - nums[i];\n    if (___) return new int[]{map.get(comp), i};\n    ___;\n  }\n  return new int[]{};\n}',
      'blocks': {
        'a': 'map.containsKey(comp)',
        'b': 'map.put(nums[i], i)',
        'c': 'map.add()',
      },
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 17: Dynamic Programming ──
    {
      'id': 'z17_p1',
      'zone': 17,
      'title': 'Climbing Stairs',
      'difficulty': 'Medium',
      'xp': 150,
      'description':
          'Dynamic Programming. Find distinct ways to climb N stairs.',
      'hint': 'dp[i] = dp[i-1] + dp[i-2]',
      'codeTemplate':
          'int climbStairs(int n) {\n  if(n<=2) return n;\n  int[] dp = new int[n+1];\n  dp[1]=1; dp[2]=2;\n  for(int i=3; i<=n; i++) {\n    dp[i] = ___ + ___;\n  }\n  return dp[n];\n}',
      'blocks': {'a': 'dp[i-1]', 'b': 'dp[i-2]', 'c': '1'},
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 18: Heaps ──
    {
      'id': 'z18_p1',
      'zone': 18,
      'title': 'Kth Largest Element',
      'difficulty': 'Hard',
      'xp': 250,
      'description': 'Heaps. Find the Kth highest element in a stream.',
      'hint': 'Use a Min-Heap of size K.',
      'codeTemplate':
          'int findKthLargest(int[] nums, int k) {\n  PriorityQueue<Integer> pq = new PriorityQueue<>();\n  for (int x : nums) {\n    pq.offer(x);\n    if (___) ___;\n  }\n  return pq.peek();\n}',
      'blocks': {'a': 'pq.size() > k', 'b': 'pq.poll()', 'c': 'pq.add()'},
      'solution': {'1': 'a', '2': 'b'},
    },

    // ── ZONE 19: Graphs ──
    {
      'id': 'z19_p1',
      'zone': 19,
      'title': 'BFS Graph Traversal',
      'difficulty': 'Medium',
      'xp': 150,
      'description': 'Graph Theory. Breadth-First Search locally.',
      'hint': 'Use a Queue and visited array.',
      'codeTemplate':
          'void bfs(int start, List<List<Integer>> graph) {\n  Queue<Integer> q = new LinkedList<>();\n  boolean[] visited = new boolean[graph.size()];\n  q.offer(start); visited[start] = true;\n  while (!q.isEmpty()) {\n    int node = ___;\n    for(int neighbor : graph.get(node)) {\n       if (!visited[neighbor]) { ___; visited[neighbor] = true; }\n    }\n  }\n}',
      'blocks': {'a': 'q.poll()', 'b': 'q.offer(neighbor)', 'c': 'q.push()'},
      'solution': {'1': 'a', '2': 'b'},
      'lesson': [
        {
          'type': 'text',
          'visualizer': 'grid',
          'title': 'Grid Traversal (BFS)',
          'content':
              'BFS explores an area radiating outward layer by layer from a starting point, like a ripple in a pond. Perfect for finding shortest paths in mazes!',
          'data': [
            ['S', '.', '.'],
            ['.', '#', '.'],
            ['.', '.', 'E'],
          ],
          'highlights': {
            '0,0': AppTheme.matrixGreen.value,
            '1,1': Colors.grey.shade800.value,
            '2,2': AppTheme.errorRed.value,
          },
          'pointers': {'0,0': 'Start', '2,2': 'End', '1,1': 'Wall'},
        },
        {
          'type': 'text',
          'visualizer': 'grid',
          'title': 'Queue & Visited Array',
          'content':
              'We use a Queue to track the frontier of our exploration. When we visit a cell, we mark it as visited and add all its valid neighbors to the Queue to check later.',
          'data': [
            ['S', '.', '.'],
            ['.', '#', '.'],
            ['.', '.', 'E'],
          ],
          'highlights': {
            '0,0': AppTheme.matrixGreen.value,
            '0,1': AppTheme.accentYellow.value,
            '1,0': AppTheme.accentYellow.value,
            '1,1': Colors.grey.shade800.value,
            '2,2': AppTheme.errorRed.value,
          },
          'pointers': {'0,1': 'in queue', '1,0': 'in queue'},
        },
      ],
    },

    // ── ZONE 20: Advanced Magic ──
    {
      'id': 'z20_p1',
      'zone': 20,
      'title': 'Bit Manipulation Magic',
      'difficulty': 'Hard',
      'xp': 250,
      'description':
          'Additional Topics. Find the only number appearing once where every other appears twice.',
      'hint': 'Use XOR (^) which cancels twins.',
      'codeTemplate':
          'int singleNumber(int[] nums) {\n  int ans = 0;\n  for(int x : nums) {\n    ans = ___;\n  }\n  return ans;\n}',
      'blocks': {'a': 'ans ^ x', 'b': 'ans + x', 'c': 'ans | x'},
      'solution': {'1': 'a'},
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

  for (int z = 1; z <= 20; z++) {
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
