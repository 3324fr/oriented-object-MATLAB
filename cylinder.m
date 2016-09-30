classdef cylinder < bloc
    methods
        function obj = cylinder(l,r,m,cm)
            obj@bloc(l,r,m,cm);
        end
        function I = inertia(obj)
            I = obj.m*[obj.r^2/2 0 0;
                0 (1/12)*(3*obj.r^2+obj.l^2) 0;
                0 0 (1/12)*(3*obj.r^2+obj.l^2)];
        end
    end
end