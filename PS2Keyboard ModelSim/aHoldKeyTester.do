##############################################################################
# aHoldKeyTester.do
##############################################################################
add wave *
force reset_n 0 @ 0, 1 @ 400
force clk_50MHz 1 @ 0, 0 @ 1 -r 2

force clk_PS2 1 @ 000, 0 @ 509600, 1 @ 510100, 0 @ 510500, 1 @ 510900, 0 @ 511300, 1 @ 511700, 0 @ 512200, 1 @ 512600, 0 @ 513000, 1 @ 513400, 0 @ 513800, 1 @ 514200, 0 @ 514700, 1 @ 515100, 0 @ 515500, 1 @ 515900, 0 @ 516300, 1 @ 516800, 0 @ 517200, 1 @ 517600, 0 @ 518000, 1 @ 518400, 0 @ 5462400, 1 @ 5462900, 0 @ 5463300, 1 @ 5463700, 0 @ 5464100, 1 @ 5464500, 0 @ 5464900, 1 @ 5465400, 0 @ 5465800, 1 @ 5466200, 0 @ 5466600, 1 @ 5467000, 0 @ 5467500, 1 @ 5467900, 0 @ 5468300, 1 @ 5468700, 0 @ 5469100, 1 @ 5469500, 0 @ 5470000, 1 @ 5470400, 0 @ 5470800, 1 @ 5471200, 0 @ 6381600, 1 @ 6382000, 0 @ 6382400, 1 @ 6382800, 0 @ 6383300, 1 @ 6383700, 0 @ 6384100, 1 @ 6384500, 0 @ 6384900, 1 @ 6385400, 0 @ 6385800, 1 @ 6386200, 0 @ 6386600, 1 @ 6387000, 0 @ 6387400, 1 @ 6387900, 0 @ 6388300, 1 @ 6388700, 0 @ 6389100, 1 @ 6389500, 0 @ 6389900, 1 @ 6390400, 0 @ 7319200, 1 @ 7319600, 0 @ 7320000, 1 @ 7320500, 0 @ 7320900, 1 @ 7321300, 0 @ 7321700, 1 @ 7322100, 0 @ 7322500, 1 @ 7323000, 0 @ 7323400, 1 @ 7323800, 0 @ 7324200, 1 @ 7324600, 0 @ 7325100, 1 @ 7325500, 0 @ 7325900, 1 @ 7326300, 0 @ 7326700, 1 @ 7327100, 0 @ 7327600, 1 @ 7328000, 0 @ 8256200, 1 @ 8256600, 0 @ 8257000, 1 @ 8257400, 0 @ 8257900, 1 @ 8258300, 0 @ 8258700, 1 @ 8259100, 0 @ 8259500, 1 @ 8259900, 0 @ 8260400, 1 @ 8260800, 0 @ 8261200, 1 @ 8261600, 0 @ 8262000, 1 @ 8262500, 0 @ 8262900, 1 @ 8263300, 0 @ 8263700, 1 @ 8264100, 0 @ 8264500, 1 @ 8265000, 0 @ 9175600, 1 @ 9176000, 0 @ 9176400, 1 @ 9176900, 0 @ 9177300, 1 @ 9177700, 0 @ 9178100, 1 @ 9178500, 0 @ 9179000, 1 @ 9179400, 0 @ 9179800, 1 @ 9180200, 0 @ 9180600, 1 @ 9181000, 0 @ 9181500, 1 @ 9181900, 0 @ 9182300, 1 @ 9182700, 0 @ 9183100, 1 @ 9183500, 0 @ 9184000, 1 @ 9184400
force Data 1 @ 000, 0 @ 509400, 1 @ 512000, 0 @ 514500, 1 @ 517800, 0 @ 5462200, 1 @ 5464800, 0 @ 5467300, 1 @ 5470600, 0 @ 6381400, 1 @ 6383900, 0 @ 6386400, 1 @ 6389700, 0 @ 7319000, 1 @ 7321500, 0 @ 7324000, 1 @ 7327400, 0 @ 8256000, 1 @ 8258500, 0 @ 8261000, 1 @ 8264300, 0 @ 9175400, 1 @ 9177900, 0 @ 9180400, 1 @ 9183800

run 20000000