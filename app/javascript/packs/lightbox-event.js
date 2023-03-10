import Lightbox from 'bs5-lightbox'

document.addEventListener('turbolinks:load', () => {
  document.querySelectorAll('.lightbox').forEach((el) => el.addEventListener('click', (e) => {
    e.preventDefault()
    const lightbox = new Lightbox(el)
    lightbox.show()
  }))
})
