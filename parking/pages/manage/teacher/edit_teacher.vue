
<template>
    <v-card>
        <v-card-title
          class="grey lighten-4 py-4 title"
        >
          แก้ไขข้อมูลครู / บุคลากร
        </v-card-title>
        <v-container grid-list-sm class="pa-4">
          <v-layout row wrap>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field
                  prepend-icon="fas fa-id-card-alt fa-2x"
                  placeholder="รหัสประจำตัวครู / บุคลากร"
                  name="t_code"
                  v-model="t_code"
                ></v-text-field>
              </v-layout>
            </v-flex>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field 
                  prepend-icon="fas fa-user fa-2x"
                  placeholder="ชื่อ นามสกุล"
                  name="t_name"
                  v-model="t_name"
                ></v-text-field>
              </v-layout>
            </v-flex>
            <v-flex xs4>
              <v-select
                :items="gro1"
                v-model="std_gro1"
                menu-props="auto"
                label="กลุ่มการเรียนที่ 1"
                hide-details
                prepend-icon="fas fa-users"
                single-line
                ></v-select>
            </v-flex>
            <v-flex xs4>
              <v-select
                :items="gro2"
                v-model="std_gro2"
                menu-props="auto"
                label="กลุ่มการเรียนที่ 2"
                hide-details
                prepend-icon="fas fa-users"
                single-line
                ></v-select>
            </v-flex>
            <v-flex xs4>
              <v-select
                :items="gro3"
                v-model="std_gro3"
                menu-props="auto"
                label="กลุ่มการเรียนที่ 3"
                hide-details
                prepend-icon="fas fa-users"
                single-line
                ></v-select>
            </v-flex>
           
          </v-layout>
        </v-container>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn flat color="red lighten-2" @click="">ยกเลิก</v-btn>
          <v-btn flat color="primary" @click="">บันทึก</v-btn>
        </v-card-actions>
    </v-card>
</template>
<script>
    export default {
        layout: 'manage',
        data () {
          return {
            t_code:"7071001",
            t_name:"คุณ ครู",
            std_gro1: '',
            std_gro2: '',
            std_gro3: '',
            gro1: [
              'IT A1'
            ],
            gro2: [
              'IT B1'
            ],
            gro3: [
             'IT C1'
            ]
          }
        },
        async created(){
          this.sh_teacher()
        },
        conf_del(){this.conf_del=true},
            async std_del(){
              let res=await this.$http.get('/student/std_del/'+this.$route.query.std_id)
              if(res.data.ok==true){this.$router.replace('../../manage/student')}
              else{this.danger=true,this.alt_txt=res.data.txt,this.type_api=res.data.alt}
            },
            async sh_teacher(){
              let res=await this.$http.get('/student/sh_teacher/'+this.$route.query.std_id)
              this.std_id=this.$route.query.std_id
              this.std=res.data.student
              this.std_code=res.data.student.std_code
              this.std_pin_id=res.data.student.std_pin_id
              this.std_prename=res.data.student.std_prename
              this.std_name=res.data.student.std_name
              this.std_lname=res.data.student.std_lname
              this.std_birthday=res.data.student.std_birthday
              this.std_gender=res.data.student.std_gender
              this.std_blood=res.data.student.std_blood
              this.g_code=res.data.student.g_code
            },
            async std_update(std_id){
              //console.log("std_id"+std_id)
              let res=await this.$http.post("/student/std_update",{
                
        				std_code:this.std_code,
        				std_pin_id:this.std_pin_id,
        				std_prename:this.std_prename,
        				std_name:this.std_name,
        				std_lname:this.std_lname,
        				std_birthday:this.std_birthday,
        				std_gender:this.std_gender,
        				std_blood:this.std_blood,
        				g_code:this.g_code,
                std_id:std_id,

              })
              console.log(res.data)
                if(res.data.ok==true){this.danger=true,this.alt_txt=res.data.txt,this.type_api=res.data.alt}
            	 else{this.danger=true,this.alt_txt=res.data.txt,this.type_api=res.data.alt}
            },
    }
</script>