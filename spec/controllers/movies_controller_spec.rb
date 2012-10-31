require 'spec_helper'

describe MoviesController do
  describe 'finding similar movies' do
    it 'should call the model method that finds movies by the same director' do
      Movie.should_receive(:find_similar)
      post :find_similar, {:id => 1}
    end
    it 'should select the Similar Movies template for rendering' do
      Movie.stub(:find_similar)
      post :find_similar, {:id => 1}
      response.should render_template('find_similar')
    end
    it 'should make the similar movies available to that template' do
      fake_results = [mock('Movie'), mock('Movie')]
      Movie.stub(:find_similar).and_return(fake_results)
      post :find_similar, {:id => 1}
      # Look for controller method to assign @movies
      assigns(:movies).should == fake_results
    end
  end
end
