Mock = require "../lib/mock"

base = {
    posts: [
        {
            id: 20,
            post_type: {
                id: 40,
                title: "Main\nArgument"
            }
        }

        {
            id: 21,
            post_type: {
                id: 40,
                title: "Supporting Evidence"
            }
        }

        {
            id: 22,
            post_type: {
                id: 40,
                title: "Supporting Evidence"
            }
        }

        {
            id: 23,
            post_type: {
                id: 40,
                title: "Counter Argument"
            }
        }

        {
            id: 24,
            post_type: {
                id: 40,
                title: "Conclusion"
            }
        }

    ]
    planks: [
        {
            id: 30,
            body: 'Climate Change is happening because of pollution in
                the atmosphere caused by humans.',
            post_type: {
                id: 40,
                title: "Test type 1"
            }
        }
        {
            id: 31,
            body: 'Carbon Dioxide levels in the atmosphere have have continued
            to rise since the beginning of the Industrial Revolution.',
            post_type: {
                id: 40,
                title: "Test type 2"
            }
        }
        {
            id: 32,
            body: 'Polar Ice is melting off at record pace as a result of
            increased global temperatures resulting changes in weather patterns
            and sea levels.',
            post_type: {
                id: 40,
                title: "Test type 3"
            }
        }
        {
            id: 33,
            body: 'Climate change is not connected to human activity, and is a
            natural process that Earth undergoes as a result of the precession
            of the Earth’s axis.',
            post_type: {
                id: 40,
                title: "Test type 4"
            }
        }
        {
            id: 34,
            body: 'There are both natural and unnatural (human induced) reasons
            that climate change is happening on Earth.',
            post_type: {
                id: 40,
                title: "Test type 5"
            }
        }
    ]
}

module.exports = class BridgeMock extends Mock
    base: base