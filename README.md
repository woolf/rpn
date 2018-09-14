# RPN

A command-line Reverse Polish notation (RPN)

## Installation

Clone this github repository to your computer:

    $ git clone git@github.com:woolf/rpn.git

CD to folder

    $ cd rpn

Run

    $ ruby run.rb

Additionally, you can specify Input/Output interface (currently, only `standard` supported):

    $ ruby run.rb Stdio

Example usage
-----------------------

    > 15
    15
    > 7
    7
    > 1
    1
    > 1
    1
    > +
    2
    > -
    5
    > /
    3.0
    > 3
    3
    > *
    9.0
    > 2
    2
    > 1
    1
    > 1
    1
    > +
    2
    > +
    4
    > -
    5.0

---

    > 5
    5
    > 9
    9
    > 1
    1
    > -
    8
    > /
    0.625

#### Supported Operators

- '+', '-', '/', '*'
- Quit `q`

## Dependencies

No dependencies, any Ruby implementations

## Future development

Create Ruby GEM

## Interaction

- By default it use STDIO
- Other implementations could be added by implementing new adapter
