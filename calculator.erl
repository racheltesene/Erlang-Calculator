%% Basic Calculator Application in Erlang
%% This application performs basic arithmetic operations and demonstrates key functional programming principles.

-module(calculator).
-export([start/0, calculate/1, parse_expression/1, eval/1, add/2, subtract/2, multiply/2, divide/2, factorial/1, power/2, handle_input/1, list_to_number/1]).

%% Start the calculator
start() ->
    %% Welcome message
    io:format("Welcome to the Erlang Calculator!~n"),
    io:format("Enter an expression to calculate or 'quit' to exit:~n"),
    %% Enter the main loop
    loop().

%% Main loop to handle user input
loop() ->
    %% Get user input
    Input = io:get_line("> "),
    %% Handle the input
    handle_input(string:trim(Input)).

%% Handle user input
handle_input("quit") ->
    io:format("Goodbye!~n");
handle_input("") ->
    io:format("Please enter a valid expression.~n"),
    loop();
handle_input(Expression) ->
    Result = calculate(Expression),
    io:format("Result: ~p~n", [Result]),
    loop().

%% Calculate the result of an expression
calculate(Expression) ->
    %% Parse the expression into tokens
    Parsed = parse_expression(Expression),
    %% Remove or comment out the debug line below
    %% io:format("Parsed expression: ~p~n", [Parsed]),
    %% Evaluate the parsed expression
    eval(Parsed).


%% Parse the input expression into a list of tokens
parse_expression(Expression) ->
    %% Regular expression to handle numbers, keywords (factorial), and operators
    re:split(Expression, "\\s+", [{return, list}]).

%% Evaluate the parsed expression
eval([A, "+", B]) ->
    %% Addition operation
    add(list_to_number(A), list_to_number(B));
eval([A, "-", B]) ->
    %% Subtraction operation
    subtract(list_to_number(A), list_to_number(B));
eval([A, "*", B]) ->
    %% Multiplication operation
    multiply(list_to_number(A), list_to_number(B));
eval([A, "/", B]) ->
    %% Division operation with guard to prevent division by zero
    NumB = list_to_number(B),
    if
        NumB =/= 0 -> divide(list_to_number(A), NumB);
        true -> "Error: Division by zero"
    end;
eval([A, "^", B]) ->
    %% Power operation
    power(list_to_number(A), list_to_number(B));
eval(["factorial", A]) ->
    %% Factorial operation
    factorial(list_to_number(A));
eval([_, _]) ->
    %% Handle unsupported operations or missing operand
    "Error: Unsupported operation or missing operand.";
eval(_) ->
    %% Handle invalid expressions
    "Error: Invalid expression".

%% Arithmetic operations
add(A, B) -> 
    %% Addition
    A + B.
subtract(A, B) -> 
    %% Subtraction
    A - B.
multiply(A, B) -> 
    %% Multiplication
    A * B.
divide(A, B) -> 
    %% Division
    A / B.

%% Recursive factorial function
factorial(0) -> 
    %% Base case
    1;
factorial(N) when N > 0 -> 
    %% Recursive case
    N * factorial(N - 1).

%% Recursive power function
power(_, 0) -> 
    %% Base case
    1;
power(A, B) when B > 0 -> 
    %% Recursive case
    A * power(A, B - 1).

%% Convert list to number
list_to_number(List) ->
    case string:to_integer(List) of
        {ok, Number} -> Number;
        {Number, []} -> Number; %% Case for successful integer parsing
        _ ->
            case string:to_float(List) of
                {ok, Number} -> Number;
                {Number, []} -> Number; %% Case for successful float parsing
                _ ->
                    io:format("Error: Invalid number format~n"),
                    0
            end
    end.
