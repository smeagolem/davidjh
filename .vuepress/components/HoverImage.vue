<template>
  <div>
    <img
      :src="img"
      :width="width"
      :height="height"
      :alt="desc"
      @mouseenter="hovering = true"
      @mouseleave="hovering = false"
    />
  </div>
</template>

<script>
export default {
  props: {
    image: {
      type: String,
      required: true
    },
    hover: {
      type: String,
      required: true
    },
    desc: {
      type: String,
      required: true
    },
    width: {
      type: String,
      default: 'auto'
    },
    height: {
      type: String,
      default: 'auto'
    }
  },
  data: () => ({
    hovering: false
  }),
  computed: {
    img () {
      return this.hovering ? this.hover : this.image
    }
  }
}
</script>

