LOCAL xsegundos
clear
xcosto_exedente_single=20000 &&exedente simple
xcosto_base=60000 &&tarifa normal

ww_segundos_base=5400
ww_periodo_exedente=1800

xminutos=180
xsegundos=xminutos*60



IF xsegundos > ww_segundos_base   && si supera la base de una hora y media o sea 5400 segundos
	
	w_partes_segundos_entero = ROUND((xsegundos-ww_segundos_base)/ww_periodo_exedente,0)
	w_partes_segundos_decimal= ((xsegundos-ww_segundos_base)/ww_periodo_exedente)-w_partes_segundos_entero

	IF w_partes_segundos_decimal > 0  && quiere decir que paso la unidad			
		w_partes_segundos= ROUND((xsegundos-ww_segundos_base)/ww_periodo_exedente,0)+1
	else
		w_partes_segundos= ROUND((xsegundos-ww_segundos_base)/ww_periodo_exedente,0)
	ENDIF
	
	w_apagar_exedente=w_partes_segundos*xcosto_exedente_single	&&cantidad de exedentes!!!	

ELSE
	w_partes_segundos=0
	w_apagar_exedente=0
ENDIF

?(xsegundos-ww_segundos_base)/ww_periodo_exedente
?w_partes_segundos
?w_apagar_exedente
