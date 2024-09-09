# HW3_FC

# Objective: Visualization of Reflection and Refraction of Elastic Waves in a 1D Heterogeneous Elastic Medium

Building upon the program constructed together in the lab meeting, create a program that achieves the following:

## Requirements

1. Simulate an elastic medium with 100 oscillators.
2. The first 50 oscillators will have a mass `m1`, different from the mass `m2` of the next 50 oscillators.
3. The first 50 springs will have an elastic constant `k1`, different from the constant `k2` of the next 50 springs.
4. The right-hand end will be fixed (`etad=0`).
5. At the left-hand end, a single "semi-wave" pulse of sinusoidal type will be introduced. This means a single semi-oscillation of harmonic type (`etas` starts to grow sinusoidally at `ti=0` until amplitude, then decreases to zero and remains at zero for the rest of the time).
6. Visualize the dynamics of the pulse propagation towards the middle of the medium, the appearance of the reflected pulse, and the refracted pulse.
7. Try to understand the relationship between the pulse propagation velocity and the quantities `m` and `k` specific to each medium.

## Implementation

To achieve the above requirements, you can use the following steps:

1. Initialize the medium with 100 oscillators, where the first 50 have `m1` and `k1`, and the next 50 have `m2` and `k2`.
2. Set the right-hand end to be fixed (`etad=0`).
3. Introduce a single "semi-wave" pulse of sinusoidal type at the left-hand end.
4. Simulate the propagation of the pulse towards the middle of the medium, observing the appearance of the reflected and refracted pulses.
5. Analyze the relationship between the pulse propagation velocity and the quantities `m` and `k` specific to each medium.

To visualize the dynamics, you can use a plotting library like `matplotlib` in Python or a similar visualization tool.

The key aspects to consider in the implementation are:

- Defining the appropriate initial conditions and boundary conditions for the problem.
- Implementing the equations of motion for the oscillators, taking into account the different masses and spring constants.
- Handling the reflection and refraction of the pulse at the interface between the two media.
- Visualizing the propagation of the pulse, the reflected pulse, and the refracted pulse over time.
- Analyzing the relationship between the pulse propagation velocity and the quantities `m` and `k` specific to each medium.

By completing this task, you will gain a better understanding of the behavior of elastic waves in a heterogeneous medium and the phenomena of reflection and refraction.
