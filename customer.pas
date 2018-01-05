unit customer;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Data.Bind.Controls, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  Fmx.Bind.Navigator, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  FMX.ListBox, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects;

type
  Tfmcustomer = class(TForm)
    customerdock: TLayout;
    ToolBar1: TToolBar;
    Label1: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    DateEdit1: TDateEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmcustomer: Tfmcustomer;

implementation

{$R *.fmx}

end.
