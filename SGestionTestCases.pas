unit SGestionTestCases;

interface

uses
  TestFrameWork;

type
  TTestCaseFirst = class(TTestCase)
  published
    procedure TestFirst;
  end;
  TTestCaseSecond = class(TTestCase)
  published
    procedure TestSecond;
  end;

implementation

procedure TTestCaseFirst.TestFirst;
begin
  Check(1 + 1 = 2, 'Catastrophic arithmetic failure!');
end;

procedure TTestCaseSecond.TestSecond;
begin
  Check(1 - 1 = 0, 'Catastrophic arithmetic failure!');
end;

initialization
  TestFramework.RegisterTest(TTestCaseFirst.Suite);
  TestFramework.RegisterTest(TTestCaseSecond.Suite);

end.
