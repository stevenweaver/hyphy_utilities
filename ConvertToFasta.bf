RequireVersion ("2.4.0");

// EXAMPLE USAGE
// hyphy ConvertToFasta.bf --alignment ./HIVtransmission.nex

// ---- load library files --------------------------------
LoadFunctionLibrary("libv3/UtilityFunctions.bf");
LoadFunctionLibrary("libv3/IOFunctions.bf");
LoadFunctionLibrary("libv3/tasks/alignments.bf");
LoadFunctionLibrary("SelectionAnalyses/modules/io_functions.ibf");



/*------------------------------------------------------------------------------
    Keyword arguments
*/
KeywordArgument ("alignment", "An in-frame codon alignment in one of the formats supported by HyPhy");

namespace converter {
    LoadFunctionLibrary ("SelectionAnalyses/modules/shared-load-file.bf");
}

alignment_info = alignments.ReadNucleotideDataSet ("dataset", None);
DataSetFilter dsf = CreateFilter (dataset,1);

DATA_FILE_PRINT_FORMAT=9;
fprintf(stdout, dsf);
