PAGES=dsPIC.pag Linear.pag PIC18.pag PIC24.pag PIC32MX.pag PIC32MZ.pag Buck.pag OpAmp.pag
PAGES+=Audio.pag Sensor.pag Clocks.pag Logic.pag Diodes.pag


Pages.pdf: ${PAGES}
	./mkpage output Pages left ${PAGES}

clean:
	rm -f Pages.pdf
