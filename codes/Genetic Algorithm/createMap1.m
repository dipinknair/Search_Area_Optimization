%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%
%

function map = createMap1
    
    env = [...
                 20,   0;...
                 65,   0;...
                 90,  50;...
                 70, 100;...
                 50, 115;...
                 18, 100;...
                  0,  50;...
                ];
    map.SearchSpacePolygon = polyshape(env(:,1),env(:,2));
    map.SearchPolygonArea  = area(map.SearchSpacePolygon);
            
    map.bxMin = 0;
    map.bxMax = 90;
    map.byMin = 0;
    map.byMax = 115;
    
    obst1 = [...
                    22,  70;...
                    28,  67;...
                    32,  73;...
                    25,  79;...
                    19,  75;...
                 ];
             
    obst2 = [...
                    58, 21;...
                    62, 22;...
                    65, 30;...
                    60, 35;...
                    55, 25;...
                 ];
             
    map.Obstacle1 = polyshape(obst1(:,1),obst1(:,2));
    map.Obstacle2 = polyshape(obst2(:,1),obst2(:,2));
    
    map.Obstacle1Area = area(map.Obstacle1);
    map.Obstacle2Area = area(map.Obstacle2);
    
    map.LandMarks     = [...
                        0 2;...
                        20 110;...
                        75 50;...
                        25 100;...
                        ];
                    
    map.NumLandMarks  = numel(map.LandMarks(:,1));
end