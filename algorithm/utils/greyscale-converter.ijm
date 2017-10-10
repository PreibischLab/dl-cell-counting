// resave RGB images to the 8-bit (grayscale) images

// Close all open tif's 
close("*.tif");

// Define Input Folder
input = getDirectory("Select a Directory for import");
// Define Output Folder
output = getDirectory("Select a Directory for output");

//Get list of files
filenames = getFileList(input);
// images are not shown
setBatchMode(true);

for (i = 0; i < filenames.length; i++){	
	iFile = input + filenames[i];
	open(iFile);
	run("8-bit");
	oFile = output + filenames[i];
	saveAs("Tiff", substring(oFile, 0, lengthOf(oFile) - 4)); // remove .<ext> in the end of the file
	close();
	showProgress(i + 1, filenames.length);
}