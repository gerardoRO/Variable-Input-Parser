%% A defined function will run with default inputs

Example1()

%% Easy to update any desired default input

Example1('value2',4)


%% You can pass multiple values in any order
Example1('value2',8,'string2','worst')

Example1('string2','worst','value2',8)

%% You can also pass all of the inputs as a different structure
new_values.value2 = 2;
new_values.string1 = 'California';

Example1(new_values)

%% Example function
function out_string = Example1(varargin)

FIELDS  = {'value1','value2','string1','string2'}; %define name of defaults
VALUES =  {5,2,'Minnesota','best'}; %define value of the defaults 

LOCAL_DEFINITIONS = [FIELDS ; VALUES];
vars = struct(LOCAL_DEFINITIONS{:}); %generate a structure of the default values
vars = vararginReader(varargin,vars); %update any default values that are passed


multiply = vars.value1 *vars.value2;
out_string = sprintf('%s is the %s! By a factor of %2.1i',vars.string1,vars.string2,multiply);
end