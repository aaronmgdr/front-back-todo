(function () {

  // MODEL
  window.Task = Backbone.Model.extend({
    defaults: {
      complete: false
    }
  });

  // COLLECTION
  window.Tasks = Backbone.Collection.extend({
    model: Task,
    url: '/tasks',
    parse: function(response) {
      return response.results;
    }
  });

})();
