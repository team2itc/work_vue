
<template>
    <v-card>
        <v-card-title
          class="grey lighten-4 py-4 title"
        >
          เพิ่มข้อมูลนักเรียน / นักศึกษา
        </v-card-title>
        <v-container grid-list-sm class="pa-4">
          <v-layout row wrap>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field
                  prepend-icon="fas fa-id-card-alt fa-2x"
                  placeholder="รหัสประจำตัวนักเรียน / นักศึกษา"
                  name="std_code"
                ></v-text-field>
              </v-layout>
            </v-flex>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field
                  prepend-icon="fas fa-id-card fa-2x"
                  placeholder="รหัสประจำตัวประชาชน"
                  name="pin_id"
                ></v-text-field>
              </v-layout>
            </v-flex>
           <v-flex xs4>
              <v-select
                :items="item_pre_name"
                v-model="pre_name"
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
                ></v-text-field>
            </v-flex>
            <v-flex xs4 >
                <v-text-field
                  prepend-icon=""
                  placeholder="นามสกุล"
                  name="std_name"
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
                v-model="gender"
                menu-props="auto"
                hide-details
                label="เพศ"
                prepend-icon="fas fa-transgender"
              
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
            blood: '',
            gender:'',
            pre_name:"",
            bld:[
              'A', 'B', 'O','AB' 
            ],
            gd:['ชาย','หญิง'],
            item_pre_name:['นาย','นางสาว','นาง',],

          }
          
        
        }
    }
</script>