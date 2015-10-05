function eps=epsbk7(lambda)

a=[190.75,193.73,196.8,199.98,203.25,206.64,210.14,213.77,217.52,221.4,225.43,229.6,233.93,238.43,243.11,247.97,253.03,258.3,263.8,269.53,275.52,281.78,288.34,295.2,302.4,309.96,317.91,326.28,335.1,344.4,354.24,364.66,375.71,387.45,399.95,413.28,427.54,442.8,459.2,476.87,495.94,516.6,539.0700000000001,563.5700000000001,590.41,619.9299999999999,652.55,688.8099999999999,729.3200000000001,774.91,826.5700000000001,885.61,953.73,1033.21,1127.14,1239.85];
ea=[2.8406742849,2.804261715649,2.770563579001,2.739329528464,2.710376127684,2.683571461921,2.658732435844,2.635706792196,2.614339739664,2.594480126121,2.575996110081,2.558755351321,2.542647106624,2.527572147556,2.513432915161,2.500146004225,2.487638700625,2.475842457361,2.464692764356,2.4541415649,2.444132010384,2.434623467584,2.425575745476,2.416958387649,2.4087350401,2.400878973529,2.393369890704,2.386181504529,2.379296995009,2.372696606736,2.366369966601,2.360300650929,2.354472356041,2.348881151236,2.343513969316,2.3383608889,2.333415112704,2.328666844009,2.324109397009,2.319733086489,2.315534369344,2.311503651769,2.307628351744,2.303905051044,2.300324289124,2.296867553764,2.2935285136,2.290285730161,2.287120856329,2.284009554436,2.2809154729,2.277793303696,2.274585797929,2.271202716601,2.267514953929,2.263330686969];  

eps=interp1(a,ea,lambda);
end
