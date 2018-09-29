
<template>
    <v-card>
        <v-card-title
          class="grey lighten-4 py-4 title"
        >
          เพิ่มข้อมูลครู / บุคลากร
        </v-card-title>
        <v-container grid-list-sm class="pa-4">
          <v-layout row wrap>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field
                  prepend-icon="fas fa-id-card-alt fa-2x"
                  placeholder="รหัสประจำตัวครู / บุคลากร"
                  name="t_code"
                ></v-text-field>
              </v-layout>
            </v-flex>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field 
                  prepend-icon="fas fa-user fa-2x"
                  placeholder="ชื่อ นามสกุล"
                  name="t_name"
                ></v-text-field>
              </v-layout>
            </v-flex>
            <v-flex xs4>
              <v-select
                :items="gro"
                v-model="e1"
                menu-props="auto"
                label="กลุ่มการเรียนที่ 1"
                hide-details
                prepend-icon="fas fa-users"
                single-line
                ></v-select>
            </v-flex>
            <v-flex xs4>
              <v-select
                :items="gro"
                v-model="e2"
                menu-props="auto"
                label="กลุ่มการเรียนที่ 2"
                hide-details
                prepend-icon="fas fa-users"
                single-line
                ></v-select>
            </v-flex>
            <v-flex xs4>
              <v-select
                :items="gro"
                v-model="e3"
                menu-props="auto"
                hide-details
                label="กลุ่มการเรียนที่ 3"
                prepend-icon="fas fa-users"
                single-line
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
            e1: 'เลือกกลุ่มการเรียนที่ 1',
            e2: 'เลือกกลุ่มการเรียนที่ 2',
            e3: 'เลือกกลุ่มการเรียนที่ 3',
            items: [
              { text: 'gro 1' },
              { text: 'gro 2' },
              { text: 'gro 3' },
              { text: 'gro 4' },
              { text: 'gro 5' },
              { text: 'gro 6' },
              { text: 'gro 7' }
            ],
            gro: [
              'IT A1', 'IT B1', 'IT C1', 'IT D1',
              'IT E1', 
            ]
          }
    
        }
    }
</script>