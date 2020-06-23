% Copyright 2020 - 2020 The MathWorks, Inc.

function result = myAlg(input)

sClass = simpleClass();
setInput(sClass, input);
sClass.compute;
result = getResult(sClass);

end
