unit Princ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  Tprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Janela11: TMenuItem;
    Sair1: TMenuItem;
    Janela21: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Janela21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;

implementation

uses imp, relat;

{$R *.dfm}

procedure Tprincipal.Sair1Click(Sender: TObject);
begin
close;
end;

procedure Tprincipal.Janela21Click(Sender: TObject);
begin
  if relatorio = nil then
   begin
    relatorio := Trelatorio.Create(self);
   relatorio.ShowModal;
end;

 end;

end.
