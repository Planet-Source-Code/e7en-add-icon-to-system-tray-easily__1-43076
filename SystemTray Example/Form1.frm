VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "SysTray Example"
   ClientHeight    =   1005
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3375
   LinkTopic       =   "Form1"
   ScaleHeight     =   1005
   ScaleWidth      =   3375
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   975
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   3135
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Close this form using the X and the program will still run. Double click the Icon in the System Tray to show again."
         Height          =   735
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Width           =   2775
      End
   End
   Begin VB.Menu Mnu_File 
      Caption         =   "File"
      Visible         =   0   'False
      Begin VB.Menu MnuShow 
         Caption         =   "Show"
      End
      Begin VB.Menu MnuBar 
         Caption         =   "-"
      End
      Begin VB.Menu MnuExit 
         Caption         =   "Exit"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
ShowIcon Me, "This is an Example"
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

Select Case X
    
    Case MouseMove
    
    Case LeftMouseDown
        
    Case LeftMouseUp
    
    Case LeftDblClick
        Me.Show
    Case RightMouseDown
        PopupMenu Mnu_File, 0
    Case RightMouseUp
    
    Case RightDblClick

End Select

End Sub

Private Sub Form_Unload(Cancel As Integer)
Cancel = 1
Me.Hide
End Sub

Private Sub MnuExit_Click()
End
End Sub

Private Sub MnuShow_Click()
Me.Show
End Sub
