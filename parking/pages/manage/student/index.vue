<template>
  <div>
    <div class="cv_header">ข้อมูลนักเรียน / นักศึกษา</div>
  <v-data-table
      :headers="headers"
      :items="std"
      :search="search"
      hide-actions
      :loading=state
      class="elevation-1"
      
    >
    <template slot="headerCell" slot-scope="props">
      <v-tooltip bottom>
        <span slot="activator">
          {{ props.header.text }}
        </span>
        <span>
          {{ props.header.text }}
        </span>
      </v-tooltip>
    </template>
    <template slot="items" slot-scope="props" >
      <tr v-on:click="list_student(props.item.std_id)">
        <td class="text-xs-left xs10">{{ props.item.std_code }}</td>
        <td class="text-xs-left">{{ props.item.std_pin_id }}</td>
        <td class="text-xs-left">{{ props.item.std_prename }}{{ props.item.std_name }} {{ props.item.std_lname }}</td>
        <td class="text-xs-center">{{ props.item.std_gender }}</td>
        <td class="text-xs-center">{{ props.item.std_birthday }}</td>
        <td class="text-xs-center">{{ props.item.g_code }}</td>
      </tr>
    </template>
      <template slot="no-data">
        <v-alert :value="true" color="error" icon="warning">
          ไม่พบข้อมูล :(
        </v-alert>
      </template>
  </v-data-table>
   <!-- <div class="text-xs-center pt-2">
      <v-pagination v-model="pagination.page" :length="pages"></v-pagination>
    </div> -->
  </div>
</template>

<script>
  export default {
    layout: 'manage',
    data () {
      return {
        state:true,
        search: '',
        pagination: {},
        selected: [],
        headers: [
          {text: 'รหัสนักศึกษา',align: 'left',sortable: false, value: 'name'},
          { text: 'รหัสประจำตัว', value: 'รหัสประจำตัว',align: 'left', sortable: false,},
          { text: 'ชื่อ', value: 'ชื่อ',align: 'center',sortable: false,  },
          { text: 'เพศ', value: 'เพศ',align: 'center',sortable: false,  },
          { text: 'วันเกิด', value: 'วันเกิด',align: 'center',sortable: false,  },
          { text: 'กลุ่ม', value: 'กลุ่ม',align: 'center',sortable: false,  },
        ],
        std:[]
      }
    },
    async created(){
      // this.state=true
      let res=await this.$http.get('/student/list')
      //  console.log(res.data.student)
      this.std=res.data.student
      this.state=false
      
    },
    computed: {
      pages () {
        if (this.pagination.rowsPerPage == null || this.pagination.totalItems == null) return 0
        return Math.ceil(this.pagination.totalItems / this.pagination.rowsPerPage)
      },
      // filter_std(){
      //   return this.std.filter(>>ชื่อตัวแปร<<=>''+>>ชื่อตัวแปร<<.>>field<<===this.filter)
      // },
    },
    methods:{
      list_student(std_id){
        this.$router.replace('../manage/student/edit_student?std_id='+std_id)
      },
     
    }
  }
</script>