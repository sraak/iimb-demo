<template>
  <div v-if="showing" class="popup-overlay" @click.prevent="hide()">
    <div class="popup-container" @click.stop>
      <slot />
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      showing: false,
    }
  },

  methods: {
    show() {
      this.showing = true
    },

    hide() {
      this.showing = false
    },
  },
}
</script>

<style lang="scss">
.popup-overlay {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(255, 255, 255, 0.8);
  display: flex;
  align-items: center;
  justify-content: center;
}

.popup-container {
  background-color: $color-white;
  border-radius: 0.8rem;
  box-shadow: 0 2px 14px rgba(0, 0, 0, 0.2);
  max-width: 64rem;
  max-height: 80vh;
  overflow-y: auto;
  padding: 2.4rem 2.4rem;
  width: 100%;
}
</style>
