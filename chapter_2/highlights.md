# Chapter 2 Highlights

## Small Step Operational Semantics

We evaluate an expression in a language by reducing it step by step into simple expressions. Consider BODMAS, where we take an expression like:

```
3 * (8 - 5) + 1
```

and evaluate it step by step as:

1. 3 * **(8 - 5)** + 1 -> 3 * 3 + 1
2. **3 * 3** + 1 -> 9 + 1
3. **9 + 1** -> 10

In each step of the process, we take an expression, consider if we can reduce it to a simpler form, and then proceed by taking one step towards that more primitive form. 

