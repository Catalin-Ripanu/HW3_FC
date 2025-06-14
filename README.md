# Elastic Wave Reflection and Refraction

## Objective
Visualize the reflection and refraction of elastic waves in a 1D heterogeneous elastic medium, building upon the program constructed in the lab meeting.

## System Description
The simulation models a heterogeneous elastic medium consisting of 100 coupled oscillators with different material properties in two distinct regions.

## Requirements

### Physical Setup
1. **Medium Structure**: 100 oscillators total
   - **First 50 oscillators**: Mass `m1`, connected by springs with constant `k1`
   - **Next 50 oscillators**: Mass `m2`, connected by springs with constant `k2`

2. **Boundary Conditions**:
   - **Right-hand end**: Fixed boundary (`eta_d = 0`)
   - **Left-hand end**: Driven by sinusoidal pulse input

3. **Input Signal**:
   - Single "semi-wave" pulse of sinusoidal type
   - `eta_s` grows sinusoidally from `t = 0` to maximum amplitude
   - Then it decreases to zero and remains zero for the rest of the simulation
   - Represents one half-period of harmonic oscillation

### Simulation Goals
4. **Wave Propagation Visualization**:
   - Pulse propagation toward the medium interface
   - Formation and propagation of reflected pulse
   - Formation and propagation of refracted (transmitted) pulse

5. **Analysis Requirements**:
   - Understand the relationship between wave velocity and material properties (`m` and `k`)
   - Observe wave behavior at the material interface
   - Analyze reflection and transmission coefficients

## Implementation Steps

### 1. System Initialization
- Create a 100-oscillator array with heterogeneous properties
- Define the material interface at oscillator 50
- Set appropriate initial conditions (all oscillators at rest)

### 2. Boundary Conditions Setup
- **Left boundary**: Implement sinusoidal pulse driver
- **Right boundary**: Fix displacement (`eta_d = 0`)

### 3. Pulse Generation
- Generate a single semi-wave sinusoidal pulse
- Control pulse duration and amplitude
- Ensure smooth pulse injection

### 4. Dynamics Simulation
- Implement equations of motion for coupled oscillators
- Account for different masses and spring constants
- Use an appropriate numerical integration method
- Handle interface conditions properly

### 5. Visualization
- Real-time animation of oscillator displacements
- Track pulse propagation, reflection, and refraction
- Plot displacement vs. position over time
- Include material property indicators

### 6. Analysis
- Calculate wave velocities in each medium
- Determine reflection and transmission coefficients
- Verify theoretical relationships: `v = √(k/m)`

## Key Physics Concepts

### Wave Velocity
The wave velocity in each medium is given by:
```
v₁ = √(k₁/m₁)  (first medium)
v₂ = √(k₂/m₂)  (second medium)
```

### Interface Phenomena
- **Reflection**: Portion of the wave bounces back into the first medium
- **Refraction**: Portion of the wave transmits into a second medium
- **Impedance matching**: Determines reflection/transmission ratios

### Theoretical Predictions
- Reflection coefficient: `R = (Z₂ - Z₁)/(Z₂ + Z₁)`
- Transmission coefficient: `T = 2Z₂/(Z₂ + Z₁)`
- Where `Z = √(mk)` is the mechanical impedance

## Expected Observations

### Visual Results
- Initial pulse propagation in the first medium
- Partial reflection at the interface (pulse traveling leftward)
- Partial transmission into a second medium (possibly different velocity)
- Multiple reflections from the fixed right boundary

### Quantitative Analysis
- Measure wave velocities in both media
- Compare with theoretical predictions
- Analyze amplitude ratios of reflected/transmitted waves

## Implementation Considerations

### Numerical Aspects
- Choose an appropriate time step for stability
- Handle discontinuity at the material interface
- Ensure energy conservation (within numerical limits)

### Visualization Features
- Color coding for different media regions
- Real-time displacement plotting
- Optional: Energy density visualization
- Interface position marking

### Parameter Selection
- Choose `m₁`, `m₂`, `k₁`, `k₂` for clear wave behavior demonstration
- Pulse frequency should be appropriate for the system response
- Simulation duration should capture multiple reflections

## Success Criteria
- Clear visualization of incident, reflected, and transmitted pulses
- Quantitative agreement with theoretical wave velocities
- Demonstration of wave impedance effects at the interface
- Understanding of the relationship between material properties and wave behavior
