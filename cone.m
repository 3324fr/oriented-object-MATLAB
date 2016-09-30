classdef cone < bloc    
    methods
        function obj = cone(l,r,m,cm)
            obj@bloc(l,r,m,cm);
        end
        function I = inertia(obj)
            I = obj.m* [(3/10)*obj.r^2 0 0;
                0 (1/80)*(12*obj.r^2+3*obj.l^2) 0;
                0 0 (1/80)*(12*obj.r^2+3*obj.l^2)];
        end
    end
end