
InstallGlobalFunction( TestCompileAllFunctions,
function()
    local res, n, f, x, i, v;

    res := rec();
    for n in NamesGVars() do
        if IsBoundGlobal(n) then
            v := ValueGlobal(n);
            if IsFunction(v) and not IsKernelFunction(v) then
                res.(n) := SYNTAX_TREE(v);
            elif IsOperation(v) then
                res.(n) := [];
                for i in [1..6] do
                    res.(n)[i] := [];
                    for x in METHODS_OPERATION(v, i) do
                        if IsFunction(x) and not IsKernelFunction(v) then
                            Add(res.(n)[i], SYNTAX_TREE(x));
                        fi;
                    od;
                od;
            fi;
        fi;
    od;
    return res;
end);
