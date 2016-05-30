<template>
  <div id="app">
    <hello></hello>
    <p>
      Welcome to the SPA deploy demo!
    </p>
    <p>
      To get a better understanding of how this works, check out
      <a href="https://github.com/niranjan94/spa-deploy-demo/blob/master/deploy.sh" target="_blank">deploy.sh</a>.
    </p>
    <p>
      You may also want to checkout
      <a href="https://github.com/niranjan94/spa-deploy-demo/blob/master/.travis.yml" target="_blank">.travis.yml</a>.
    </p>
  </div>
</template>

<script>
import Hello from './components/Hello'

export default {
  components: {
    Hello
  }
}
</script>

<style>
html {
  height: 100%;
}

body {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
}

#app {
  color: #2c3e50;
  margin-top: -100px;
  max-width: 600px;
  font-family: Source Sans Pro, Helvetica, sans-serif;
  text-align: center;
}

#app a {
  color: #42b983;
  text-decoration: none;
}

.logo {
  width: 100px;
  height: 100px
}
</style>
