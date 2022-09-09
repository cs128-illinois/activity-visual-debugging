# Visual debugging
----------------

LLDB (the **L**ow **L**evel **D**e**B**ugger) is a helpful debugging tool. Since we are using VSCode for C++ in this class, we can use the lldb visual debugging tool to help us look through our code for issues. In today’s lab, you’ll go over the basics of using this debugging tool.

For this lab, you should execute all commands from the root directory of the repository you cloned above. In a minute, your lab facilitator will run through solving the first bug (of four!) in the given code, and we strongly encourage you to follow along on your machine. After that, you’ll figure out the rest of the bugs in groups with your peers.

Here is a short table describing the actions you can take while using the VSCode lldb tool:

![](https://cdn1.cs128.org/fa21/lldb-vis-continue.png)
Continue

Continues program execution until it finishes, crashes, or reaches a breakpoint.

![](https://cdn1.cs128.org/fa21/lldb-vis-stepover.png)
Step Over

Moves the debugger to the next line of code relative to the current line.

![](https://cdn1.cs128.org/fa21/lldb-vis-stepinto.png)
Step Into

Moves the debugger to the next line of code executed.
(This is different from Step Over! Step Into will enter function calls and Step Over skips them)

![](https://cdn1.cs128.org/fa21/lldb-vis-stepout.png)
Step Out

Steps Out of the current frame (for now, just think of returning from the current function).

![](https://cdn1.cs128.org/fa21/lldb-vis-restart.png)
Restart

Restarts program execution from the beginning.

![](https://cdn1.cs128.org/fa21/lldb-vis-stop.png)
Stop

Stops the debugger.

## Breakpoints

Breakpoints are incredibly useful while debugging. They allow you to put stopping points on specific lines of code in your program so that the debugger stops when reaching them. This is useful to check out the value of a variable at a specific point in the program, inspect how an algorithm works step by step, and in many other ways too. You can place a breakpoint by left-clicking in the space to the left of a line number. It should create a red dot and look like this:

![](https://cdn1.cs128.org/fa21/lldb-vis-breakpoint.png)

# The activity

 Review the code dependencies for the `make exec` target to determine what's happening in our faulty implementation of basic restaurant software.  Once you're comfortable with the code base, compile the source to an executable, and run the resultant executable through our environment's debugger. Your task is to identify and resolve all bugs in our implementation.

You can confirm your progress by compiling and running the provided test suite, `make tests`. Once you have fixed all the bugs, all tests should pass, and the result of running the main we give you should be:

    ------------------------------
    | Welcome to our restaurant! |
    ------------------------------
    We currently have:
    0 food items
    100 dollars

    Let's restock on our food!

    We currently have:
    4 food items
    80 dollars

    We successfully serviced a new customer!

    We currently have:
    2 food items
    120 dollars

    A customer didn't have enough money, so they were turned away