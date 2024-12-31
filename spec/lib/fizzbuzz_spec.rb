RSpec.describe 'Fizz Buzz 数列と変換規則を扱う FizzBuzz クラス' do
  describe 'convertメソッドは数を文字列に変換する' do
    subject{FizzBuzz.convert(num)}
    context 'その他の数の時はそのまま文字列に変換する' do
      context '1を渡すと文字列1を返す' do
        let(:num) {1}
        it {is_expected.to eq "1"}
      end
    end
    context '3の倍数を渡すと文字列Fizzに変換する' do
      context '3を渡すと文字列Fizzを返す' do
        let(:num) {3}
        it {is_expected.to eq "Fizz"}
      end
    end
    context '5の倍数を渡すとBuzzに変換する' do
      context '5を渡すと文字列Buzzを返す' do
        let(:num) {5}
        it {is_expected.to eq "Buzz"}
      end
    end
    context '3と5両方の倍数を渡すとFizzBuzzに変換する' do
      context '15を渡すと文字列FizzBuzzを返す' do
        let(:num) {15}
        it {is_expected.to eq "FizzBuzz"}
      end
    end
  end
  describe 'print_sequenceメソッドは1~100までの数値をconvertメソッドに渡しプリントする' do  
    it '1~100までの数値をconvertメソッドに渡したプリント結果と、print_sequenceメソッドの出力結果が一致すること' do  
      expected_output = (1..100).map { |num| FizzBuzz.convert(num) }.join("\n") + "\n"  
      # 標準出力をキャプチャ  
      output = StringIO.new  
      $stdout = output  
      # print_sequenceメソッドを実行  
      FizzBuzz.print_sequence  
      # 標準出力を元に戻す  
      $stdout = STDOUT  
      # キャプチャした出力を比較  
      expect(output.string).to eq expected_output  
    end  
  end
end
