<template>
  <div>
    <div class="cv_header">ข้อมูลกลุ่ม</div>
  <v-data-table
      :headers="headers"
      :items="desserts"
      :search="search"
      :pagination.sync="pagination"
      hide-actions
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
    <template slot="items" slot-scope="props">
      <td class="text-xs-left">{{ props.item.t_code }}</td>
      <td class="text-xs-left">{{ props.item.t_name }}</td>
    </template>
  </v-data-table>
   <div class="text-xs-center pt-2">
      <v-pagination v-model="pagination.page" :length="pages"></v-pagination>
    </div>
  </div>
</template>

<script>
  export default {
    layout: 'manage',
    data () {
      return {
        search: '',
        pagination: {},
        selected: [],
        headers: [
          { text: 'รหัสกลุ่ม', value: 'รหัสกลุ่ม',align: 'left',sortable: false, },
          { text: 'ชื่อกลุ่ม', value: 'ชื่อกลุ่ม',align: 'left',sortable: false,  },
        ],
        desserts: [
          {
            value: false,
            t_code: '201',
            t_name: 'A1',
          
          },
           {
              value: false,
            t_code: '202',
            t_name: 'A2',
          },
          {
              value: false,
            t_code: '203',
            t_name: 'B1',
          },
           {
              value: false,
            t_code: '204',
            t_name: 'B2',
          },
           {
              value: false,
            t_code: '205',
            t_name: 'C1',
          },
           {
              value: false,
            t_code: '206',
            t_name: 'C2',
          },
          {
              value: false,
            t_code: '207',
            t_name: 'D1',
          },
           {
             value: false,
            t_code: '208',
            t_name: 'D5',
          },
          {
              value: false,
            t_code: '209',
            t_name: 'E1',
          },
           {
              value: false,
            t_code: '210',
            t_name: 'E5',
          },
     
        ]
      }
    },
    computed: {
      pages () {
        if (this.pagination.rowsPerPage == null || this.pagination.totalItems == null) return 0
        return Math.ceil(this.pagination.totalItems / this.pagination.rowsPerPage)
      }
    }
  }
</script>