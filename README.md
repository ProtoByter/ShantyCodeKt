# ShantyCode

## Syntax

### Ho-iness

This language requires that you start some lines with ho, but not too many. This document will not disclose how many are required.

### Variables

#### Declaring a variable

```Text
Bonny ship the <var name>
```

#### Setting a variable

```Text
For the bonny ship, the <var name>, goes a-fishing for the <value>
```

#### Variable maths

##### Adding

```Text
<var name or value> cheers for the <var name> and the <result var name>
```

#### Subtraction

```Text
Well don't you weep, my bonny <var name or value>, though you'll be left behind <var name or value>
```

### Functions

#### Declaring a function

```Text
What will we do with a <fun name> sailor?
<othercode>
Early in the morning!
```

#### Calling a function

```Text
The name of the ship was the <fun name>
```

### Logic

#### If statements

##### Comparisons

```Text
<varname>man come of whale to y            x > y
<varname>man come in tow to y              x < y
<varname>man come not in the port of y     x != y
<varname>man come in the port of y         x == y
```

##### If

```Text
Soon may the <comparison>
<code>
Leave her, Johnny, leave her
```

##### Else

```Text
One day, when the tonguing is done
<code>
Leave her, Johnny, leave her
```

#### Labels

##### Defining

```Text
Here be the port of <name> 
```

##### Going to

```Text
Dock in port <name>
```

##### Skipping a line

```Text
A line was cut, A <condition> was freed
```

### I/O

#### Output to STDOUT

```Text
I thought I heard the Old Man say <var name or value>
```

#### Input from STDIN

```Text
If you wanna get to Tesco, boys, you've gotta get by <var name>!
```

### Types

#### String

```Text
"<any sequence of characters>"
```

#### Integer

```Text
<digits>
```

#### Float

```Text
<digits>.<digits>
```

### End of a program or block

```Text
Leave her, Johnny, leave her
```

## Notes for implementations

#### Amount of ho needed

To check if the number of ho prefixes are correct you need to send a get request to `TBD/ho` with the number of lines and the ho number. It will return 1 if the amount is correct and 0 if not.
Also, what ever you do, don't try and bruteforce the number <b>we have thought of this and have already added barriers to that working</b>