<template>
  <div>
    <div class="grid">
      <div
        class="grid__col grid__col--desk-6 grid__col--tabl-6 grid__col--mobm-12"
      >
        <h4>Articles</h4>
        <div class="stories">
          <div to="/whitefield" class="stories__item story-item">
            <div class="story-item__image">
              <img src="https://picsum.photos/300/175" alt="" />
            </div>
            <div class="story-item__desc">
              <p>
                Rose was an Anglo-Indian lady who lived in Whitefield over 150
                years ago. Know More and Immerse in a day in her life...
              </p>
            </div>
          </div>
          <div class="stories__item story-item story-item--dim">
            <div class="story-item__image">
              <img src="https://picsum.photos/300/175?a" alt="" />
            </div>
            <div class="story-item__desc">
              <p>
                Engage with a Jalore local… watch Ramji’s place-story...
              </p>
            </div>
          </div>
          <div class="stories__item story-item story-item--dim">
            <div class="story-item__image">
              <img src="https://picsum.photos/300/175?b" alt="" />
            </div>
            <div class="story-item__desc">
              <p>
                Experience Ravanasamudram …walk around, meet some locals...
              </p>
            </div>
          </div>
        </div>
      </div>
      <div
        class="grid__col grid__col--desk-6 grid__col--tabl-6 grid__col--mobm-12"
      >
        <h4>Whitefield</h4>

        <div class="maps">
          <img src="/iimb-demo/img/maps.jpg" alt="" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  head() {
    return {
      title: 'Home',
    }
  },
}
</script>

<style lang="scss">
.stories {
  margin-bottom: -1.2rem;
}

.story-item {
  display: flex;
  margin-bottom: 1.2rem;
  color: $color-default;

  &:hover {
    color: $color-default;
  }

  &--dim {
    filter: grayscale(80%);
    opacity: 0.5;
  }

  &__image {
    img {
      border-radius: 0.6rem;
      width: 20rem;
    }
  }

  &__desc {
    padding-left: 1.2rem;
  }
}

.maps {
  img {
    border-radius: 0.4rem;
    width: 100%;
  }
}
</style>
