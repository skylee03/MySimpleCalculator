unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonQuit: TButton;
    ButtonCalc: TButton;
    ButtonClear: TButton;
    EditNum1: TEdit;
    EditNum2: TEdit;
    LabelAns: TLabel;
    LabelSign: TLabel;
    RadioButtonAdd: TRadioButton;
    RadioButtonSubtract: TRadioButton;
    RadioButtonMultiply: TRadioButton;
    RadioButtonDevide: TRadioButton;
    RadioGroupOperator: TRadioGroup;
    procedure ButtonCalcClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonQuitClick(Sender: TObject);
    procedure RadioButtonAddChange(Sender: TObject);
    procedure RadioButtonDevideChange(Sender: TObject);
    procedure RadioButtonMultiplyChange(Sender: TObject);
    procedure RadioButtonSubtractChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.ButtonCalcClick(Sender: TObject);
begin
  try
    if RadioButtonAdd.Checked then
      LabelAns.Caption := '=' + FloatToStr(StrToFloat(EditNum1.Text) +
        StrToFloat(EditNum2.Text))
    else if RadioButtonSubtract.Checked then
      LabelAns.Caption := '=' + FloatToStr(StrToFloat(EditNum1.Text) -
        StrToFloat(EditNum2.Text))
    else if RadioButtonMultiply.Checked then
      LabelAns.Caption := '=' + FloatToStr(StrToFloat(EditNum1.Text) *
        StrToFloat(EditNum2.Text))
    else if RadioButtonDevide.Checked then
      LabelAns.Caption := '=' + FloatToStr(StrToFloat(EditNum1.Text) /
        StrToFloat(EditNum2.Text))
  except
    ShowMessage('ERROR: Invalid Input')
  end;
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
begin
  EditNum1.Text := '';
  EditNum2.Text := '';
  LabelAns.Caption := '=';
  EditNum1.SetFocus;
end;

procedure TForm1.ButtonQuitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.RadioButtonAddChange(Sender: TObject);
begin
  LabelSign.Caption := '+';
end;

procedure TForm1.RadioButtonSubtractChange(Sender: TObject);
begin
  LabelSign.Caption := '-';
end;

procedure TForm1.RadioButtonMultiplyChange(Sender: TObject);
begin
  LabelSign.Caption := '*';
end;

procedure TForm1.RadioButtonDevideChange(Sender: TObject);
begin
  LabelSign.Caption := '/';
end;

end.
