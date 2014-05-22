#ui-overlay
The overlay wraps and coats nested content. Use this to provide tools and
actions that appear when you mouse over. Handy for filter effects and icons.

    ResizeSensor = require './ResizeSensor'

    Polymer 'ui-overlay',

##Events

##Attributes and Change Handlers

###detail
Additional data to make available. This is a general data binding target so
that you can inspect `evt.target.detail`.

###hoverclass
It's not a hovercraft, it's a hoverclass. This is like a class string, but
will only be applied to the overlay, and on when you are hovering.

##Methods

##Event Handlers

      showIt: ->
        @$.overlay.classList.add 'show'

      hideIt: ->
        @$.overlay.classList.remove 'show'

      resized: ->
        size = Math.min(@clientWidth, @clientHeight) / Math.max(1, window.getComputedStyle(@$.overlay, 'before')['content']?.length)
        @$.overlay.style['font-size'] = "#{size}px"
        @$.overlay.style['line-height'] = "#{size}px"

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->
        @sensor = new ResizeSensor @$.overlay, =>
          @resized()
        @resized()

      domReady: ->

      detached: ->
