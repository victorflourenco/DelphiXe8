unit imp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  Timpressao = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  impressao: Timpressao;

implementation

{$R *.dfm}

procedure Timpressao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
impressao := nil;
end;

end.
