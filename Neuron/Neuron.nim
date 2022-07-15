import std/random

type
  LinearEquation = tuple[weights: seq[float], bias: float, activation: Activation]
  Activation = float

var
  myEquation: LinearEquation

myEquation = (weights: @[1.0], bias: 1.0, activation: 0.0)

proc createNeuron(input_shape: int): LinearEquation =
  var result_neuron: LinearEquation = (weights: @[], bias: random.gauss(), activation: 0.0)
  for i in 1..input_shape:
    result_neuron.weights.add(gauss())
  return result_neuron

proc iter(equation: LinearEquation, input: seq[float]): float =
  # Calculate the summation which would essentailly be the dot product of the 
  # input vector and the vector using the linear equation's weights
  var sum: float
  for i, value in equation.weights:
    sum += (value * input[i])

  # generate the final pre-activation value of the neuron
  var equation_output = sum + equation.bias

  # calculate and return value for activation
  if equation_output > equation.activation:
    return 1.0
  else:
    return 0.0

proc generate_input(size: int): seq[float] =
  var result_input: seq[float] 
  for i in 1..size:
    result_input.add(gauss())
  return result_input

var example_neuron: LinearEquation = createNeuron(3)

echo example_neuron

var input = generate_input(3)

echo "INPUT: ", input 

echo iter(example_neuron, input)