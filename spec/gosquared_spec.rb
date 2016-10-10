describe GoSquared do

  subject(:gs) { described_class.new("demo", "GSN-2194840-F") }

  it "creates a new Account instance" do
    expect(Account).to receive(:new).with('demo',"GSN-2194840-F" )
    gs.account
  end

  it "creates a new Now instance" do
    expect(Now).to receive(:new).with('demo',"GSN-2194840-F" )
    gs.now
  end

  it "creates a new People instance" do
    expect(People).to receive(:new).with('demo',"GSN-2194840-F" )
    gs.people
  end

  it "creates a new Tracking instance" do
    expect(Tracking).to receive(:new).with('demo',"GSN-2194840-F" )
    gs.tracking
  end

  it "creates a new Trends instance" do
    expect(Trends).to receive(:new).with('demo',"GSN-2194840-F" )
    gs.trends
  end



end
