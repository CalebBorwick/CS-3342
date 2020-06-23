#include <stdio.h>

int main(int argc, char *argv[]) {
    FILE *inFile, *outFile;
    char file[100], chr;
    inFile=fopen(argv[1],"r");
    outFile=fopen("input_C_source_rem.cpp","w");
    while (1){
        chr=fgetc(inFile);
        if (chr==EOF) {
            break;
        }
        else{
            if(chr=='/'){
                chr=fgetc(inFile);
                if(chr=='/') {
                    while(1){
                        chr=fgetc(inFile);
                        if (chr=='\n'){
                            goto label;
                        }
                    }
                }
                if(chr=='*'){
                    while(1){
                        chr=fgetc(inFile);
                        if(chr=='*'){
                            chr=fgetc(inFile);
                            if(chr=='/'){
                                while(1){
                                    chr=fgetc(inFile);
                                    goto label;
                                }
                            }
                            else printf("*");
                        }
                    }
                }
                else printf("/");
            }
        }
        label:fputc(chr,outFile);
    }
    printf("the comments in the input file have been removed\n");
    fclose(inFile);
    fclose(outFile);
}