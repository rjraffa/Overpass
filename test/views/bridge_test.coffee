BridgeView = require 'views/bridge'
BridgeModel = require 'models/bridge'
TestObjectFactory = require 'lib/test_object_factory'

describe 'BridgeView', ->
    before ->
        @factory = new TestObjectFactory

    beforeEach ->
        @model = @factory.create 'bridge'
        @view = new BridgeView
            model: @model

    afterEach ->
        @model.destroy()
        @view.destroy()

    it "should exist", ->
        expect(@view).to.be.ok

    it "should have a bridge model", ->
        expect(@view.model).to.be.an.instanceof BridgeModel

    describe 'Posts view rendering', ->
        it "should display its posts region", ->
            expect(@view.$('.posts').length).to.equal 1

        it "should display its correct number of posts", ->
            expect(@view.$('.posts').children('.post').length)
                .to.equal @view.model.get('posts').length

        it "should display new posts", ->
            expect(@view.$('.posts').children('.post').length)
                .to.equal @view.model.get('posts').length
            @view.model.get('posts')
                .add @factory.create 'post'
            expect(@view.$('.posts').children('.post').length)
                .to.equal @view.model.get('posts').length

        it "should display the correct first post html", ->
            @view.model.get('posts')
                .add @factory.create 'post'

            PostView = require 'views/post'
            postModel = @view.model.get('posts').at 0
            postView = new PostView
                model: postModel

            expect(@view.$('.posts')
                    .children('.post')
                    .first()
                    .html())
                .to.equal(postView.$el.html())

        it "should display the correct last post html", ->
            @view.model.get('posts')
                .add @factory.create 'post'

            PostView = require 'views/post'
            postCount = @view.model.get('posts').length
            postModel = @view.model.get('posts').at postCount-1
            postView = new PostView
                model: postModel

            expect(@view.$('.posts')
                    .children('.post')
                    .last()
                    .html())
                .to.equal postView.$el.html()

    describe 'Planks view rendering', ->
        it "should display its planks region", ->
            expect(@view.$('.planks').length).to.equal 1

        it "should display its correct number of planks", ->
            expect(@view.$('.planks').children('.plank').length)
                .to.equal @view.model.get('planks').length

        it "should display new planks", ->
            expect(@view.$('.planks').children('.plank').length)
                .to.equal @view.model.get('planks').length
            @view.model.get('planks')
                .add @factory.create 'plank'
            expect(@view.$('.planks').children('.plank').length)
                .to.equal @view.model.get('planks').length

        it "should display the correct first plank html", ->
            @view.model.get('planks')
                .add @factory.create 'plank'

            PlankView = require 'views/plank'
            plankModel = @view.model.get('planks').at 0
            plankView = new PlankView
                model: plankModel

            expect(@view.$('.planks')
                    .children('.plank')
                    .first()
                    .html())
                .to.equal plankView.$el.html()

        it "should display the correct last plank html", ->
            @view.model.get('planks')
                .add @factory.create 'plank'

            PlankView = require 'views/plank'
            plankCount = @view.model.get('planks').length
            plankModel = @view.model.get('planks').at plankCount-1
            plankView = new PlankView
                model: plankModel

            expect(@view.$('.planks')
                    .children('.plank')
                    .last()
                    .html())
                .to.equal plankView.$el.html()

