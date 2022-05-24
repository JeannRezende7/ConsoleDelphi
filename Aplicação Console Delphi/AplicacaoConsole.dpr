program AplicacaoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Pessoa in 'Pessoa.pas';

var
  Pessoa : Tpessoa;

begin
  try
  Pessoa := TPessoa.Create;
  Writeln('Digite o nome da pessoa: ')    ;
  Readln(Pessoa.nome);
  Writeln('O nome da pessoa �: ' + Pessoa.nome);
  Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
