$(document).ready ->
  $(".js-vertical-tab-content").hide()
  $(".js-vertical-tab-content:first").show()

  # if in tab mode
  $(".js-vertical-tab").click (event) ->
    event.preventDefault()
    $(".js-vertical-tab-content").hide()
    activeTab = $(this).attr("rel")
    $("#" + activeTab).show()
    $(".js-vertical-tab").removeClass "is-active"
    $(this).addClass "is-active"
    $(".js-vertical-tab-accordion-heading").removeClass "is-active"
    $(".js-vertical-tab-accordion-heading[rel^='" + activeTab + "']").addClass "is-active"
    return


  # if in accordion mode
  $(".js-vertical-tab-accordion-heading").click (event) ->
    event.preventDefault()
    $(".js-vertical-tab-content").hide()
    accordion_activeTab = $(this).attr("rel")
    $("#" + accordion_activeTab).show()
    $(".js-vertical-tab-accordion-heading").removeClass "is-active"
    $(this).addClass "is-active"
    $(".js-vertical-tab").removeClass "is-active"
    $(".js-vertical-tab[rel^='" + accordion_activeTab + "']").addClass "is-active"
    return

  return
