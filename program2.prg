 PUBLIC ostopwatch

   oStopWatch=CreateObject('stopwatch')
   ostopwatch.Visible=.T.

   DEFINE CLASS stopwatch AS form
      AutoCenter = .T.
      Top = 32
      Left = 9
      Height = 137
      Width = 293
      DoCreate = .T.
      Caption = ""
      etime = 0
      Name = "Form1"

      ADD OBJECT command1 AS commandbutton WITH ;
        Top = 48, ;
        Left = 84, ;
        Height = 49, ;
        Width = 133, ;
        Caption = "Quit", ;
        Name = "Command1"

      ADD OBJECT timer1 AS timer WITH ;
        Top = 12, ;
        Left = 12, ;
        Height = 23, ;
        Width = 23, ;
        Interval = 1000, ;
        Name = "Timer1"

      PROCEDURE Unload
        WAIT WINDOW 'Elapsed Time = '+ALLTRIM(STR(ThisForm.etime))+ ;
           ' Seconds'
      ENDPROC

      PROCEDURE command1.Click
        THISFORM.Release
      ENDPROC

      PROCEDURE timer1.Timer
        THIS.Parent.etime=This.Parent.etime+1
        THIS.Parent.Caption='Elapsed Time ='+ ;
            ALLTRIM(STR(This.Parent.etime))+' Seconds'
      ENDPROC

   ENDDEFINE
				