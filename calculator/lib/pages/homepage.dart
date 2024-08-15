import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
// import 'package:math_expressions/math_expressions.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var userInput = ""; // Handle userInput as a String for concatenation
  var result = '';

  void equalPress() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 340,
                width: double.infinity,
                color: Colors.amber,
              ),
              Positioned(
                bottom: 0,
                right: 20,
                child: Text(
                  result,
                  style: const TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 100, // Adjust this value as needed
                right: 20, // Adjust this value as needed
                child: Text(
                  userInput.isEmpty
                      ? '0'
                      : '$userInput ', // Replace with the text you want to display
                  style: const TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 150, 146, 146)),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                width: 70,
                height: 70,
                text: "AC",
                color: const Color.fromARGB(255, 183, 181, 181),
                onPress: () {
                  setState(() {
                    userInput = "";
                    result = ''; // Clear userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                icon: CupertinoIcons.plus_slash_minus,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '+/-';
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                icon: CupertinoIcons.percent,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '%';
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                icon: CupertinoIcons.divide,
                color: const Color.fromARGB(255, 255, 119, 0),
                onPress: () {
                  setState(() {
                    userInput += '/';
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                width: 70,
                height: 70,
                number: 7,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '7'; // Concatenate '7' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                number: 8,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '8'; // Concatenate '8' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                number: 9,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '9'; // Concatenate '9' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                icon: CupertinoIcons.multiply,
                color: const Color.fromARGB(255, 255, 119, 0),
                onPress: () {
                  setState(() {
                    userInput += 'X';
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                width: 70,
                height: 70,
                number: 4,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '4'; // Concatenate '4' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                number: 5,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '5'; // Concatenate '5' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                number: 6,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '6'; // Concatenate '6' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                icon: CupertinoIcons.minus,
                color: const Color.fromARGB(255, 255, 119, 0),
                onPress: () {
                  setState(() {
                    userInput += '-';
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                width: 70,
                height: 70,
                number: 1,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '1'; // Concatenate '1' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                number: 2,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '2'; // Concatenate '2' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                number: 3,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '3'; // Concatenate '3' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                icon: CupertinoIcons.plus,
                color: const Color.fromARGB(255, 255, 119, 0),
                onPress: () {
                  setState(() {
                    userInput += '+';
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                width: 185,
                height: 70,
                number: 0,
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '0'; // Concatenate '0' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                text: '.',
                color: const Color.fromARGB(255, 94, 91, 91),
                onPress: () {
                  setState(() {
                    userInput += '.'; // Concatenate '8' to userInput
                  });
                },
              ),
              Button(
                width: 70,
                height: 70,
                icon: CupertinoIcons.equal,
                color: const Color.fromARGB(255, 255, 119, 0),
                onPress: () {
                  setState(() {
                    equalPress();
                    // userInput = '';
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({
    super.key,
    required this.width,
    required this.height,
    this.number, // For displaying numbers
    this.color = Colors.blue, // Default color if not provided
    this.icon, // For displaying icons
    this.text, // For displaying text
    required this.onPress, // Required callback for button press
  });

  final double width;
  final double height;
  final int? number; // Optional number to display
  final Color color; // Color of the button
  final IconData? icon; // Optional icon to display
  final String? text; // Optional text to display
  final VoidCallback onPress; // Callback for button press

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.fromLTRB(20, 20, 20, 20), // Adjust padding as needed
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: widget.color,
          onPressed: widget.onPress,
          child: widget.icon != null
              ? Icon(widget.icon) // Display icon if provided
              : widget.text != null
                  ? Text(
                      widget.text!, // Display text if provided
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    )
                  : widget.number != null
                      ? Text(
                          widget.number
                              .toString(), // Display number if provided
                          style: const TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 255, 254, 254),
                          ),
                        )
                      : null, // Default case if neither icon, text, nor number is provided
        ),
      ),
    );
  }
}
