% Copyright 2020 - 2020 The MathWorks, Inc.

classdef simpleClass < handle
    
    properties (SetAccess = private)
        x % input variable
        y % input variable
    end
    
    properties (Access = private)
        z % result variable
    end
    
    methods
        function this = simpleClass()
            this.x = []; this.y = []; % constructor
        end
        
        function setInput(this, varargin) % set x and y
            input = varargin{1};
            this.x = input(:,1);
            this.y = input(:,2);
        end
        
        function result = getResult(this) % get result
            result = this.z;
        end
        
        function status = compute(this) % compute distance between x and y
%             try             % Uncomment to see the error in Code Generation Readiness review
                this.z = ((this.y(1)-this.x(1))^2+(this.y(2)-this.x(2))^2)^0.5;
                status = true;
%             catch           % Uncomment to see the error in Code Generation Readiness review
%                 status = false;
%             end
        end
        
        function [sx,varargout] = sizeX(this) % get size
            nout = max(nargout,1) - 1;
            sx = size(this.x);
            for k = 1:nout
                varargout{k} = sx(k); %#ok
            end
        end
        
    end
    
end
