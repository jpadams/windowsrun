metadata :name        => "windowsrun",
         :description => "Run command a windows server",
         :author      => "Andreas Zuber <zuber@puzzle.ch>",
         :license     => "GPLv2",
         :version     => "0.1",
         :url         => "www.news.com",
         :timeout     => 60

action "run", :description => "Runs a command windows" do
  display :always

  input :script,
        :prompt      => "command name",
        :description => "Name and full path of the script we want to run",
        :type        => :string,
	:validation  => '^.+$',
        :optional    => false,
        :maxlength   => 255
 
  output :status,
         :description => "The exit code of the script",
         :display_as  => "Return Value"

  output :out,
         :description => "The Output of the script on stdout",
         :display_as  => "Output Channel"

  output :err,
         :description => "The Output of the script on stderr",
         :display_as  => "Error Channel"

end
