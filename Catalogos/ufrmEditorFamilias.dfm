inherited frmEditorFamilias: TfrmEditorFamilias
  Caption = 'Familias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcEditor: TPageControl
    inherited tabGeneral: TTabSheet
      object lblNombre: TLabel
        Left = 3
        Top = 6
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object edtNombre: TDBEdit
        Left = 46
        Top = 3
        Width = 470
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NOMBRE'
        DataSource = dmData.dsFamilias
        TabOrder = 0
      end
    end
  end
end
