control "operating_system" do
  describe "the operating system" do
    subject do
      command("cat /etc/os-release").stdout
    end

    it "is Ubuntu" do
      is_expected.to match /Ubuntu/
    end
  end
end
