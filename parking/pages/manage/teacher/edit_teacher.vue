
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
        }
    }
</script>