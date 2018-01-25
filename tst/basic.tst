gap> for n in NamesGVars() do
>        if IsBoundGlobal(n) then
>            v := ValueGlobal(n);
>            if IsFunction(v) and not IsKernelFunction(v) then
>                #   Print("Testing: ", n, "...\c");
>                SYNTAX_TREE(v);
>                #   Print("done\n");
>            fi;
>        fi;
> od;;
