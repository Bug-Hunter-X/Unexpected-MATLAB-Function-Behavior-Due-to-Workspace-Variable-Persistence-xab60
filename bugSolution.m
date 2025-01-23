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

%Solution: clear variables explicitly between calls.
function finalResult = anotherFunction()
    input1 = 5;
    input2 = 15;
    result1 = myFunction(input1);
    clear input1; % Clear variable before next call
    result2 = myFunction(input2);
    clear input2; % Clear variables for good practice
    finalResult = result1 + result2;
    clear result1 result2;
end