
class QuestionVM
  constructor: (@data) ->
    @q  = ko.observable(@data.q || "")
    @as = ko.observableArray(@data.a || [])
  addAnswer: ->
    @as.push('')
  delete: (item)->
    @as.remove(item)

class QuestionMakerVM
  constructor: (@qs) ->
    @dataset = ko.observableArray(_.map(@qs, (x) -> new QuestionVM(x)))
  addQuestion: ->
    @dataset.push(new QuestionVM(q: '', a: ['']))
  delete: (item)->
    @dataset.remove(item)

dataElem = document.getElementById('dataset')
if (dataElem && (dataset = dataElem.dataset.qs))
  vm = new QuestionMakerVM(JSON.parse(dataset))
  ko.applyBindings(vm);
