<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <p>
      {{ response }}<span v-if="!success">{{ elipsis }}</span>
    </p>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  data() {
    return {
      response: "Testando comunicação com backend",
      elipsis: '.',
      success: false,
    }
  },
  methods: {
    pingMessage() {
      console.log(this)
      this.$http.get('http://localhost/api/v1/hello_world/show')
          .then((response) => {
            console.log(response.data)
          })
    }
  },
  mounted() {
    setInterval(this.pingMessage, 3000)

    setInterval(() => {
      if(this.elipsis.length > 3) this.elipsis = ''
      this.elipsis += '.'
    }, 600)
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
