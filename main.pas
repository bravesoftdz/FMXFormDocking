unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Layouts,
  FMX.Objects;

type
  Tfmmain = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Sales: TButton;
    DockedLayout: TLayout;
    Customers: TButton;
    Label3: TLabel;
    Text1: TText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Main: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Rectangle1: TRectangle;
    procedure SalesClick(Sender: TObject);
    procedure CustomersClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MainClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmmain: Tfmmain;

implementation
uses sales,customer;

{$R *.fmx}

procedure Tfmmain.MainClick(Sender: TObject);
begin
 tabcontrol1.activetab:= tabitem1;
end;

procedure Tfmmain.SalesClick(Sender: TObject);
var
i:integer;
childform:Tfmsales; // sets a child form of the form Sales
          begin
  DockedLayout.ClipChildren:= true;

   if DockedLayout.childrencount > 0 then
  begin
    for i := (DockedLayout.childrencount - 1) downto 0 do
    begin
{$IF DEFINED(IOS) or DEFINED(ANDROID)}
      DockedLayout.Children.items[i].Disposeof; // frees any children if already set
{$ELSE}  // Windows
      DockedLayout.Children.items[i].Free; // frees any children if already set
{$ENDIF}
    end;      //frees the existing loaded form
  end;
     label3.Text:= '0';
     childform:= Tfmsales.Create(self);   //Creates the childform.
     childform.layoutsales.Parent:= Self.DockedLayout;  //set childform to the parent
     tabcontrol1.activetab:= tabitem2;
    label3.text:=DockedLayout.childrencount.tostring;
end;



procedure Tfmmain.CustomersClick(Sender: TObject);
var
i:integer;
customer:Tfmcustomer;      // sets a child form of the form Sales
        begin
          DockedLayout.ClipChildren:= true;
         if DockedLayout.childrencount > 0 then
  begin
    for i := (DockedLayout.childrencount - 1) downto 0 do
    begin
{$IF DEFINED(IOS) or DEFINED(ANDROID)}
      DockedLayout.Children.items[i].Disposeof; // frees any children if already set
{$ELSE}  // Windows
      DockedLayout.Children.items[i].Free; // frees any children if already set
{$ENDIF}
    end;  //frees the existing loaded form
   end;
   label3.Text:= '0';

    customer:= Tfmcustomer.Create(self); //Creates the childform.
 customer.customerdock.Parent:= Self.DockedLayout; //set childform to the parent
 tabcontrol1.activetab:= tabitem2;
  label3.text:=DockedLayout.childrencount.tostring;
 end;


procedure Tfmmain.FormShow(Sender: TObject);
begin
    label3.Text:= '0';
    label4.Text:= 'tabitem 1';
    tabcontrol1.activetab:= tabitem1;
end;



procedure Tfmmain.TabControl1Change(Sender: TObject);
begin
      if tabcontrol1.ActiveTab = tabitem1  then
              label3.Text:= '0';

      if tabcontrol1.ActiveTab = tabitem2 then
      label4.Text:= 'tabitem 2'
     else
     label4.Text:= 'tabitem 1'
 end;


end.
