Pages.pdf: dsPIC.pag Linear.pag PIC18.pag PIC24.pag PIC32MX.pag PIC32MZ.pag
	./mkpage output Pages left PIC18.pag PIC24.pag dsPIC.pag PIC32MX.pag PIC32MZ.pag Linear.pag

clean:
	rm -f Pages.pdf
