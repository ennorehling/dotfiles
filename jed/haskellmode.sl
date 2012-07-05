%written by Marcin 'Qrczak' Kowalczyk
%qrczak@kki.net.pl

$1 = "haskell";

create_syntax_table ($1);
define_syntax ("{-", "-}", '%', $1);
define_syntax ("--", "", '%', $1);
define_syntax ("([{", ")]}", '(', $1);
define_syntax ('"', '"', $1);
define_syntax ('\\', '\\', $1);
define_syntax ("0-9a-zA-Z_'", 'w', $1);
define_syntax ("-+0-9a-fA-F.xXoO", '0', $1);
define_syntax (",:;`=\\|@~", ',', $1);
define_syntax ('#', '#', $1);
define_syntax ("!#$%&*+./<>?^-", '+', $1);
set_syntax_flags ($1, 4);

%() = define_keywords ($1, "_", 1);
%() = define_keywords ($1, "doifinof", 2);
%() = define_keywords ($1, "let", 3);
%() = define_keywords ($1, "casedataelsethentype", 4);
%() = define_keywords ($1, "classinfixwhere", 5);
%() = define_keywords ($1, "importinfixlinfixrmodule", 6);
%() = define_keywords ($1, "defaultnewtype", 7);
%() = define_keywords ($1, "derivinginstance", 8);

() = define_keywords ($1, "_", 1);
() = define_keywords ($1, "doifinof", 2);
() = define_keywords ($1, "let", 3);
() = define_keywords ($1, "casedataelsethentype", 4);
() = define_keywords ($1, "_scc_ccallclassinfixlabelwhere", 5);
() = define_keywords ($1, "_casm__ccallexportforallimportinfixlinfixrmodulepascalunsafe", 6);
() = define_keywords ($1, "_ccall__pascaldefaultdynamicforeignnewtypestdcall", 7);
() = define_keywords ($1, "_stdcallderivinginstance", 8);
() = define_keywords ($1, "_casm_GC_", 9);
() = define_keywords ($1, "_ccall_GC_", 10);

define haskell_mode ()
{
    variable kmap = "haskell";
    set_mode (kmap, 4);
    use_syntax_table (kmap);
    runhooks ("haskell_mode_hook");
}
