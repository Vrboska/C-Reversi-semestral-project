object Form1: TForm1
  Left = 37
  Top = 111
  Width = 829
  Height = 534
  Align = alBottom
  Caption = 'Reversi (Othello)'
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 32
    Top = 24
    Width = 449
    Height = 449
  end
  object Image1: TImage
    Left = 56
    Top = 48
    Width = 400
    Height = 400
    OnMouseDown = Image1MouseDown
  end
  object Label1: TLabel
    Left = 80
    Top = 32
    Width = 7
    Height = 13
    Caption = 'A'
    Color = clSilver
    ParentColor = False
  end
  object Label2: TLabel
    Left = 128
    Top = 32
    Width = 7
    Height = 13
    Caption = 'B'
    Color = clSilver
    ParentColor = False
  end
  object Label3: TLabel
    Left = 177
    Top = 32
    Width = 7
    Height = 13
    Caption = 'C'
    Color = clSilver
    ParentColor = False
  end
  object Label4: TLabel
    Left = 224
    Top = 32
    Width = 11
    Height = 13
    Caption = ' D'
    Color = clSilver
    ParentColor = False
  end
  object Label5: TLabel
    Left = 272
    Top = 32
    Width = 13
    Height = 13
    Caption = '  E'
    Color = clSilver
    ParentColor = False
  end
  object Label6: TLabel
    Left = 321
    Top = 32
    Width = 12
    Height = 13
    Caption = '  F'
    Color = clSilver
    ParentColor = False
  end
  object Label7: TLabel
    Left = 368
    Top = 32
    Width = 17
    Height = 13
    Caption = '   G'
    Color = clSilver
    ParentColor = False
  end
  object Label8: TLabel
    Left = 424
    Top = 32
    Width = 11
    Height = 13
    Caption = ' H'
    Color = clSilver
    ParentColor = False
  end
  object Label9: TLabel
    Left = 40
    Top = 72
    Width = 9
    Height = 13
    Caption = ' 1'
    Color = clSilver
    ParentColor = False
  end
  object Label10: TLabel
    Left = 41
    Top = 120
    Width = 9
    Height = 13
    Caption = ' 2'
    Color = clSilver
    ParentColor = False
  end
  object Label11: TLabel
    Left = 40
    Top = 168
    Width = 9
    Height = 13
    Caption = ' 3'
    Color = clSilver
    ParentColor = False
  end
  object Label12: TLabel
    Left = 40
    Top = 216
    Width = 9
    Height = 13
    Caption = ' 4'
    Color = clSilver
    ParentColor = False
  end
  object Label13: TLabel
    Left = 40
    Top = 264
    Width = 9
    Height = 13
    Caption = ' 5'
    Color = clSilver
    ParentColor = False
  end
  object Label14: TLabel
    Left = 40
    Top = 320
    Width = 9
    Height = 13
    Caption = ' 6'
    Color = clSilver
    ParentColor = False
  end
  object Label15: TLabel
    Left = 40
    Top = 368
    Width = 9
    Height = 13
    Caption = ' 7'
    Color = clSilver
    ParentColor = False
  end
  object Label16: TLabel
    Left = 40
    Top = 416
    Width = 9
    Height = 13
    Caption = ' 8'
    Color = clSilver
    ParentColor = False
  end
  object Label17: TLabel
    Left = 512
    Top = 24
    Width = 126
    Height = 20
    Caption = 'Hrac#1 (Cierny)'
    Color = clWindowText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label18: TLabel
    Left = 672
    Top = 24
    Width = 114
    Height = 20
    Caption = 'Hrac#2 (Biely)'
    Color = clCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label19: TLabel
    Left = 512
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Meno1:'
  end
  object Label20: TLabel
    Left = 672
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Meno2:'
  end
  object Label21: TLabel
    Left = 512
    Top = 104
    Width = 37
    Height = 13
    Caption = 'Skore1:'
  end
  object Label22: TLabel
    Left = 672
    Top = 104
    Width = 37
    Height = 13
    Caption = 'Skore2:'
  end
  object Label23: TLabel
    Left = 552
    Top = 104
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label24: TLabel
    Left = 720
    Top = 104
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label25: TLabel
    Left = 512
    Top = 128
    Width = 65
    Height = 13
    BiDiMode = bdRightToLeft
    Caption = 'Hrac na tahu:'
    ParentBiDiMode = False
  end
  object Label26: TLabel
    Left = 600
    Top = 128
    Width = 56
    Height = 16
    Caption = 'Label26'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel
    Left = 504
    Top = 152
    Width = 60
    Height = 20
    Caption = 'Spravy:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 512
    Top = 72
    Width = 129
    Height = 21
    TabOrder = 0
    Text = 'Hrac#1'
  end
  object Edit2: TEdit
    Left = 672
    Top = 72
    Width = 137
    Height = 21
    TabOrder = 1
    Text = 'Hrac#2'
  end
  object Button1: TButton
    Left = 504
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Nova hra'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 496
    Top = 176
    Width = 313
    Height = 193
    TabOrder = 3
  end
  object Button2: TButton
    Left = 504
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Vrat tah'
    TabOrder = 4
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 504
    Top = 384
    Width = 97
    Height = 17
    Caption = 'Napoveda '
    TabOrder = 5
    OnClick = CheckBox1Click
  end
end
