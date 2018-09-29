<template>
  <div>
    <div class="cv_header">ข้อมูลแผนก</div>
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
          { text: 'รหัสแผนก', value: 'รหัสแผนก',align: 'left',sortable: false, },
          { text: 'ชื่อแผนก', value: 'ชื่อแผนก',align: 'left',sortable: false,  },
        ],
        desserts: [
          {
            value: false,
            t_code: '1001',
            t_name: 'แผนกวิชาคอมพิวเตอร์ธุุรกิจ',
          
          },
           {
              value: false,
            t_code: '1002',
            t_name: 'แผนกวิชาบัญชี',
          },
          {
              value: false,
            t_code: '1003',
            t_name: 'แผนกวิชาเทคโนโลยีสารสนเทศ',
          },
           {
              value: false,
            t_code: '1004',
            t_name: 'แผนกวิชาช่างยนต์',
          },
           {
              value: false,
            t_code: '1005',
            t_name: 'แผนกวิชาไฟฟ้า',
          },
           {
              value: false,
            t_code: '1006',
            t_name: 'แผนกวิชาช่างกล',
          },
          {
              value: false,
            t_code: '1007',
            t_name: 'แผนกวิชาการขายการตลาด',
          },
           {
             value: false,
            t_code: '1008',
            t_name: 'แผนกวิชาโยธา',
          },
          {
              value: false,
            t_code: '1009',
            t_name: 'แผนกวิชาสถาปัตยกรรม',
          },
           {
              value: false,
            t_code: '1010',
            t_name: 'แผนกวิชาอิเล็กทรอนิกส์',
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