;@  Modified by Craig Scratchley, 2022, based partly on information from sources on the internet
                    .macro              GLOBFUNC  name:req,names:vararg 
                    .global             \name
                    .type               \name,%function
                    .ifnb               \names
                    GLOBFUNC            \names
                    .endif
                    .endm
                     
;@ *********************************************************************   
                  
                    .macro              FUNC  name:req,names:vararg
                    GLOBFUNC            \name,\names
                    .func               \name,\name
\name\():	nop	;@ "no-operation" -- the debugger seems to skip the first instruction in a subroutine.	
                    .endm

;@ *********************************************************************   

                    .macro              ENDFUNC  name:req
                    .pool
                    .size               \name,.-\name
                    .endfunc
                    .endm

;@ *********************************************************************   

                    .macro              GLOBOBJ  name:req,names:vararg
                    .global             \name
                    .type               \name,%object
                    .ifnb               \names
                    GLOBOBJ             \names
                    .endif
                    .endm
                   
;@ *********************************************************************                      
                   
                    .macro              OBJECT    name:req,names:vararg
                    GLOBOBJ             \name,\names
\name\():
                    .endm

;@ *********************************************************************   

                    .macro              ENDOBJ    name:req
                    .size               \name,.-\name
                    .endm

;@ *********************************************************************   

                    .macro              SECTION   name:req
                    .section            \name,"ax",%progbits
                    .endm

;@ *********************************************************************   

                    .macro              .rodata
                    .section            .rodata
                    .endm

