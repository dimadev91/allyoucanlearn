const String exFunction =
    'VOID FUNCTION:\n'
    'This function type performs a task but does not return any value. \n'
    'It often refers to the main function or other sources that perform actions without an output. \n'
    'Ex: void main() => runApp(XylophoneApp()); \n\n'
    'VOID FUNCTION WITH INPUT:\n'
    'This function takes one or more inputs to run a specific action. \n'
    'It uses the input internally but still does not return a value. \n'
    'Ex: void playSound(int soundNumber) { ... } \n\n';

const String exDefinedFunction =
    'This function takes inputs and uses the \'return\' method to provide an output that can be used elsewhere. \n'
    'The function is defined by the type of output it must return (e.g., Widget, int). \n'
    'Ex: Widget BuildKey ({ required Color color, required in soundNumber })\n'
    '... return Continer (color: color, ...playSound(soundNumber); } \n\n'
    'When you don\'t name the input in the function, they\'ll be \n'
    'automatically positional, so when i recall the function it will be\n'
    'assign the corrisponding in put based on the position\n'
    'Ex:int step2Result = multiply(step1Result, 5)\n'
    'int multiply ({int n1, int n2) {...}';
