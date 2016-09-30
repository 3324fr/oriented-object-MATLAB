classdef submarine   
   properties (GetAccess = 'public', SetAccess = 'private')
        blocs
    end
    methods
         function obj = submarine(blocs)
            obj.blocs = blocs;
        end
        function cm = centerOfMass(obj)
            s = zeros(1,3);
            m = 0;
            for bloc  = obj.blocs 
                s = s +  bloc.m*bloc.cm;
                m = m + bloc.m;
            end
            cm = s/m;
        end
        function I = innertia(obj)
            I = zeros(3,3);
            cm  = centerOfMass(obj);
            for bloc  = obj.blocs 
                I = I + bloc.Inertiazyx(cm(1),cm(2),cm(3));
            end
        end
    end
end