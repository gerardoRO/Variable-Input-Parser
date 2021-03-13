# Variable-Input-Parser
Matlab function that assists in the parsing of inputs for custom functions. Allows rapid implementation of default variable, and random ordered inputs.

This function is meant to be called early on the implementation of a custom function, with inputs a pre-defined structure and varargin. The pre-defined structure should include as fields any parameters that are desired by the creator to be modified via the inputs to the custom function. The output is a structure with either the same values of the pre-defined structure, or updated values chosen by varargin.

This function relies on inputs being passed in the Matlab format of NAME,VALUE in which the NAME of the variable is passed as a string followed by VALUE. However, it can also take as input a structure in which the fields consist of the NAME and the corresponding VALUES.

Included is a .m file showing examples on how this function can be implemented.
