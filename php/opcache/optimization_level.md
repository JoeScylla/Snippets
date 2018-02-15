`opcache.optimization_level`
====================================================================================================

 - bit 0 - pass 1:
     - [CSE][1] - constants subexpressions elimination
     - Sequences of ADD_CHAR/ADD_STRING optimization
     - convert CAST(IS_BOOL,x) into BOOL(x)
     - convert [INTI_FCALL_BY_NAME][5] + [DO_FCALL_BY_NAME][6] into [DO_FCALL][7]
 - bit 1 - pass 2:
     - Convert constant operands to expected types
     - Convert conditional [JMP][4] with constant operands
     - Optimize static [BRK][2] and [CONT][3]
 - bit 2 - pass 3:
     - Convert $a = $a + expr into $a += expr
     - Convert $a++ into ++$a
     - Optimize series of [JMP][4]s
 - bit 3 - pass 4:
     - PRINT and ECHO optimization - [removed][10]
 - bit 4 - pass 5:
     - block optimization (the most expensive optimization pass which perform many different optimization patterns based on CFG - [control flow graph][8])
 - bit 8 - pass 9:
     - register [allocation][9] (allows re-usage of temporary variables)
 - bit 9 - pass 10:
     - remove NOPs

Information from https://github.com/zendtech/ZendOptimizerPlus/blob/master/Optimizer/zend_optimizer.c and https://gist.github.com/ck-on/4959032?ocp.php

[1]: http://wikipedia.org/wiki/Common_subexpression_elimination
[2]: http://php.net/manual/internals2.opcodes.brk.php
[3]: http://php.net/manual/internals2.opcodes.cont.php
[4]: http://php.net/manual/internals2.opcodes.jmp.php
[5]: http://php.net/manual/internals2.opcodes.init-fcall-by-name.php
[6]: http://php.net/manual/internals2.opcodes.do-fcall-by-name.php
[7]: http://php.net/manual/internals2.opcodes.do-fcall.php
[8]: http://wikipedia.org/wiki/Control_flow_graph
[9]: http://wikipedia.org/wiki/Register_allocation
[10]: https://github.com/zend-dev/ZendOptimizerPlus/issues/73