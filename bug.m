function result = myFunction(input)
  % Some code here
  if input > 10
    result = input * 2;
  else
    result = input / 2;
  end
  % Some more code here
end

%Example usage
input = 5;
result = myFunction(input); %This will give correct result
input = 15;
result = myFunction(input); %This will also give correct result

%However, if you use this function in another function and call it many times
%You may encounter unexpected result and errors. This is because of how Matlab
%manages the workspace. When the function finishes executing, it doesn't always clear
%all variables, leading to unintended side effects.

function finalResult = anotherFunction()
    input1 = 5;
    input2 = 15;
    result1 = myFunction(input1);
    result2 = myFunction(input2);
    finalResult = result1 + result2; %This may lead to error or unexpected result
end