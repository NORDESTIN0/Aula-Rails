document.addEventListener("DOMContentLoaded", function() {
  handleSelect()
})

var handleSelect = () => {
  $("select").select2({
    theme: "bootstrap-5",
  })
}
