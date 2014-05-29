#ui-overlay
The overlay wraps and coats nested content. Use this to provide tools and
actions that appear on top of other. Handy for filter effects and icons.

The idea is you have a `overlay` of html which sits over the rest of the
contents.

```html
<ui-overlay>
  <span overlay>your overlay here</span>
  <span>your content here</span>
</ui-overlay>
```

And, you can make the overlay automatically fade in and out on hover.

```html
<ui-overlay hover>
  <span overlay>your overlay here</span>
  <span>your content here</span>
</ui-overlay>
```

To make it easy to center icon fonts, the overlay will set the font size and
line height to completely span the overlay. So, a single
[FontAwesome](http://fortawesome.github.io/Font-Awesome/) icon can center
and cover.



##Events
No custom events are fired

##Attributes and Change Handlers

###detail
Additional data to make available. This is a general data binding target so
that you can inspect `evt.target.detail`.

###hover
Set this flag attribute if you want the overlay to show and hide on hover.

##Methods

##Event Handlers










##Polymer Lifecycle
This overlay automatically resizes to cover the wrapped element.







