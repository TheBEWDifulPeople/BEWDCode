require_relative '../lib/craigslist_source'

describe CraigslistSource do 
    it "Rejects an invalid region" do
        cs = CraigslistSource.new
        expect{cs.subdomain = "milkyway"}.to raise_error RuntimeError
    end
    it "Accepts a valid region" do
        cs = CraigslistSource.new
        cs.subdomain = "newyork"
        cs.subdomain.should eq("newyork")
    end
end
