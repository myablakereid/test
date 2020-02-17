function state = stateOfWater(temperature)
%% Check the state of water

if temperature <= 0 
    state = 'solid';
elseif( temperature > 0 && temperature <= 100)
    state = 'liquid';
else
    state = 'gas';
end


