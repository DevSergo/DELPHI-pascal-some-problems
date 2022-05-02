// Проблема в том, что такая конструкция:

if Edit1.text[1] in ['м', 'ж'] then ...  // это работало в Delphi-7

// уже не работает в юникодовых версиях Delphi

// Самому проблему решить не удалось, хотя много чего попробовал и прочитал.
// В итоге помогли на StackOverflow. Вот страница вопроса https://stackoverflow.com/questions/72085371/


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


procedure TPerson.SetSex(Value: WideChar);
const
  MySet : array of char = ['м','ж'];
begin
  if Value.IsInArray(MySet) then FSex := value
  else
    ShowMessage('недопустимый символ - "'+ value + '" в указании пола')
end;