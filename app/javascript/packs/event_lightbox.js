import Lightbox from 'lightbox2/dist/js/lightbox'

const options = {
  size: 'xl'
}

document.addEventListener('turbolinks:load', () => {
  document.querySelectorAll('.lightbox').forEach((el) => el.addEventListener('click', (e) => {
    e.preventDefault()
    const lightbox = new Lightbox(el, options)
    lightbox.show()
  }))
})
