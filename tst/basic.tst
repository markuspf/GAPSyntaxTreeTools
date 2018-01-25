gap> for n in NamesGVars() do
>        if IsBoundGlobal(n) then
>            v := ValueGlobal(n);
>            if IsFunction(v) and not IsKernelFunction(v) then
>                #   Print("Testing: ", n, "...\c");
>                SYNTAX_TREE(v);
>                #   Print("done\n");
>            elif IsOperation(v) then
>                for i in [1..6] do
>                    for x in METHODS_OPERATION(v, i) do
>                        if IsFunction(x) and not IsKernelFunction(v) then
>                        Print(x, "\c\n");
>                        SYNTAX_TREE(x);
>                        fi;
>                    od; 
>                od;
>            fi;
>        fi;
> od;;
