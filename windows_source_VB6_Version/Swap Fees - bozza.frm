VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Swap Fees Calculator"
   ClientHeight    =   5400
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11775
   Icon            =   "Swap Fees - bozza.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5400
   ScaleWidth      =   11775
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   375
      Left            =   10440
      TabIndex        =   11
      Top             =   4920
      Width           =   1095
   End
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "&Calculate"
      Height          =   1095
      Left            =   4800
      MaskColor       =   &H000000FF&
      TabIndex        =   9
      Top             =   1440
      Width           =   2775
   End
   Begin VB.TextBox txtFinal 
      BackColor       =   &H8000000D&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000005&
      Height          =   615
      Left            =   7800
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   1800
      Width           =   3735
   End
   Begin VB.TextBox txtNights 
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   4200
      Width           =   4215
   End
   Begin VB.TextBox txtSwapFee 
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   3000
      Width           =   4215
   End
   Begin VB.TextBox txtQuantity 
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   1800
      Width           =   4215
   End
   Begin VB.Label Label6 
      Caption         =   "Developed by Marco Casanova"
      Height          =   255
      Left            =   9000
      TabIndex        =   10
      Top             =   600
      Width           =   2415
   End
   Begin VB.Label Label5 
      Caption         =   "This is the swap fee you will pay:"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7920
      TabIndex        =   7
      Top             =   1320
      Width           =   3495
   End
   Begin VB.Label Label4 
      Caption         =   "Enter how many nights will you hold."
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   3600
      Width           =   4215
   End
   Begin VB.Label Label3 
      Caption         =   "Enter SWAP FEE of instrument. (Enter a decimal)"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   2400
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "Enter QUANTITY of instrument held. (Enter an Integer)"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   1320
      Width           =   4095
   End
   Begin VB.Line Line1 
      X1              =   240
      X2              =   11400
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Label Label1 
      Caption         =   "Trading 212 Swap Fees Calculator"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Quantity As Integer
Dim SwapFee As Single
Dim Nights As Integer
Dim Final As Single



Private Sub Command1_Click()


End Sub



Private Sub Picture1_Click()

End Sub


Private Sub cmdCalculate_Click()

Quantity = Val(txtQuantity.Text)
SwapFee = Val(txtSwapFee.Text)
Nights = Val(txtNights.Text)

Final = Quantity * SwapFee * Nights
txtFinal.Text = Final

End Sub

Private Sub cmdExit_Click()
End
End Sub

