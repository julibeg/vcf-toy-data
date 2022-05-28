#!/bin/bash

bcftools csq toy.vcf -f toy.fa -g toy.gff -B1 |
    bcftools query \
        -f "%POS,%REF,%ALT,%INFO/BCSQ[\n\t%SAMPLE:%GT:%BCSQ]\n"
