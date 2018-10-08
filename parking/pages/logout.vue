
<script>
  export default {
    
    created(){
        sessionStorage.removeItem('username');
        sessionStorage.removeItem('password');
        this.$router.push({path: './'})
    },
  
  }
</script>