unit ConsultarCorreios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.ExtCtrls, ConsultaCepDTO, Utils;

type
  TFrmConsultaCorreios = class(TForm)
    pnlPrincipal: TPanel;
    lblTitulo: TLabel;
    edtCEP: TEdit;
    btnConsultaCEP: TSpeedButton;
    edtLogradouro: TEdit;
    edtComplemento: TEdit;
    edtMunicipio: TEdit;
    edtUF: TEdit;
    edtBairro: TEdit;
    edtIBGE: TEdit;
    lblLogradouro: TLabel;
    lblComplemento: TLabel;
    lblBairro: TLabel;
    lblMunicipio: TLabel;
    lblUF: TLabel;
    lblIBGE: TLabel;
    lblCep: TLabel;
    btnLimpar: TSpeedButton;
    procedure btnConsultaCEPClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    ConsultarCep   : TConsultaCepDTO;
  public
    { Public declarations }
  end;

var
  FrmConsultaCorreios: TFrmConsultaCorreios;

implementation

{$R *.dfm}

procedure TFrmConsultaCorreios.btnConsultaCEPClick(Sender: TObject);
begin
  if edtCEP.Text = EmptyStr then
    raise Exception.Create('CEP em branco!')
  else
  if TUtils.ValidarCEP(edtCEP.Text) then
  begin
    ConsultarCep := TConsultaCepDTO.Create;
    ConsultarCep.GeraRequisicao(edtCEP.Text);

    edtLogradouro.Text  := ConsultarCep.ResultadoPesquisaDTO.FieldByName('logradouro').AsString;
    edtComplemento.Text := ConsultarCep.ResultadoPesquisaDTO.FieldByName('complemento').AsString;
    edtBairro.Text      := ConsultarCep.ResultadoPesquisaDTO.FieldByName('bairro').AsString;
    edtMunicipio.Text   := ConsultarCep.ResultadoPesquisaDTO.FieldByName('localidade').AsString;
    edtUF.Text          := ConsultarCep.ResultadoPesquisaDTO.FieldByName('uf').AsString;
    edtIBGE.Text         := ConsultarCep.ResultadoPesquisaDTO.FieldByName('ibge').AsString;

    FreeAndNil(ConsultarCep)
  end
  else
  raise Exception.Create('CEP inv�lido.');
end;

procedure TFrmConsultaCorreios.btnLimparClick(Sender: TObject);
begin
  TUtils.LimparCampos(pnlPrincipal);
end;

end.
