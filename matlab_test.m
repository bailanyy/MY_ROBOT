ML1 = Link([0   0 0     pi/2      0     ],'modified');

ML2 = Link([0 0     1    0     0   ],'modified');

ML3 = Link([0 0     1     0     0     ],'modified');

rob = SerialLink([ML1 ML2 ML3],'name','modified');

rob.tool=[eye(3),[1;0;0];0 0 0 1];

rob.plot([40,20,30]/180*pi,'scale',0.5,'delay',0.00001)

P=rob.fkine([-23.23,20,30]/180*pi);

Trans2X(P)