program tabdockingexample;

uses
  System.StartUpCopy,
  FMX.Forms,
  main in 'main.pas' {fmmain},
  sales in 'sales.pas' {fmsales},
  customer in 'customer.pas' {fmcustomer};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfmmain, fmmain);
  Application.CreateForm(Tfmsales, fmsales);
  Application.CreateForm(Tfmcustomer, fmcustomer);
  Application.Run;
end.
