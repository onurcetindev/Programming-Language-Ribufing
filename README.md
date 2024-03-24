# Ribufing Programming Language

## Table of Contents

- [Ribufing Language Project](#ribufing-language-project)
  - [BNF Form](#bnf-form)
  - [Description](#description)
  - [Data Types](#data-types)
  - [Control Flow](#control-flow)
  - [Loop](#loop)
  - [Functions](#functions)
  - [Variables and Data Types](#variables-and-data-types)
  - [IO](#inputoutput)
  - [Operators](#operators)
  - [Running the Project](#running-the-project)

> #### CSE 334 - Programming Languages
>
> - This project is build for CSE 334 course of Computer Scinece Engineering of Akdeniz University.
> - Contributors
>
>   - [Bedirhan Tonğ](https://github.com/bedirhantong)
>   - [Şeyhmus Alataş](https://github.com/alatasms)
>   - [Onur Çetin](https://github.com/onurcetindev)
>
> - Technologies
>   - ![Language](https://img.shields.io/badge/-C-blue) ![Language](https://img.shields.io/badge/-Lex-yellow.svg) ![Language](https://img.shields.io/badge/-Yacc-red.svg)

### BNF FORM

The following Backus-Naur Form (BNF) grammar defines the syntax of the language:

```bnf
<program> ::= <statement>*

<statement> ::= <if-statement> | <while-statement> | <switch-statement> | <assignment> | <return-statement> | <printing-statement> | <block>
<block> ::= {<statemnet>*}

<if-statement> ::= kaf (<condition-sequence>) <statement> |
                    kaf (<condition-sequence>) <statement> kef <statement> |
                    kaf (<condition-sequence>) <statement> kafkef <statement> |
                    kaf (<condition-sequence>) <statement> kafkef <statement> kef <statement>

<condition> ::= <identifier> <comparison> <identifier>
<condition-sequence> ::= <condition> | <logic-operator><condition-sequence>

<switch-statement> ::= inspect <identifier> <case_statement>* default <block>
<case-statement> ::= match <value> <block>

<while-statement> ::= repeat <condition-sequence> <block>



<function-define> ::= func <identifier> ( <argument-sequence> ) <block>
<argument-sequence> ::= <argument> | <argument> "," <argument-sequence>
<argument> ::= <type> <identifier> | <type> <identifier> <assign-op> <literal>

<function-call> ::= <identifier> (<parameter-sequence>)
<parameter-sequence> ::= <parameter> | <parameter>,<parameter-sequence>
<parameter> ::= <literal> | <identifier>


<variable-declaration> ::= <type> <identifier> <semicolon>
<assignment> ::= <type> <identifier> <assign-op> <value> | <identifier> <assign-op> <value>

<return-statement> ::= return <identifier> <semicolon> | return <function-call> <semicolon> | return <literal> <semicolon>
<printing-statement> ::= display (<literal> | display <identifier> | display <function-call>) <semicolon>


<identifier> ::= <string>
<assign-op> ::= "="
<logic-operator> ::= and | or
<comparison> ::= nql | eql
<semicolon> ::= ;
<type> ::= "boolean" | "double" | "string" | "int"
<literal> ::= integer | double | string | boolean
<value> ::= <integer> | <string> | <boolean-value> | <double>
<integer> ::= <digit> | <digit><integer>
<double> ::= <integer>.<integer>

<string> ::= [a-zA-Z][a-zA-Z0-9_]*
<boolean-value> ::= true | false
<digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
```

# Description

This describes a structured programming language with some object-oriented concepts like function definitions. Here's a breakdown of its key features:

#### Data Types:

- Supports basic data types: integers (int), doubles (double), strings (string), and booleans (boolean).

#### Control Flow:

- Offers if-else constructs with various combinations (using kaf, kef, kafkef) for conditional execution. The exact semantics of these keywords (e.g., kaf for simple if, kef for else and kafkef for if-else) would require additional information.
- switch statements for multi-way branching based on an identifier's value (inspect, match, default).

```c
int number = 1;
inspect(number) {
    match 1 display("Ribufing");
}
```

#### Loop

- while loops for repeated execution based on a condition (repeat).

```c
repeat(true) {
  display("It's true");
}
```

#### Functions:

- Enables defining functions with names (func), arguments (argument-sequence), and a block of statements (block).

```c
func greet(string name) {  // Function declaration
  display("Hello, " + name + "!");
}

kaf (name eql "Alice") greet(name);  // Function call
```

#### Variables and Data Types:

- Variables are declared with a specific data type and assigned a name (variable-declaration).
- Assignment of values is done using the assignment operator (=).
  Values and Expressions:
- Values can be numbers, strings, booleans, or the result of function calls.
- Literals represent constant values.

#### Input/Output:

- Printing to the console is achieved using the display statement.

#### Operators:

- Supports comparison (nql - not equal, eql - equal) and logical (and, or) operators.

### Running The Project

```ribufing
make scanner
./scanner < example.rbf
```

