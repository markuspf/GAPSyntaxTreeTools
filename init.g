#
# GAPSyntaxTreeTools: Tools to handle GAP Syntax Trees
#
# Reading the declaration part of the package.
#
_PATH_SO:=Filename(DirectoriesPackagePrograms("GAPSyntaxTreeTools"), "GAPSyntaxTreeTools.so");
if _PATH_SO <> fail then
    LoadDynamicModule(_PATH_SO);
fi;
Unbind(_PATH_SO);

ReadPackage( "GAPSyntaxTreeTools", "gap/syntaxtree.gd");
ReadPackage( "GAPSyntaxTreeTools", "gap/GAPSyntaxTreeTools.gd");
