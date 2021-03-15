# Chapter 3 Highlights

## DFA

A DFA is a collection of states and hardcoded rules for transitions between states. The state of the system is internal to the DFA itself and cannot be observed. Any "output" from the system happens via special states, and the output is whether the system is in the special state or not.

## Determinism

The following conditions must be satisfied for determinism:

- Every possible input must have a rule in every possible state
- No state must have more than one rule for any possible input

## Nondeterminism

Relaxing the two constraints gives automata that can be more powerful. Since it is no longer guaranteed that every input string can end up in a final state, a string is accepted by a NFA if it is *possible* for it to end up in an accept state by any combination of rules in the NFA.

While an implementation of a DFA keeps track of its current state, an implementation of an NFA would have to keep track of all possible states it could be in.

If an NFA has no input rule matching an alphabet in its initial state, it doesn't accept any string starting with the alphabet. The key factor here is that acceptance is based on whether it's *possible* for the NFA to get to the end, and in this case it's not. The way it works out in implementation is that the set of possible states becomes phi.

## Regexes

Five main rules:

- Empty: matches the empty string
- Literal: matches the literal
- Concatenation: matches two expressions one after the other
- Or: matches either of two expressions
- Multiple: matches either empty or the expression repeated as many times as required

## Implementing Regexes

We use a denotational semantics of Regexes. Regex -> NFA. We already know how to run NFAs, so we can implement regexes this way.

- Empty: The NFA with only one state, the accept state.
- Literal: An NFA with a start state, an accpet state, and one rule that accepts the literal and transitions to the accept state.

The other semantics use free moves to combine together the above two NFAs:

- Concatenation: Free move from the accept states of the first expression to the start state of the second expression
- Or: Free moves from a new start state to the start states of both expressions
- Multiple: Free moves from the accept states of the expression to a new start state and a free move from the new start state to the start state of the expression.

The new start state for multiple is required to get the correct NFA in cases like `(a*b)*` (If you don't make a new one, it'll match `aaaaaa` etc.)

