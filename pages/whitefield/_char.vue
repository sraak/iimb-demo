<template>
  <div>
    <div class="grid">
      <div
        class="grid__col grid__col--desk-3 grid__col--tabl-3 grid__col--mobm-12"
      >
        <img
          :src="`/img/characters/detail/${$route.params.char}.png`"
          class="image"
        />
      </div>
      <div
        class="grid__col grid__col--desk-6 grid__col--tabl-6 grid__col--mobm-12"
      >
        <div>
          <h4>{{ names[$route.params.char] }}</h4>
          <p>
            {{ desc[$route.params.char] }}
          </p>
        </div>

        <div class="space"></div>

        <div class="characters">
          <nuxt-link to="/whitefield/char-01" class="character">
            <img src="/img/characters/char-01.png" />
            <label>Krishnaiah</label>
          </nuxt-link>
          <nuxt-link to="/whitefield/char-02" class="character">
            <img src="/img/characters/char-02.png" />
            <label>Arullamma</label>
          </nuxt-link>
          <nuxt-link to="/whitefield/char-03" class="character">
            <img src="/img/characters/char-03.png" />
            <label>Rose White</label>
          </nuxt-link>
        </div>
      </div>
      <div
        class="grid__col grid__col--desk-3 grid__col--tabl-3 grid__col--mobm-12"
      >
        <div class="text--center">
          <a
            href="#"
            class="button button--primary button--large button--fixed"
            @click.prevent="$refs.knowMore.show()"
            >Know More</a
          >
        </div>

        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>
        <div class="space"></div>

        <div class="text--center">
          <div class="button--fixed">
            <div
              class="video-container"
              @click.prevent="$refs.videoPopup.show()"
            >
              <img src="/img/video-thumb.png" class="image" />
              <div class="video-overlay">
                <i
                  class="far fa-play-circle"
                  style="color: #eee; font-size: 4.8rem;"
                ></i>
              </div>
            </div>
          </div>

          <div class="space"></div>

          <a
            href="#"
            class="button button--primary button--large button--fixed"
            @click.prevent="$refs.videoPopup.show()"
          >
            One Day
          </a>
        </div>
      </div>
    </div>

    <div class="space"></div>
    <div class="space"></div>
    <div class="space"></div>
    <div class="space"></div>

    <div class="text--center">
      <nuxt-link to="/whitefield" class="link-back">
        <i class="far fa-arrow-alt-circle-left"></i>&nbsp;&nbsp;Whitefield
      </nuxt-link>
    </div>

    <popup ref="knowMore">
      <div>
        <img src="/img/know-more.jpg" class="image" />
      </div>
      <div class="space"></div>

      <div class="text--center">
        <a href="#" class="button button--primary button--large">
          <i class="far fa-arrow-alt-circle-down"></i> &nbsp;&nbsp;Download Now
        </a>
        <a
          href="#"
          class="button button--large"
          @click.prevent="$refs.knowMore.hide()"
        >
          Close
        </a>
      </div>
    </popup>

    <popup ref="videoPopup">
      <div class="video-container">
        <video src="/video/oneday.mp4" controls></video>
      </div>

      <div class="space"></div>

      <div class="text--center">
        <a
          href="#"
          class="button button--outline"
          @click.prevent="$refs.videoPopup.hide()"
        >
          Close
        </a>
      </div>
    </popup>
  </div>
</template>

<script>
import popup from '~/components/popup'
export default {
  components: { popup },

  data() {
    return {
      names: {
        'char-01': 'Krishnaiah',
        'char-02': 'Arulamma',
        'char-03': 'Rose White',
      },
      desc: {
        'char-01':
          'is a 60 year old small-scale farmer, a Tigala. He grew up in Ramagondanahalli. His traditional caste occupation was market gardening – growing flowers and vegetables for the market.',
        'char-02':
          'says she is over 100 years old. She used to work as a maid in an Anglo-Indian household in Whitefield. She grew up in Puducherry – not Puducherry, Tamil Nadu but the settlement of that name near Whitefield.',
        'char-03':
          'lived in Whitefield over 150 years ago. She and her husband, D S White, were instrumental in establishing the Anglo-Indian settlement of Whitefield, which is so named after D S White. It was to be “one of thousand such settlements across India”.',
      },
    }
  },
}
</script>

<style lang="scss">
.button--fixed {
  margin: 0 auto;
  width: 18rem;
}
</style>
