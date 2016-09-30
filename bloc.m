classdef bloc < matlab.mixin.Heterogeneous
    properties(GetAccess = 'public', SetAccess = 'private')
        l
        r
        m
        cm
    end
    methods
        function obj = bloc(l,r,m,cm)
            obj.l =l;
            obj.r =r;
            obj.m = m;
            obj.cm = cm;
        end
    end
    methods (Sealed = true) 
        function obj = rotate(obj,r)            
            obj.cm = obj.cm*angle2dcm(r);
        end     
        function I = inertiazyx(obj,z,y,x)
            d = [z y x] - obj.cm;
            I =  obj.Inertia() + obj.m*translation(d(3),d(2),d(1));
        end
    end
    methods(Abstract)
        Inertia(obj);
    end
end

function T = translation( x,y,z )
T = [(y^2 + z^2),-x*y,-x*z;
    -y*x,(x^2 + z^2),-y*z;
    -x*z,-y*z,(y^2 + x^2)];
end