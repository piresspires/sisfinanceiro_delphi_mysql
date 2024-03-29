unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    imgUsuarios: TImage;
    Label1: TLabel;
    imgReceber: TImage;
    imgPagar: TImage;
    imgCaixa: TImage;
    imgConsReceber: TImage;
    imgConsPagar: TImage;
    Label2: TLabel;
    Label3: TLabel;
    imgConfigura��o: TImage;
    imgNavegador: TImage;
    Image3: TImage;
    Image4: TImage;
    StatusBar1: TStatusBar;
    imgRelPagar: TImage;
    imgRelReceber: TImage;
    imgRelCaixa: TImage;
    BalloonHint: TBalloonHint;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja realmente sair?','Informa��o',MB_YESNO+MB_ICONQUESTION) = mrYes then
    Application.Terminate
  else
    Abort;
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
