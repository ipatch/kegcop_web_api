// app/adapters/application.js

import DS from 'ember-data';

// export default DS.RESTAdapter.extend({
// });

export default DS.ActiveModelAdapter.extend({
  host: 'http://localhost:3000'
});