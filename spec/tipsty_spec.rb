RSpec.describe Tipsty do
  it "has a version number" do
    expect(Tipsty::VERSION).not_to be nil
  end

  it 'Accurately generates a tip given string or integer input' do
    scenario_1 = Tipsty::Builder.new(total: 100, gratuity: '23.5').generate
    scenario_2 = Tipsty::Builder.new(total: 100, gratuity: 'high').generate
    scenario_3 = Tipsty::Builder.new(total: 100, gratuity: 'LOW').generate
    scenario_4 = Tipsty::Builder.new(total: 100, gratuity: 'standard').generate
    scenario_5 = Tipsty::Builder.new(total: 100, gratuity: '18').generate
    scenario_6 = Tipsty::Builder.new(total: 100, gratuity: 20).generate
    scenario_7 = Tipsty::Builder.new(total: 100, gratuity: 0).generate

    expect(scenario_1).to eq(123.5)
    expect(scenario_2).to eq(125.0)
    expect(scenario_3).to eq(115.0)
    expect(scenario_4).to eq(118.0)
    expect(scenario_5).to eq(118.0)
    expect(scenario_6).to eq(120.0)
    expect(scenario_7).to eq(100.0)
  end
end
