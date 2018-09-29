
<template>
    <v-card>
        <v-card-title
          class="grey lighten-4 py-4 title"
        >
          แก้ไขข้อมูลนักเรียน / นักศึกษา
        </v-card-title>
        <v-container grid-list-sm class="pa-4">
          <v-layout row wrap>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field
                  prepend-icon="fas fa-id-card-alt fa-2x"
                  placeholder="รหัสประจำตัวนักเรียน / นักศึกษา"
                  name="std_code"
                  v-model="std_code"
                ></v-text-field>
              </v-layout>
            </v-flex>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field
                  prepend-icon="fas fa-id-card fa-2x"
                  placeholder="รหัสประจำตัวประชาชน"
                  name="std_pin_id"
                  v-model="std_pin_id"
                ></v-text-field>
              </v-layout>
            </v-flex>
           <v-flex xs4>
              <v-select 
                cv_autofont
                :items="item_std_prename"
                v-model="std_prename"
                menu-props="auto"
                label="คำนำหน้าชื่อ"
                hide-details
                prepend-icon="fas fa-user"
                
                ></v-select>
            </v-flex>
            <v-flex xs4 >
                <v-text-field
                  prepend-icon=""
                  placeholder="ชื่อ"
                  name="std_name"
                  v-model="std_name"
                ></v-text-field>
            </v-flex>
            <v-flex xs4 >
                <v-text-field
                  prepend-icon=""
                  placeholder="นามสกุล"
                  name="std_lname"
                  v-model="std_lname"
                ></v-text-field>
            </v-flex>
            <v-flex xs12>
              <v-text-field
                prepend-icon="fas fa-birthday-cake"
                placeholder="วัน เดือน ปี เกิด เช่น 8 พฤษภาคม 2540"
                name="std_birthday"
                v-model="std_birthday"
                ></v-text-field>
            </v-flex>
            
            <v-flex xs6>
              <v-select
                :items="gd"
                v-model="std_gender"
                menu-props="auto"
                hide-details
                label="เพศ"
                prepend-icon="fas fa-transstd_gender"
               
              ></v-select>
            </v-flex>
            <v-flex xs6>
              <v-select
                :items="bld"
                v-model="blood"
                menu-props="auto"
                hide-details
                label="กรุ๊ปเลือด"
                prepend-icon="fas fa-hospital"
              
              ></v-select>
            </v-flex>
           
          </v-layout>
        </v-container>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn flat color="red lighten-2" >ยกเลิก</v-btn>
          <v-btn flat color="primary" >บันทึก</v-btn>
        </v-card-actions>
    </v-card>
</template>

<script>
    export default {
        layout: 'manage',

        data () {
          return {
            std_code:'',
            std_pin_id:"",
            std_prename:"",
            std_name:"",
            std_lname:"",
            std_birthday:"",
            blood: '',
            std_gender:'',

            bld:['A', 'B', 'O','AB'],
            gd:['ชาย','หญิง'],
            item_std_prename:['นาย','นางสาว','นาง',],

          }
          
        
        },
        async created(){
          let res=await this.$http.get('/student/sh_std/'+this.$route.query.std_id)
          this.std=res.data.student
          this.std_code=res.data.student.std_code
          this.std_pin_id=res.data.student.std_pin_id
          this.std_prename=res.data.student.std_prename
          this.std_name=res.data.student.std_name
          this.std_lname=res.data.student.std_lname
          this.std_birthday=res.data.student.std_birthday
          this.std_gender=res.data.student.std_gender
          this.std_code=res.data.student.std_code
        },
    }
</script>