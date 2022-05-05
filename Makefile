SEMIS=dsPIC.pag Linear.pag PIC18.pag PIC24.pag PIC32MX.pag PIC32MZ.pag Buck.pag OpAmp.pag
SEMIS+=Audio.pag Sensor.pag Clocks.pag Logic.pag Diodes.pag

RES=Res0402.pag Res0603.pag RC0402FR-071KL.pag MC0063W0603110K.pag MCMR04X1002FTL.pag MC0063W0603147K.pag 0603SAF1200T5E.pag WR06X1004FTL.pag 0603SAF8200T5E.pag MCWR06X4700FTL.pag
RES+=MCWR06X1000FTL.pag MCWR06X1001FTL.pag WR06X1003FTL.pag MC0063W060313K3.pag CR0402-FX-3093GLF.pag ERJ-3EKF5233V.pag CRCW0603309KFKEA.pag
CAP=Cap0402.pag Cap0603.pag
IND=Inductors.pag

all: Semiconductors.pdf Resistors.pdf Capacitors.pdf Inductors.pdf

Semiconductors.pdf: ${SEMIS}
	./mkpage output Semiconductors left ${SEMIS}

Resistors.pdf: ${RES}
	./mkpage output Resistors left ${RES}

Capacitors.pdf: ${CAP}
	./mkpage output Capacitors left ${CAP}

Inductors.pdf: ${IND}
	./mkpage output Inductors left ${IND}

clean:
	rm -f Pages.pdf
