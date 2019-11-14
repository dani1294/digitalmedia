# Lab 3 Part 1

This lab is a cumulative review of each of the core topics of this course so far. This lab will consist of a mixture of Python, Git and Processing topics, and will focus on primarily visual applications.

## 1. Variables and Values
A **variable** represents a *named location* in a program that holds a **value**. At each line, every name that is available has a value. That value may change. Programming variables are different from mathematical variables. In math, an equation denotes a set of values that consists of known and unknown quantities or relationships. In programming, variables do not represent a single quantity, but rather a location in *memory*.

In Python, variables are declared by giving them a name that is not a keyword, and which uses the **assignment operator**, ```=```.

``` python
# These are all variables
# Empty string
userName = ""
# Integer
age = 10
# Boolean (True or False)
boolValue = True
```

Each of these are considered an *expression* or a command for the computer to perform an operation. Other examples of operations include logic and math, such as adding numbers together, or comparing values. 

In JavaScript, variables are defined using either the keyword `let` or `var`. 

See [Listing 3-1](./Lab3-0.js). JavaScript can run either in a browser or through a standalone runtime such as [Node.js](https://nodejs.org/en/). 

```JavaScript
let RegularExpression = /a*/g;
let testString1 = "aaaaa";
let testString2 = "bbbbb";
RegularExpression.match(testString1);
```

The listing can be run using node in a similar fashion to running Python files:

```bash
$ node Lab3-0.js
```

The *scope* of a variable is a term that represents what part of the program the variable name is accessible. 

This could be:
* **Block**: Within a function, or a "block" (statements inside curly brackets)  
* **Global**: Available anywhere, usually dangerous as it can be overridden.

## Functions

A function takes a set of parameters and performs some work on them. 

You should use functions whenever you see yourself writing the same lines of code. To move such code into a function (or a method) is called **refactoring**. Refactoring is usually successful if you can reduce the number of lines of code while keeping the functionality. 

In python, you can provide arguments:

```python
def addOne(x):
    return x + 1
```

## Logic

Computers operate on data that boils down to 0 or 1s. Much of the work performed by computers operates on conditions that also separate into "true" or "false." Testing for whether a value meets certain conditions is a common task, and is represented by the "if statement" which is generally the same in most procedural languages.

``` Python
if condition:
    print("Condition is True")
else:
    print("Condition is False")
```

In order to deal with more complex conditions, there are additional operators that handle combinations of conditions.

For example, imagine there are two variables that determine whether a piece of code should run:

```python
def WeatherRecommendation(weather, tempInF):
    if weather != "Rain" and tempInF > 72:
        print("The weather looks nice out!")
    elif weather == "Rain":
        print("You may want to bring an umbrella.")
    else:
        print("You may want to bring a sweater!")

weather = "Rain"
tempInF = 80
WeatherRecommendation(weather,tempInF)
weather = "Sunshine"
tempInF = 80
WeatherRecommendation(weather,tempInF)
```

In JavaScript, the logical "AND" operator is represented by two ampersands (&&). It means that both of the operands result the Boolean value True.

The logical OR (in python, "or", in other languages, two pipe characters "||"), will result in the Boolean value True if **EITHER** operand is True.

Finally, you can obtain the inverse using the "not" operator, which only takes a single operand after it:

```python
truthValue = True
print(not truthValue)
truthValue = False
print(not truthValue)
```

This is useful if it is simpler to express a concept with a negative. If you have a 

For equality, you can also test whether two operands are not equal to one another. 

## Iteration

Finally, iteration (as you recall) is when you perform some work a number of times. This can be for every pixel, every word, or even for every object in a scene. You will need to use a for loop in the following challenges.

## Classes and Methods: Objects

Start by reading and completing the tutorial here:
[Objects in Processing.py](https://py.processing.org/tutorials/objects/)

You will also need to read and complete the tutorial on interaction:

[Objects in Processing.py](https://py.processing.org/tutorials/interactivity/)

For the following challenges, change the code located in the carProcessingPy directory.

### **3-1.** (2pts) Event
Add a method to the program included from the tutorial carProcessingPy that changes some visual aspect of the car. At random times, call the function. 

The function should:
1. Change a visual attribute of the car, and this change should be reflected in the display or drive function.
2. Change an instance variable associated with the car class.

### **3-2.** (2pts) Interactivity
Make the function authored in 3-1 occur when the user presses a key on the keyboard (space key). Look at the example code for keyboard events for guidance.

### **3-3.** (2pts) New Object
Create a new class that displays a visual representation using similar methods to Car. 

Create several of these using random starting parameters in the setup function. 

You should save them to an array and update them each frame. 

An idea would be trees or rocks, but they could also be houses.

### **3-4.** (2pts) Creation

Create a background element that is drawn using a class, similar to the cars. 

The element could be a tree, grass, or some other shape using primitive drawing command. 

Let the user pick the position of the element using the mouse (using the mouse position and create the object when the user presses a mouse button). 

Make sure the element is drawn first in the sequence of draw calls. 

### **3-5.** (2pts) Brushes

Create a second object. Change the shape that is placed when the interactor presses a key. You will want to present the controls as text instructing the interactor as to which keys to press.

As before, you may place your broken code or attempts in comments along with the rationale behind what all you tried to get it to work. 