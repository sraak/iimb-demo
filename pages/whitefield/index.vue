<template>
  <div>
    <div class="grid">
      <div
        class="grid__col grid__col--desk-6 grid__col--tabl-6 grid__col--mobm-12"
      >
        <div class="video-container">
          <video
            v-if="!videoFInished"
            ref="player"
            autoplay
            @ended="
              videoFinished = true
              playing = false
            "
            @play="playing = true"
            @pause="playing = false"
          >
            <source src="/iimb-demo/video/intro.mp4" type="video/mp4" />
          </video>
          <div class="video-overlay" @click.prevent="playPause()">
            <i
              v-show="!playing"
              class="far fa-play-circle"
              style="color: #eee; font-size: 4.8rem;"
            ></i>
          </div>
          <div v-if="videoFinished" class="video-overlay">
            <div class="points">
              <div
                class="point point--one"
                style="left: 48%; top: 16.5%;"
              ></div>
              <div class="tooltip" style="left: 48%; top: 16.5%;">
                This tank, historically attributed to the Ganga period (1st
                century CE), is one of the largest water-bodies of the city and
                today, one of the most polluted as well.
              </div>
              <div class="point point--two" style="left: 95%; top: 79%;"></div>
              <div class="tooltip" style="left: 95%; top: 79%;">
                O Form is how the name ‘Hope Farm’ sounds in the local dialect.
                A colonial-period farmhouse of that name once stood at this
                junction. Know More (click leads to Rose White character page).
              </div>
              <div
                class="point point--three"
                style="left: 84%; top: 78.5%;"
              ></div>
              <div class="tooltip" style="left: 84%; top: 78.5%;">
                One of the benchmarks of the GTS (The Great Trignometrical
                Survey) was located close to Kadugodi Railway station.
              </div>
              <div
                class="point point--four"
                style="left: 12.5%; top: 74%;"
              ></div>
              <div class="tooltip" style="left: 12.5%; top: 74%;">
                The road from Hope Farm junction to Hoodi junction was laid by
                Italian prisoners-of-war, who were housed in temporary barracks
                near Kadugodi plantation, during World War II.
              </div>
            </div>
          </div>
        </div>
      </div>
      <div
        class="grid__col grid__col--desk-6 grid__col--tabl-6 grid__col--mobm-12"
      >
        <h4>Whitefield</h4>
        <p>
          Whitefield, Bengaluru is well-known as an IT hub - India’s Silicon
          Valley. What histories and geographies does this label hide? Come,
          experience its unscripted stories. For topophiles, who know the area,
          we add value by offering opportunities to re-look and re-imagine the
          location, through well-researched character-based narratives.
        </p>
        <p>
          For budding topophiles, we create value by offering an enriching and
          engaging experience of the area, beyond its mainstream understanding.
        </p>

        <div class="space"></div>

        <div class="characters">
          <nuxt-link to="/whitefield/char-01" class="character">
            <img src="/iimb-demo/img/characters/char-01.png" />
            <label>Krishnaiah</label>
          </nuxt-link>
          <nuxt-link to="/whitefield/char-02" class="character">
            <img src="/iimb-demo/img/characters/char-02.png" />
            <label>Arullamma</label>
          </nuxt-link>
          <nuxt-link to="/whitefield/char-03" class="character">
            <img src="/iimb-demo/img/characters/char-03.png" />
            <label>Rose White</label>
          </nuxt-link>
        </div>
      </div>
    </div>

    <div class="space"></div>

    <div>
      <p>
        <small>
          <strong>Footnote:</strong>
          All content is based on extensive field research in the area which
          commenced way back in 2009. Click for brief summary of resources.
        </small>
      </p>
    </div>

    <div class="space"></div>
    <div class="space"></div>
    <div class="space"></div>
    <div class="space"></div>

    <div class="text--center">
      <nuxt-link to="/" class="link-back">
        <i class="far fa-arrow-alt-circle-left"></i>&nbsp;&nbsp;Main Page
      </nuxt-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      videoFinished: false,
      playing: false,
    }
  },

  methods: {
    playPause() {
      if (this.$refs.player.paused) {
        this.$refs.player.play()
      } else {
        this.$refs.player.pause()
      }
    },
  },
}
</script>

<style lang="scss">
.points {
  background-image: url(/iimb-demo/img/intro-img.png);
  background-position: center;
  background-size: cover;
  height: 100%;
  position: relative;
  width: 100%;

  .point {
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 1.2rem;
    cursor: pointer;
    height: 2.4rem;
    margin-left: -1.2rem;
    margin-top: -1.2rem;
    position: absolute;
    transition: all 0.3s;
    width: 2.4rem;

    & + div {
      display: none;
    }

    &:hover {
      background-color: $color-secondary;

      & + div {
        display: block;
      }
    }
  }
}

.tooltip {
  background-color: #fff;
  border-radius: 0.4rem;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  font-size: 1.4rem;
  padding: 0.8rem 1.2rem;
  position: absolute;
  margin-top: 1.6rem;
  margin-left: 1.6rem;
  width: 24rem;
  z-index: 100;
}
</style>
