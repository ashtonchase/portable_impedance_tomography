# LaTeX Report using IEEE Template
## Files
report.tex is the source file for the report.

report.bib is the bibliography file required.

IEEEtran.cls is the IEEE class file used for formatting.


## Emacs Support

### pdflatex
To generate PDF files instead of dvi files, add the following to your ```~/.emacs``` file to use pdflatex instead of plain latex:

```
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.                     
 '(latex-run-command "pdflatex"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.                                                                                     
 ;; If you edit it by hand, you could mess it up, so be careful.                                                             
 ;; Your init file should contain only one such instance.                                                                     
 ;; If there is more than one, they won't work right.                                                                        
 )
```


### Generating output

To generate the output in Emacs, includeing update the the bibliogragphy, run the following sequence:

```C-c C-f``` , ```C-c TAB```, ``` C-c C-f```

```C-c C-f``` generates the initial pdf, but also generates a ```cpe.aux``` file that is then used by bibtex to supply the needed references from the cpe631.bib file. 
