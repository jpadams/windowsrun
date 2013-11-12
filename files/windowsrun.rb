module MCollective
  module Agent
    class Windowsrun<RPC::Agent
    #test of windows run
      action "run" do

        #command = request[:script]


	reply[:status] = "hello, sweeny"
      end

    end
  end
end

