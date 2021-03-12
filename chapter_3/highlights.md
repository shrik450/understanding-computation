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

