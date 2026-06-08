---
marp: true
---

<!-- _class: title -->
# Introduction to R
BIO 211: Biostatistics
An Nguyen

---

# Me
- PhD student in the Ecology & Evolution department
- Population genetics!
- Contact me at **an.nguyen.3@stonybrook.edu**
    - I'll usually respond quickly assuming normal work hours

---
# Goals for Recitation
- Learn the basics of R to carry with you through your career, regardless of what this career may be
- Apply R to better understand statistical concepts in the Real World

---

# Expectations...
- For you
    - Turn in your work on time
    - Avoid generative A.I.
    - Be communicative with me
- For me
    - Provide clear explanations and assignments
    - Email you back in time for any pertinent issues
    - Return grades to you within 48 hours

---

# What *is* R?
R is a statistical language specifically for data analysis, statistics, and generating figures
- Let's now download R and RStudio  together!

---

# Housekeeping
- How to open up a normal `.R` file and `.Rmd` file
- How to stay organized with **projects** and **setting your working directory**

---
# Arithmetic
We can use R like a calculator. Imagine if you were writing a problem into a site like Wolframalpha or Desmos -- it's just like that.
```r
# We can make "comments" by writing out a pound or hashtag in front of your text
# Keep an eye out for when I make comments to you!

3 + 4
```
The number of spaces doesn't matter, nor does indentation.
```r
# These are both the same
3 +         4
        3 + 4
```

---
# Arithmetic
We can evaluate more complex functions using a `function`. To utilize them, we'll pass an `argument` or multiple arguments through our function. 
```r
sqrt((3^3) / (4-1))
```
In this case, the function `sqrt()` takes the square root of its arguments (some numerical value).

If you forget what a function does or want to see what it does, we can put a question mark in front of it to view the documentation.
```r
?sqrt
```

---
# Data Types
**Integer**: some numeric value
**String**: text
**Vector**: a list of items which are of the same type of data
```r
# A vector of integers
c(34, 56, 93)

# A vector of strings. Note the quotes which "store" this text and retain their status as text.
c("flygon", "ninetales", "gallade")
```
---

# Data Types - Assigning 
We can assign our data names as well through `<-` or `=`
```r
# Assigning the number 5 to an arbitrary name
woohoo <- 5

# We can see what this looks like by writing the name of the assignment out again 
woohoo

# Assigning the vector to the name "pokemon"
pokemon <- c("flygon", "ninetales", "gallade") 
```

---
# Data Types - Assigning 
We can also pass assigned data through functions.
```r
# Instead of doing...
mean(c(3, 4, 5))
sd(c(3, 4, 5))

# We can do...
x <- c(3, 4, 5)
mean(x)
sd(x)

# We could even assign these output values a name!
mean_x <- mean(x)
```

---
# Data Frames
We can store multiple rows/columns of data in data frames.
```r
df <- data.frame(
    first_variable = c("a", "b", "c"),
    second_variable = c(10, 20, 30)
)
```
Note the parantheses and the commas!

--- 

# Data Frames - Accessing Data
We can also pull specific rows/columns or boxes of data from data frames as well using brackets, `[rows, columns]`.
```r
# pulling the second row of the data frame
party[2, ]

# pulling the second column of the data frame. both of these do the same thing!
party[, 2]
level <- party[, "level"]

# pulling the data from the second row, second column
party[2, 2]
```

---

# Data Frames - Accessing Data
When specifically pulling columns, you can also use `$`, which I find to be much easier.
```r
party$level
```
You can `tab` once you start typing and then scroll through your options.

---

# Aside: Accessing Data
We can do something similar with vectors, where we may want to index for a particular value, similarly using brackets.
```r
# in this case, we're getting the value in the second position of the pokemon vector
pokemon[2]
```
---

# Try It Yourself!
Answer the questions in the Markdown file using the table below.

| Name   | Age | Favorite Fruit |
|--------|-----|----------------|
| An     | 23  | Mango          |
| Angelo | 24  | Apple          |
| Aiden  | 21  | Pineapple      |