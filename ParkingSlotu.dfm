object frmParkingSlot: TfrmParkingSlot
  Left = 191
  Top = 101
  Caption = ' PARKING METER:              0.12   cent / second!'
  ClientHeight = 274
  ClientWidth = 421
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblComment: TLabel
    Left = 19
    Top = 259
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCarRNo: TLabel
    Left = 16
    Top = 70
    Width = 53
    Height = 13
    Caption = 'CarRegNo.'
  end
  object lblArrivalTime: TLabel
    Left = 16
    Top = 111
    Width = 52
    Height = 13
    Caption = 'ArrivalTime'
  end
  object lblDepartureTime: TLabel
    Left = 16
    Top = 150
    Width = 70
    Height = 13
    Caption = 'DepartureTime'
  end
  object lblTotalCharge: TLabel
    Left = 16
    Top = 231
    Width = 61
    Height = 13
    Caption = 'Total Charge'
  end
  object lblTime: TLabel
    Left = 336
    Top = 67
    Width = 77
    Height = 13
    Caption = 'Current Time:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTimeDiff: TLabel
    Left = 16
    Top = 190
    Width = 75
    Height = 13
    Caption = 'Time Difference'
  end
  object lblDep: TLabel
    Left = 232
    Top = 141
    Width = 170
    Height = 24
    Caption = '<= on departure enter time'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Myanmar Text'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblFree: TLabel
    Left = 32
    Top = 40
    Width = 5
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblHead: TLabel
    Left = 43
    Top = 8
    Width = 339
    Height = 28
    Alignment = taCenter
    Caption = 'billing Parking Meter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -19
    Font.Name = '1UP!'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFormat: TLabel
    Left = 254
    Top = 157
    Width = 50
    Height = 11
    Caption = '[hh:mm:ss]'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 254
    Top = 67
    Width = 63
    Height = 13
    Caption = 'Current Time:'
  end
  object edtCarNo: TEdit
    Left = 100
    Top = 64
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtArrTime: TEdit
    Left = 100
    Top = 104
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtTCharge: TEdit
    Left = 100
    Top = 224
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnCalcTCharge: TButton
    Left = 240
    Top = 184
    Width = 173
    Height = 25
    Caption = '&Calculate Time / Charge'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = btnCalcTChargeClick
  end
  object btnClear: TButton
    Left = 296
    Top = 222
    Width = 65
    Height = 25
    Caption = 'C&lear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnClearClick
  end
  object btnTAssigner: TButton
    Left = 240
    Top = 104
    Width = 173
    Height = 25
    Caption = ' <=   CurrentTime &Assigner'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Myanmar Text'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnTAssignerClick
  end
  object medtDepTime: TMaskEdit
    Left = 100
    Top = 144
    Width = 121
    Height = 22
    EditMask = '!90:00:00;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 6
    Text = '  :  :  '
  end
  object edtTotTime: TEdit
    Left = 100
    Top = 184
    Width = 121
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
end
