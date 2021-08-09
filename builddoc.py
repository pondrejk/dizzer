#!/usr/bin/python
#
# script to collect markdown chapters 
# and build a docx with references via
# pandoc
#
# requirements:
# - packages: pandoc, pandoc-citeproc
# - bibtex file with references
# - master docx for style reference

import os
import subprocess

filenames = ['chap1-definitions.md', 'chap2-carto_insight.md', 'chap3-vis_challenges.md', 'chap5-case_study_2.md', 'apx1-carto_research_challenges.md', 'apx3-application2.md']
pwd = os.getcwd()
outname = 'combined_build.md'
outpath = pwd + '/' + outname

with open(outpath, 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            for line in infile:
                outfile.write(line)

subprocess.run(f'pandoc -f markdown+inline_notes {outname} -o build/build.docx --bibliography=../Biblio/cartogis.bib --csl=../Biblio/csl/apa-5th-edition.csl --pdf-engine=xelatex --reference-doc=reference-b5.docx', shell=True, check=True)


