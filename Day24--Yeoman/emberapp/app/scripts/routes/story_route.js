Emberapp.StoryRoute = Ember.Route.extend({
  model: function(params) {
    return this.get('store').find('story', params.story_id);
  }
});

