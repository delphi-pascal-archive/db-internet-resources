unit Start;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TForm2 = class(TForm)
    ProgressBar1: TProgressBar;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    procedure RzBmpButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.RzBmpButton1Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
Form2.Close;
end;

end.
