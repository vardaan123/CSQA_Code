cp $1/params_test.py .
jbsub -mem 60g -queue $2 -cores 1+1 -proj test_gen -err $1/e_test_$3.txt -out $1/o_test_$3.txt -require k80 python run_test_twostep.py $1 $3
