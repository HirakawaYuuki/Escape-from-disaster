namespace :read_pdf do
  desc 'PDF読み込み' 
  task read: :environment do
   
    reader = Pdftotext.text('pdf/hinan_hokkaido.pdf') 
    puts reader
  end
end