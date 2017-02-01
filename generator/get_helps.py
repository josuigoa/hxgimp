#! /usr/bin/env python
import sys
import gimpfu

sys.stdout = open( 'd:\\neria\\gimp_help_output.txt', 'w')

def pdf_exp(timg, tdrawable):
    gimpfu.pdb.gimp_message("*** KAIXO MUNDUA ***")
    gimpfu.pdb.gimp_procedural_db_dump('c:\gimp_procedural_db_dump.txt')
    print('Gimp')
    print(help(gimpfu))
 
gimpfu.register(
    "pdf_exp", 
    "definition text",
    "help text",
    "creator",
    "copyright owner",
    "date",
    "<Image>/PDB/PDB export",
    "*",
    [
    ],
    [],
    pdf_exp
    )
 
gimpfu.main()