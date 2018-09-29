<template>
  <div>
    <div class="cv_header">ข้อมูลครู / บุคลากร</div>
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
      <td class="text-xs-right">{{ props.item.t_group1 }}</td>
      <td class="text-xs-right">{{ props.item.t_group2 }}</td>
      <td class="text-xs-right">{{ props.item.t_group3 }}</td>
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
          { text: 'รหัสประจำตัวครู / บุคลากร', value: 'รหัสประจำตัวครู / บุคลากร',align: 'left',sortable: false, },
          { text: 'ชื่อ', value: 'ชื่อ',align: 'left',sortable: false,  },
          { text: 'กลุ่ม1', value: 'กลุ่ม1',align: 'right',sortable: false,  },
          { text: 'กลุ่ม2', value: 'กลุ่ม2',align: 'right',sortable: false,  },
          { text: 'กลุ่ม3', value: 'กลุ่ม3',align: 'right',sortable: false,  },
        ],
        desserts: [
          {
            value: false,
            t_code: '1369900478941',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          
          },
           {
              value: false,
            t_code: '1369900478942',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          },
          {
              value: false,
            t_code: '1369900478943',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          },
           {
              value: false,
            t_code: '1369900478944',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          },
           {
              value: false,
            t_code: '1369900478945',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          },
           {
              value: false,
            t_code: '1369900478946',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          },
          {
              value: false,
            t_code: '1369900478947',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          },
           {
             value: false,
            t_code: '1369900478948',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          },
          {
              value: false,
            t_code: '1369900478949',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
          },
           {
              value: false,
            t_code: '1369900478910',
            t_name: 'นายคุณ ครู',
            t_group1:'54321',
            t_group2:'54322',
            t_group3:'54323',
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