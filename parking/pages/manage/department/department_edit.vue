
<template>
    <v-card>
        <v-card-title
          class="grey lighten-4 py-4 title"
        >
          แกไขข้อมูลแผนก
        </v-card-title>
        <v-container grid-list-sm class="pa-4">
          <v-layout row wrap>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field
                  prepend-icon="fas fa-credit-card"
                  placeholder="รหัสแผนก"
                  name="std_code"
                   v-model="department_code"
                ></v-text-field>
              </v-layout>
            </v-flex>
            <v-flex xs12 >
              <v-layout align-center>
                <v-text-field
                  prepend-icon="fas fa-city"
                  placeholder="ชื่อแผนก"
                  name="department_name"
                   v-model="department_name"
                ></v-text-field>
              </v-layout>
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
            department_code:"1003",
            department_name:"เทคโนโลยีสารสนเทศ",
          
        
        }
    }
    }
</script>