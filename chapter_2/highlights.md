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

## Expressions vs Statements

Expressions -> Evaluate to a irreducible value.
Statement -> Evaluate to nothing, but change the environment.

## Assigns to variables or names?

In the text, the left hand side of an assignment is a name. But should it more appropriately be a variable?

## While and Reduction

Earlier, I said small step semantics operates by reducing expressions into simpler expressions. This isn't true in the case of a while statement, which get reduced to a statement that includes itself. So, to be more accurate, small step semantics operates by minimally reducing a statement.

## Big Step Semantics

While small step semantics describes the result of a statement or an expression by iteratively reducing it, Big Step semantics describes the full result of a statement or an expression at once. This is done by first recursively evaluating the subexpressions and then describing how the results of that evaluation are combined.

Small Step Semantics: AST -> Intermediate AST -> Result
Big Step Semantics: AST -> Result

