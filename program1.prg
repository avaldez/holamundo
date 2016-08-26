PUBLIC ofrmListExamples
ofrmListExamples=NEWOBJECT("frmListExamples")
ofrmListExamples.Show
RETURN

DEFINE CLASS frmListExamples AS form

 DataSession = 2
 Top = 0
 Left = 0
 Height = 262
 Width = 325
 Caption = "List and ListItem Array Example"
 Name = "frmListExamples"

 ADD OBJECT shape1 AS shape WITH ;
  Top = 43, ;
  Left = 32, ;
  Height = 76, ;
  Width = 261, ;
  SpecialEffect = 0, ;
  Name = "Shape1"

 ADD OBJECT cbolistbad AS combobox WITH ;
  ColumnCount = 3, ;
  ColumnWidths = "100,100,50", ;
  Height = 22, ;
  Left = 111, ;
  Sorted = .T., ;
  Style = 2, ;
  TabIndex = 1, ;
  Top = 53, ;
  Width = 147, ;
  Name = "cboListBad"

 ADD OBJECT cbolistitem AS combobox WITH ;
  ColumnCount = 3, ;
  ColumnWidths = "100,100,50", ;
  Left = 34, ;
  Sorted = .T., ;
  Style = 2, ;
  TabIndex = 3, ;
  Top = 154, ;
  Name = "cboListItem"

 ADD OBJECT label1 AS label WITH ;
  FontBold = .T., ;
  Caption = "Using the List Array:", ;
  Height = 17, ;
  Left = 34, ;
  Top = 24, ;
  Width = 176, ;
  TabIndex = 7, ;
  Name = "Label1"

 ADD OBJECT label2 AS label WITH ;
  FontBold = .T., ;
  Caption = "Using the ListItem Array:", ;
  Height = 17, ;
  Left = 34, ;
  Top = 135, ;
  Width = 173, ;
  TabIndex = 8, ;
  Name = "Label2"

 ADD OBJECT cbolistgood AS combobox WITH ;
  ColumnCount = 3, ;
  ColumnWidths = "100,100,50", ;
  Height = 22, ;
  Left = 111, ;
  Sorted = .T., ;
  style = 2, ;
  TabIndex = 2, ;
  Top = 86, ;
  Width = 147, ;
  Name = "cboListGood"

 ADD OBJECT label3 AS label WITH ;
  Alignment = 1, ;
  Caption = "Wrong!", ;
  Height = 17, ;
  Left = 51, ;
  Top = 56, ;
  Width = 47, ;
  TabIndex = 9, ;
  Name = "Label3"

 ADD OBJECT label4 AS label WITH ;
  Alignment = 1, ;
  Caption = "Right!", ;
  Height = 17, ;
  Left = 58, ;
  Top = 89, ;
  Width = 40, ;
  TabIndex = 10, ;
  Name = "Label4"

 PROCEDURE cbolistbad.Init
  WITH This
   .AddItem( 'Cleveland' )
   .AddItem( 'Ohio', .NewIndex, 2 )
   .AddItem( '44122', .NewIndex, 3 )
   .AddItem( 'Caversham' )
   .AddItem( 'England', .NewIndex, 2 )
   .AddItem( 'RG4 8BX', .NewIndex, 3 )
   .AddItem( 'Buffalo' )
   .AddItem( 'New York', .NewIndex, 2 )
   .AddItem( '14228', .NewIndex, 3 )
   .AddItem( 'Milwaukee' )
   .AddItem( 'Wisconsin', .NewIndex, 2 )
   .AddItem( '43225', .NewIndex, 3 )
   .AddItem( 'International Falls')
   .AddItem( 'Minnesota', .NewIndex, 2 )
   .AddItem( '42666', .NewIndex, 3 )
  ENDWITH
 ENDPROC

PROCEDURE cbolistgood.Init
  WITH This
   .AddItem( 'Cleveland' )
   .List[.NewIndex, 2] = 'Ohio'
   .List[.NewIndex, 3] = '44122'
   .AddItem( 'Caversham' )
   .List[.NewIndex, 2] = 'England'
   .List[.NewIndex, 3] = 'RG4 8BX'
   .AddItem( 'Buffalo' )
   .List[.NewIndex, 2] = 'New York'
   .List[.NewIndex, 3] = '14228'
   .AddItem( 'Milwaukee' )
   .List[.NewIndex, 2] = 'Wisconsin'
   .List[.NewIndex, 3] = '43225'
   .AddItem( 'International Falls' )
   .List[.NewIndex, 2] = 'Minnesota'
   .List[.NewIndex, 3] = '42666'
  ENDWITH
 ENDPROC

 PROCEDURE cbolistitem.Init
  WITH This
   .AddListitem( 'Cleveland' )
   .AddListItem( 'Ohio', .NewItemID, 2 )
   .AddListItem( '44122', .NewItemID, 3 )
   .AddListItem( 'Caversham' )
   .AddListItem( 'England', .NewItemID, 2 )
   .AddListItem( 'RG4 8BX', .NewItemID, 3 )
   .AddListItem( 'Buffalo' )
   .AddListItem( 'New York', .NewItemID, 2 )
   .AddListItem( '14228', .NewItemID, 3 )
   .AddListItem( 'Milwaukee' )
   .AddListItem( 'Wisconsin', .NewItemID, 2 )
   .AddListItem( '43225', .NewItemID, 3 )
   .AddListItem( 'International Falls')
   .AddListItem( 'Minnesota', .NewItemID, 2 )
   .AddListItem( '42666', .NewItemID, 3 )
  ENDWITH
 ENDPROC
ENDDEFINE
