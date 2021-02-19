#bin/bash
cat list_of_banana_samplenames | \
parallel -j 1 \
bedtools coverage -a output/Banana_window_file_100kb \
-b ~/data/banana/TR4_SEQ2020/Analysis_Feb2021/dna-proto-workflow/output/alignments/samples/bwa/GCF_000313855.2_ASM31385v2_genomic_plus_chloroplast/{} \
\> output/100kb/coverage_100kb_{}.out

#cat list_of_samplenames | \
#parallel -j 1 \
#bedtools coverage -a Sorghum_window_file_500kb \
#-b ~/Analysis/datasets/IAEA_sorghum_WGS_run_1/ngm_bam/{}_Sbicolor_313_v3.0.fa.bam \
#\> 500kb/coverage_500kb_{}.out

#cat list_of_samplenames | \
#parallel -j 1 \
#bedtools coverage -a Sorghum_window_file_10kb \
#-b ~/Analysis/datasets/IAEA_sorghum_WGS_run_1/ngm_bam/{}_Sbicolor_313_v3.0.fa.bam \
#\> 10kb/coverage_10kb_{}.out
