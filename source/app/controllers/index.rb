get '/' do
  File.read(File.join('..', '..', 'public','index.html'))
  # Above we added path parameters '..' to find the right directory to open
  # File.read('../../public/index.html')
end
