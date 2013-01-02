# makefile to build html files for DMD

DMD=dmd

SCP=cp
SCPDIR=..\backup

SRC= cpptod.dd ctod.dd pretod.dd cppstrings.dd cppcomplex.dd \
	cppdbc.dd index.dd overview.dd lex.dd module.dd dnews.dd \
	declaration.dd type.dd property.dd attribute.dd pragma.dd \
	expression.dd statement.dd arrays.dd struct.dd class.dd enum.dd \
	function.dd operatoroverloading.dd template.dd mixin.dd dbc.dd \
	version.dd errors.dd garbage.dd memory.dd float.dd iasm.dd \
	interface.dd portability.dd html.dd entity.dd \
	abi.dd windows.dd dll.dd htomodule.dd faq.dd \
	dstyle.dd wc.dd future.dd changelog.d glossary.dd \
	acknowledgements.dd dcompiler.dd builtin.dd interfaceToC.dd \
	comparison.dd rationale.dd \
	ddoc.dd code_coverage.dd exception-safe.dd rdmd.dd \
	templates-revisited.dd warnings.dd ascii-table.dd \
	windbg.dd htod.dd changelog1.dd \
	regular-expression.dd lazy-evaluation.dd \
	lisp-java-d.dd variadic-function-templates.dd howto-promote.dd \
	tuple.dd changelog2.dd template-comparison.dd template-mixin.dd \
	unittest.dd hash-map.dd \
	spec.dd intro.dd


DDOC=macros.ddoc doc.ddoc

IMG=dmlogo.gif cpp1.gif d002.ico c1.gif d3.gif d4.gif d5.gif

SRCS=$(SRC) style.css print.css $(DDOC) windows.ddoc linux.ddoc osx.ddoc freebsd.ddoc

TARGETS=cpptod.html ctod.html pretod.html cppstrings.html \
	cppcomplex.html cppdbc.html index.html overview.html lex.html \
	module.html dnews.html declaration.html type.html property.html \
	attribute.html pragma.html expression.html statement.html arrays.html \
	struct.html class.html enum.html function.html \
	operatoroverloading.html template.html mixin.html dbc.html \
	version.html errors.html garbage.html memory.html float.html iasm.html \
	interface.html portability.html html.html entity.html \
	abi.html windows.html dll.html htomodule.html faq.html \
	dstyle.html wc.html future.html changelog.html glossary.html \
	acknowledgements.html builtin.html interfaceToC.html \
	comparison.html rationale.html \
	ddoc.html code_coverage.html exception-safe.html rdmd.html \
	templates-revisited.html warnings.html ascii-table.html \
	windbg.html htod.html changelog1.html \
	regular-expression.html lazy-evaluation.html \
	lisp-java-d.html variadic-function-templates.html howto-promote.html \
	tuple.html changelog2.html template-comparison.html template-mixin.html \
	dmd-windows.html dmd-linux.html dmd-osx.html dmd-freebsd.html \
	unittest.html hash-map.html \
	spec.html intro.html


target: $(TARGETS)

.d.html:
	$(DMD) -o- -c -D $(DDOC) $*.d

.dd.html:
	$(DMD) -o- -c -D $(DDOC) $*.dd

dmd-linux.html : $(DDOC) linux.ddoc dcompiler.dd
	$(DMD) -o- -c -D $(DDOC) linux.ddoc dcompiler.dd -Dfdmd-linux.html

dmd-freebsd.html : $(DDOC) freebsd.ddoc dcompiler.dd
	$(DMD) -o- -c -D $(DDOC) freebsd.ddoc dcompiler.dd -Dfdmd-freebsd.html

dmd-osx.html : $(DDOC) osx.ddoc dcompiler.dd
	$(DMD) -o- -c -D $(DDOC) osx.ddoc dcompiler.dd -Dfdmd-osx.html

dmd-windows.html : $(DDOC) windows.ddoc dcompiler.dd
	$(DMD) -o- -c -D $(DDOC) windows.ddoc dcompiler.dd -Dfdmd-windows.html

abi.html : $(DDOC) abi.dd
	$(DMD) -o- -c -D $(DDOC) abi.dd

acknowledgements.html : $(DDOC) acknowledgements.dd

arrays.html : $(DDOC) arrays.dd
	$(DMD) -o- -c -D $(DDOC) arrays.dd

ascii-table.html : $(DDOC) ascii-table.dd
	$(DMD) -o- -c -D $(DDOC) ascii-table.dd

attribute.html : $(DDOC) attribute.dd
	$(DMD) -o- -c -D $(DDOC) attribute.dd

builtin.html : $(DDOC) builtin.dd

changelog.html : $(DDOC) changelog.d

changelog1.html : $(DDOC) changelog1.dd

changelog2.html : $(DDOC) changelog2.dd

class.html : $(DDOC) class.dd
	$(DMD) -o- -c -D $(DDOC) class.dd

code_coverage.html : $(DDOC) code_coverage.dd

comparison.html : $(DDOC) comparison.dd

cppdbc.html : $(DDOC) cppdbc.dd

cppcomplex.html : $(DDOC) cppcomplex.dd

cppstrings.html : $(DDOC) cppstrings.dd

cpptod.html : $(DDOC) cpptod.dd

ctod.html : $(DDOC) ctod.dd

dbc.html : $(DDOC) dbc.dd

ddoc.html : $(DDOC) ddoc.dd
	$(DMD) -o- -c -D $(DDOC) ddoc.dd

declaration.html : $(DDOC) declaration.dd
	$(DMD) -o- -c -D $(DDOC) declaration.dd

dll.html : $(DDOC) dll.dd

dnews.html : $(DDOC) dnews.dd

dstyle.html : $(DDOC) dstyle.dd
	$(DMD) -o- -c -D $(DDOC) dstyle.dd

entity.html : $(DDOC) entity.dd

enum.html : $(DDOC) enum.dd
	$(DMD) -o- -c -D $(DDOC) enum.dd

errors.html : $(DDOC) errors.dd

exception-safe.html : $(DDOC) exception-safe.dd

expression.html : $(DDOC) expression.dd
	$(DMD) -o- -c -D $(DDOC) expression.dd

faq.html : $(DDOC) faq.dd

float.html : $(DDOC) float.dd

function.html : $(DDOC) function.dd
	$(DMD) -o- -c -D $(DDOC) function.dd

future.html : $(DDOC) future.dd

garbage.html : $(DDOC) garbage.dd
	$(DMD) -o- -c -D $(DDOC) garbage.dd

glossary.html : $(DDOC) glossary.dd

hash-map.html : $(DDOC) hash-map.dd
	$(DMD) -o- -c -D $(DDOC) hash-map.dd

howto-promote.html : $(DDOC) howto-promote.dd

html.html : $(DDOC) html.dd

htod.html : $(DDOC) htod.dd

htomodule.html : $(DDOC) htomodule.dd
	$(DMD) -o- -c -D $(DDOC) htomodule.dd

iasm.html : $(DDOC) iasm.dd
	$(DMD) -o- -c -D $(DDOC) iasm.dd

interface.html : $(DDOC) interface.dd
	$(DMD) -o- -c -D $(DDOC) interface.dd

interfaceToC.html : $(DDOC) interfaceToC.dd
	$(DMD) -o- -c -D $(DDOC) interfaceToC.dd

intro.html : $(DDOC) intro.dd
	$(DMD) -o- -c -D $(DDOC) intro.dd

index.html : $(DDOC) index.dd
	$(DMD) -o- -c -D $(DDOC) index.dd

lazy-evaluation.html : $(DDOC) lazy-evaluation.dd

lex.html : $(DDOC) lex.dd
	$(DMD) -o- -c -D $(DDOC) lex.dd

lisp-java-d.html : $(DDOC) lisp-java-d.dd

memory.html : $(DDOC) memory.dd
	$(DMD) -o- -c -D $(DDOC) memory.dd

mixin.html : $(DDOC) mixin.dd

module.html : $(DDOC) module.dd
	$(DMD) -o- -c -D $(DDOC) module.dd

operatoroverloading.html : $(DDOC) operatoroverloading.dd
	$(DMD) -o- -c -D $(DDOC) operatoroverloading.dd

overview.html : $(DDOC) overview.dd

portability.html : $(DDOC) portability.dd

pragma.html : $(DDOC) pragma.dd
	$(DMD) -o- -c -D $(DDOC) pragma.dd

pretod.html : $(DDOC) pretod.dd

property.html : $(DDOC) property.dd
	$(DMD) -o- -c -D $(DDOC) property.dd

rationale.html : $(DDOC) rationale.dd

rdmd.html : $(DDOC) rdmd.dd

regular-expression.html : $(DDOC) regular-expression.dd

spec.html : $(DDOC) spec.dd
	$(DMD) -o- -c -D $(DDOC) spec.dd

statement.html : $(DDOC) statement.dd
	$(DMD) -o- -c -D $(DDOC) statement.dd

struct.html : $(DDOC) struct.dd
	$(DMD) -o- -c -D $(DDOC) struct.dd

template.html : $(DDOC) template.dd
	$(DMD) -o- -c -D $(DDOC) template.dd

template-comparison.html : $(DDOC) template-comparison.dd
	$(DMD) -o- -c -D $(DDOC) template-comparison.dd

template-mixin.html : $(DDOC) template-mixin.dd
	$(DMD) -o- -c -D $(DDOC) template-mixin.dd

templates-revisited.html : $(DDOC) templates-revisited.dd

tuple.html : $(DDOC) tuple.dd

type.html : $(DDOC) type.dd
	$(DMD) -o- -c -D $(DDOC) type.dd

unittest.html : $(DDOC) unittest.dd
	$(DMD) -o- -c -D $(DDOC) unittest.dd

variadic-function-templates.html : $(DDOC) variadic-function-templates.dd

version.html : $(DDOC) version.dd
	$(DMD) -o- -c -D $(DDOC) version.dd

warnings.html : $(DDOC) warnings.dd

wc.html : $(DDOC) wc.dd

windbg.html : $(DDOC) windows.ddoc windbg.dd

windows.html : $(DDOC) windows.ddoc windows.dd

zip:
	del doc.zip
	zip32 doc win32.mak $(SRCS)
	zip32 doc $(IMG) dcompiler.html

clean:
	del $(TARGETS)

detab:
	detab $(SRCS)

tolf:
	tolf win32.mak $(SRCS)

git: detab tolf win32.mak
	$(SCP) win32.mak $(SRCS) $(SCPDIR)/

