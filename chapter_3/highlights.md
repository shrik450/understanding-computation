# Chapter 3 Highlights

## DFA

A DFA is a collection of states and hardcoded rules for transitions between states. The state of the system is internal to the DFA itself and cannot be observed. Any "output" from the system happens via special states, and the output is whether the system is in the special state or not.

## Determinism

The following conditions must be satisfied for determinism:

- Every possible input must have a rule in every possible state
- No state must have more than one rule for any possible input

