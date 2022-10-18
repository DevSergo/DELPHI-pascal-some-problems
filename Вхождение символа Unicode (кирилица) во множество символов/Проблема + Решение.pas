// П Р О Б Л Е М А

// Такая конструкция:

if (Edit1.text[1] in ['м', 'ж']) then ...  // работала в Delphi-7

// однако уже не работает в более свежих (юникодовых) версиях Delphi

// Мой вопрос с решение https://stackoverflow.com/questions/72085371/
// Более подробно у Гансмокера - https://www.transl-gunsmoker.ru/2009/09/pchars.html


//  Р Е Ш Е Н И Е


procedure TForm1.Button1Click(Sender: TObject);
var
  ch: char;
  a: array of char;
  s: string;

begin
  a := ['м','ж'];
  s := 'abмd';
  for ch in s do
    if ch.IsInArray(a) then showmessage(ch + ' - YES !!! YES !!! YES !!!')
    else showmessage(ch + ' - no... no .... no....');
end;


//  И Л И   Т А К


procedure TPerson.SetSex(Value: WideChar);  // или -> Value: Char
const
  MySet : array of char = ['м','ж'];
begin
  if Value.IsInArray(MySet) then FSex := value
  else
    ShowMessage('недопустимый символ - "'+ value + '" в указании пола')
end;
