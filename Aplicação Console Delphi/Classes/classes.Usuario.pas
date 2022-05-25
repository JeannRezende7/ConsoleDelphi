unit classes.Usuario;

interface

uses classes.Pessoa;
type Tusuario = class (Tpessoa)
  NomeAcesso : String;
  Senha : String;
end;

implementation

end.
