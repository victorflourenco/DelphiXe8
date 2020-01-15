unit relat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  Trelatorio = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relatorio: Trelatorio;

implementation

{$R *.dfm}

procedure Trelatorio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
relatorio := nil;
end;

end.
