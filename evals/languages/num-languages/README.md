# Eval: Performance with increasing number of languages

## Eval: Minimal test

**User Prompt:** Calculate the circumference of a circle with a radius of 9 using the mojo language. Print "ten" if circumference is greater than 10. Print "hundred" if it's greater than 100. Set too invaid flag if area is less than 1 and set invalid string to "Too small"Use 3.14 for pi and types. Provide only the code.

### Results with codestral

**Context: None**
```
alias pi: Float64 = 3.14
var radius: Float64 = 9.0
var circumference: Float64 = 2.0 * pi * radius
print("Circumference:", circumference)

if circumference > 100.0 {
    print("hundred")
} else if circumference > 10.0 {
    print("ten")
}

var area: Float64 = pi * radius * radius
var too_invalid: Bool = area < 1.0
var invalid_string: String = too_invalid ? "Too small" : ""
```

**Context: Mojo Only**
```
```

**Context: Mojo & Python**
```
```

**Context: Mojo & TypeScript**
```
```

**Context: Mojo & Go**
```
```

**Context: Mojo, Python, TypeScript, Go**
```
alias pi: Float64 = 3.14
var radius: Float64 = 9.0
var circumference: Float64 = 2.0 * pi * radius
print("Circumference:", circumference)

if circumference > 100.0:
    print("hundred")
elif circumference > 10.0:
    print("ten")

var area: Float64 = pi * radius * radius
var too_invalid: Bool = area < 1.0
var invalid_string: String = "Too small" if too_invalid else ""
```

## Eval: Use several features

**User Prompt:** Ask user for their name and the radius of a circle. Calculate the circle's area using the mojo language. Print "ten" if result is greater than 10. Print "hundred" if it's greater than 100. Set invalid flag is area is less than 1. Use 3.1415 for pi and types. Print goodbye using the user's name. Provide only the code.

### Results with qwen-coder-2.5 32b

**No context**
```
```

**Mojo Only**
```
```

**Mojo & Python**
```
```

**Mojo & TypeScript**
```
```

**Mojo & Go**
```
```

**Four Languages**
```
```

## Eval: Use all features

**User Prompt:** Write a program in mojo analyzes temperature data from 5 weather station. I'm collecting hourly temperature readings and want to:
- Store the readings
- Calculate min/max/average temperatures
- Flag any readings that are outside expected ranges (like if it's suddenly way too hot or cold)
- Generate simple reports to the console
Provide only the code.

### Results with qwen-coder-2.5 32b

**No context**
```
```

**Mojo Only**
```
```

**Mojo & Python**
```
```

**Mojo & TypeScript**
```
```

**Mojo & Go**
```
```

**Four Languages**
```
```
