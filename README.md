## Overview:
This repository contains a NetLogo model that extends the classic 3-species Rock–Paper–Scissors (RPS) system into a 5-species Rock–Paper–Scissors–Lizard–Spock (RPSLS) system.
The model simulates spatial competition on a 2D grid where organisms interact via:
- Selection 
- Reproduction
- Movement
Event counts are generated using Poisson-distributed rates, allowing precise control over how frequently each process occurs.

## Features
- Adjustable swap, reproduce, and select-rate-exponents
- Optional global reshuffle selector
- Spatial grid with neighbour-based interactions
- Full NetLogo source code and documentation

## Dominance Rules (RPSLS)
- Rock (red) beats Scissors & Lizard
- Paper (green) beats Rock & Spock
- Scissors (blue) beats Paper & Lizard
- Lizard (yellow) beats Paper & Spock
- Spock (cyan) beats Rock & Scissors

## How the Model Works
Each patch can hold one species or be blank.
At each tick, the model generates three event lists:
- Select events
- Reproduce events
- Swap events 
Each is sampled from a Poisson distribution with mean:

  count patches * 10 ^ rate-exponent

Events are combined, shuffled, and executed in random order, preserving stochastic behaviour.

## How to Run the Model
Install NetLogo (version 6.x recommended).
Clone or download this repository.
Open the .nlogo file in NetLogo.
Click SETUP, then GO.

## Visualisation of the Data
- The plot shows the changes in the patch population of each patch over time.
- Heatmap shows the patch spatial distribution.
- 
