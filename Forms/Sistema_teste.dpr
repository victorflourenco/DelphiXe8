program Sistema_teste;

uses
  Forms,
  Princ in 'Princ.pas' {principal},
  imp in 'imp.pas' {impressao},
  relat in 'relat.pas' {relatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tprincipal, principal);
  Application.Run;
end.
