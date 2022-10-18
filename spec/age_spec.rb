require_relative '../lib/age'
require_relative './spec_helper'

describe "#age" do
    #take the currentYear and yearOfBirth as parameters, then returns the age of the user
    #test that the method returns a value of type Integer
    #test the currentYear and yearOfBirth passed by the user are of type integer

    it "returns a value of type Integer" do
        expect(age(1990)).to be_a(Integer)
        expect(age(1990)).to be(32)   
    end
    end