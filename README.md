# Geometry Language Grammar

```text
ABC

I = incenter(ABC)
(I) = incircle(I, ABC)

D = tangent((I), AB)
E = tangent((I), AC)

F = intersect(segment(AI), (I))
M = intersect(BF, DE)
N = intersect(CF, DE)
```

## Installation

Require `Java` to compile and test.

## Testing

```text
$ mvn install
```

## Syntax

### Comment

```text
// Comment line
```

### Point

```text
// Valid point name
// First character of name much be capital
// Second character of name much not number or underscore
A
A1
A_mixtilinear
A1_mixtilinear
```

### Line

```text
// Line include 2 point
AB
A1B
```

### Triangle

```text
// Triangle include 3 point
ABC
```

### Expression

```text
bisector(AB)
```

### Function

```text
circumcenter(ABC) {
    intersect(bisector(AB), bisector(AC))
}
```

### Call function

```text
intersect(bisector(AB), bisector(AC))
```

### Assignment

```text
O = intersect(bisector(AB), bisector(AC))
```

### Variable

```text
$1 = intersect(AB, CD)
```

## Contributing

Pull requests are welcome. For major changes,
please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
