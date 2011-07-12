module Vim
  def self.update!
    vimrc = File.expand_path('~/.vimrc')

    File.delete(vimrc) if File.symlink?(vimrc)
    File.symlink(File.expand_path('vimrc.vim'), vimrc)
  end
end
