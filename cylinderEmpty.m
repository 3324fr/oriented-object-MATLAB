classdef cylinderEmpty < bloc
    methods
        function obj = cylinderEmpty(l,r,m,cm)
            obj@bloc(l,r,m,cm);
        end
        function I = inertia(obj)
            I = obj.m*[1*obj.r^2 0 0;
                0 (1/12)*(6*obj.r^2+obj.l^2) 0;
                0 0 (1/12)*(6*obj.r^2+obj.l^2)];
        end
    end
end