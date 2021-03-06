program AplicacaoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  classes.Pessoa in 'Classes\classes.Pessoa.pas',
  classes.Cliente in 'Classes\classes.Cliente.pas',
  classes.Usuario in 'Classes\classes.Usuario.pas',
  classes.Administrador in 'Classes\classes.Administrador.pas';

var
  Pessoa : Tpessoa;
  Fornecedor : Tcliente;

begin
  try
  Pessoa := TPessoa.Create;
  Fornecedor := Tcliente.Create;
  Writeln('Digite o nome da pessoa: ')    ;
  Readln(Pessoa.nome);
  Writeln('O nome da pessoa ?: ' + Pessoa.nome);
  Readln;
  Writeln('Digite o CNPJ: ');
  Readln(Fornecedor.Cnpj);
  Writeln('O CNPJ ? : ' + Fornecedor.Cnpj);
  Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
