## Dr-Quine

### Description :

#### A quine is a computer program (a kind of metaprogram) whose output and source code are identical.

##### example of an simple quine in python :

```py
a = 'a = %r\nprint(a%%a, end="")'
print(a%a, end="")
```

##### output :

```txt
a = 'a = %r\nprint(a%%a, end="")'
print(a%a, end="")
```

##### a simple way to check if you have a valid quine is to redirect the output to a file and do a diff, like this :

```bash
./exemple_of_quine_file.py > tmp_file && diff exemple_of_quine_file.py tmp_file
```

##### if you have an error, your quine is invalid (in this project 42, the Sully exercise is an exception)

### Exercises :

#### Colleen :

```txt
• The executable must be named Colleen.
• When executed, the program must display on the standard output an output
  identical to the source code of the file used to compile the program.

The source code must contain at least :

• A main function.
• Two different comments.
• One of the comments must be present in the main function
• One of the comments must be present outside of your program.
• Another function in addition to the main function (which of course will be called)
```

Example of comments in C (to be adapted according to the language used) :

```c
/*
  Comments will look like this
*/
```

#### Grace :

```txt
• The executable must be named Grace.
• When executed, the program writes in a file named Grace_kid.c/Grace_kid.s
  the source code of the file used to compile the program.

The source code must strickly contain

• No main declared.
• Three defines only.
• One comment.
• The program will run by calling a macro.
```

Example of a program called by a macro :

```c
#define FT(x)int main(){ /* code */ }

FT(x)
```

#### Sully :

```txt
• The executable must be named Sully.
• When executed the program writes in a file named Sully_X.c/Sully_X.s. The
  X will be an interger given in the source. Once the file is created, the program
  compiles this file and then runs the new program (which will have the name of its
  source file).

• Stopping the program depends on the file name : the resulting program will be
  executed only if the integer X is greater or equals than 0.

• An integer is therefore present in the source of your program and will have to
  evolve by decrementing every time you create a source file from the execution of
  the program.

• You have no constraints on the source code, apart from the integer that will be
  set to 5 at first.
```
