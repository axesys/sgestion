inherited frmEditor: TfrmEditor
  Caption = 'frmEditor'
  ClientHeight = 350
  ClientWidth = 543
  ExplicitWidth = 559
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  object pcEditor: TPageControl
    Left = 8
    Top = 8
    Width = 527
    Height = 303
    ActivePage = tabGeneral
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tabGeneral: TTabSheet
      Caption = 'Datos Generales'
      ExplicitHeight = 249
    end
  end
  object btnAceptar: TButton
    Left = 379
    Top = 317
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Aceptar'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancelar: TButton
    Left = 460
    Top = 317
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
end
