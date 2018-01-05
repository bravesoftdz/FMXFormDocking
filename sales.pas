unit sales;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.Controls.Presentation, FMX.Edit,
  FMX.Layouts, FMX.StdCtrls, FMX.Objects;

type
  Tfmsales = class(TForm)
    Layoutsales: TLayout;
    Edit1: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    Grid1: TGrid;
    Text1: TText;
    Button1: TButton;
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmsales: Tfmsales;

implementation

{$R *.fmx}

end.
