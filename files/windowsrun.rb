module MCollective
  module Agent
    class Windowsrun<RPC::Agent
    #test of windows run
      action "run" do

        #command = request[:script]


	reply[:status] = run("dir",:stdout => :out, :stderr => :err, :chomp => true)
      end

    end
  end
end

