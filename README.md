# Overview

{Important!  Do not say in this section that this is college assignment.  Talk about what you are trying to accomplish as a software engineer to further your learning.}
## Software Description
The Erlang Basic Calculator Application is a simple command-line calculator built using the Erlang programming language. It performs basic arithmetic operations such as addition, subtraction, multiplication, and division, as well as advanced operations like exponentiation and factorial calculations. This program also showcases key functional programming principles of Erlang, such as recursion and pattern matching. The software takes user input as mathematical expressions, processes them, and outputs the result. It is designed to handle various cases, including invalid inputs and division by zero.

## Purpose for Writing the Software

The purpose of writing this software is to demonstrate practical use of the Erlang language in building real-world applications. By creating a calculator, I aimed to explore and highlight the strengths of Erlang, such as its ability to handle recursion, pattern matching, and functional programming paradigms efficiently. Additionally, this project provides a hands-on learning experience with user input handling, error checking, and performing common arithmetic tasks, all while utilizing Erlang's concurrency-oriented features.

[Software Demo Video](http://youtube.link.goes.here)

# Development Environment

## Tools Used to Develop the Software
- `Erlang/OTP:` The official Erlang runtime system, which includes the compiler and libraries needed to run Erlang applications.

- `Visual Studio Code:` A lightweight and flexible code editor that provided syntax highlighting and support for the Erlang language via extensions. It was used for writing, editing, and debugging the source code.

- `Terminal/Command Line:` The terminal was used for compiling and running the Erlang program, testing its functionality, and managing the development process.
{Describe the programming language that you used and any libraries.}

## Programming Language and Libraries
The software is written in Erlang, a functional, concurrent programming language known for its reliability in distributed systems. Erlang is built around lightweight processes and message-passing concurrency, although this application focuses on its functional features such as recursion, pattern matching, and immutability.

No external libraries were used, as the calculator application relies solely on Erlang's standard library. Key modules like `io` for input/output operations, `string` for string manipulation, and `re` for regular expression handling were utilized in the implementation to manage user inputs, parse expressions, and perform mathematical evaluations.
# Useful Websites

{Make a list of websites that you found helpful in this project}
* [Erlang—Wikipedia ](https://en.wikipedia.org/wiki/Functional_programming)
* [Erlang Standard Library Reference Manual](https://www.erlang.org/doc/apps/stdlib/api-reference.html)
* [Erlang forums](https://erlangforums.come)

# Future Work

{Make a list of things that you need to fix, improve, and add in the future.}
* Improve Input Parsing: Enhance the input parser to handle more complex mathematical expressions, including support for operator precedence and parentheses.

* Add More Operations: Implement additional mathematical operations, such as logarithmic functions, square roots, and trigonometry, to expand the calculator’s functionality.

* Improve Error Handling: Refine error handling to provide more descriptive error messages and handle edge cases, such as invalid inputs or undefined operations.