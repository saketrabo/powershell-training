# Scientific Calculator

## Requirements 

We want to build a scientific calculator that can do the following things:

### Multiplication 

The calculator can multiply two numbers together.

**Sample Results**

| 1st Number | 2nd Number |   Result   |
| :--------: | :--------: | :--------: |
|     3      |     5      |     15     |
|     1      |     9      |     9      |
|     0      |     0      |     0      |
|    4.5     |    2.25    |   10.125   |
|  1698433   |    5746    | 9759196018 |

### Scientific Notation

We would like to support scientific notation with our calculator. A user should be able to carry out each of the operations by inputting both scientific and regular notation. If a number is inputted using regular notation, the calculator should return the answer in regular notation. If the input is scientific notation, the answer should be in scientific notation.

Scientific notation involves having one decimal number multiplied by a power of 10. For example: `150` would be written as `1.5x10^2`. `0.015` would be written as `1.5 x 10^-2`. Traditionally, calculators used upper or lower case 'E' notation where 'E' stood for 'Exponent'. So `150` would be `1.5E2` and `0.015` would be `1.5E-2`.

 Below are some examples of how this should look:

|  Number   |   Result   |
| :-------: | :--------: |
|    100    |    1E2     |
|    125    |   1.25E2   |
|    123    |  1.235E3   |
|  1698433  | 1.698433E6 |
| 0.0002134 |  2.134E-4  |

### Addition

The calculator can add two numbers together.

**Sample Results**

| 1st Number | 2nd Number | Result  |
| :--------: | :--------: | :-----: |
|     3      |     5      |    8    |
|     1      |     9      |   10    |
|     0      |     0      |    0    |
|    4.5     |    2.25    |  6.75   |
|  1698433   |    5746    | 1704179 |


### Subtraction 

The calculator can subtract a number from another.

**Sample Results**

| 1st Number | 2nd Number | Result  |
| :--------: | :--------: | :-----: |
|     3      |     5      |   -2    |
|     9      |     1      |    8    |
|     0      |     0      |    0    |
|    4.5     |    2.25    |  2.25   |
|  1698433   |    5746    | 1692687 |

### Division 

The calculator can divide one number by another.

**Sample Results**

| 1st Number | 2nd Number | Result  |
| :--------: | :--------: | :-----: |
|     3      |     5      |   0.6   |
|     9      |     3      |    3    |
|     0      |     0      | `error` |
|    4.5     |    2.25    |    2    |
|  1698433   |    5746    | 295.585 |

### Calculator 'Tape'/Log

Like some older analog calculators, the calculator should be able to display a 'tape' of all the calculations that have been carried out in the following format:

`1st number [operation] 2nd Number = result`

Some examples:

- `3 + 5 = 8`
- `3 * 5 = 15`
- `1698433 / 5746 = 295.585`

The user should be able to specify 'how many lines back' the log should go. So if they specify `1` it should show the most recent calculation, `2` should show you the second-to-last and the last calculations in the log. The higher the number given, the further back in the log it goes.