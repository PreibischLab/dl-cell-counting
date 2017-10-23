idx=201; 
ext=".png"
for file in cells*; 
do 
	fromi=$file # from cells
	toi=$(printf "%03dcell$ext\n" "$idx"); # to cells  
	froml="dots_"${file#*_}; # from labels 
	tol=$(printf "%03ddots$ext\n" "$idx"); # to labels
 
	mv $fromi $toi
	mv $froml $tol

	((idx++)); 
done
