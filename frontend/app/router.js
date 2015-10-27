/* /frontend/app/router.js */

import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
	rootURL: config.baseURL, // add this line
  	location: config.locationType
});

Router.map(function() {
  this.route('csv_files');
  this.route('csv_file');
});

export default Router;
