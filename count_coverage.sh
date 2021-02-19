#bin/bash

#mkdir -p output/100kb
#mkdir -p output/500kb
#mkdir -p output/10kb

#bedtools makewindows -g Banana_chromosome_file -w 10000 > output/window_file_10kb
#bedtools makewindows -g Banana_chromosome_file -w 100000 > output/window_file_100kb
#bedtools makewindows -g Banana_chromosome_file -w 500000 > output/window_file_500kb

cat list_of_banana_samplenames | \
parallel -j 1 \
bedtools coverage -sorted -a output/window_file_100kb \
-b ~/data/banana/TR4_SEQ2020/Analysis_Feb2021/dna-proto-workflow/output/alignments/samples/bwa/GCF_000313855.2_ASM31385v2_genomic_plus_chloroplast/{}.bam \
\> output/100kb/coverage_100kb_{}.out

cat list_of_banana_samplenames | \
parallel -j 1 \
bedtools coverage -sorted -a output/window_file_500kb \
-b ~/data/banana/TR4_SEQ2020/Analysis_Feb2021/dna-proto-workflow/output/alignments/samples/bwa/GCF_000313855.2_ASM31385v2_genomic_plus_chloroplast/{}.bam \
\> output/500kb/coverage_500kb_{}.out

cat list_of_banana_samplenames | \
parallel -j 1 \
bedtools coverage -sorted -a output/window_file_10kb \
-b ~/data/banana/TR4_SEQ2020/Analysis_Feb2021/dna-proto-workflow/output/alignments/samples/bwa/GCF_000313855.2_ASM31385v2_genomic_plus_chloroplast/{}.bam \
\> output/10kb/coverage_10kb_{}.out
