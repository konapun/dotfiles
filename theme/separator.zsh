# const separator = {
#   ARROW: {
#     name: 'arrow',
#     left: {
#       start: '',
#       end: '',
#       separator: ''
#     },
#     right: {
#       start: '',
#       end: '',
#       separator: ''
#     }
#   },
#   BLOCK: {
#     name: 'block',
#     left: {
#       start: '',
#       end: '',
#       separator: '\\uE621'
#     },
#     right: {
#       start: '',
#       end: '',
#       separator: '\\uE621'
#     }
#   },
#   SLANT: {
#     name: 'slant',
#     left: {
#       start: '\\uE0B8',
#       end: '\\uE0B8',
#       separator: '\\uE0B9'
#     },
#     right: {
#       start: '\\uE0BA',
#       end: '\\uE0BA',
#       separator: '\\uE0BB'
#     }
#   },
#   ROUND: {
#     name: 'round',
#     left: {
#       start: '',
#       end: '',
#       separator: ''
#     },
#     right: {
#       start: '',
#       end: '',
#       separator: ''
#   }
# }

declare -A SEPARATOR_ARROW
SEPARATOR_ARROW[name]="arrow"
SEPARATOR_ARROW[left_start]=""
SEPARATOR_ARROW[left_end]=""
SEPARATOR_ARROW[left_separator]=""
SEPARATOR_ARROW[right_start]=""
SEPARATOR_ARROW[right_end]=""
SEPARATOR_ARROW[right_separator]=""

declare -A SEPARATOR_BLOCK
SEPARATOR_BLOCK[name]="block"
SEPARATOR_BLOCK[left_start]=$THEMER_EMPTY_STRING
SEPARATOR_BLOCK[left_end]=$THEMER_EMPTY_STRING
SEPARATOR_BLOCK[left_separator]="\\uE621"
SEPARATOR_BLOCK[right_start]=$THEMER_EMPTY_STRING
SEPARATOR_BLOCK[right_end]=$THEMER_EMPTY_STRING
SEPARATOR_BLOCK[right_separator]="\\uE621"

declare -A SEPARATOR_SLANT
SEPARATOR_SLANT[name]="slant"
SEPARATOR_SLANT[left_start]="\\uE0B8"
SEPARATOR_SLANT[left_end]="\\uE0B8"
SEPARATOR_SLANT[left_separator]="\\uE0B9"
SEPARATOR_SLANT[right_start]="\\uE0BA"
SEPARATOR_SLANT[right_end]="\\uE0BA"
SEPARATOR_SLANT[right_separator]="\\uE0BB"

declare -A SEPARATOR_ROUND
SEPARATOR_ROUND[name]="round"
SEPARATOR_ROUND[left_start]="\\uE0B4"
SEPARATOR_ROUND[left_end]="\\uE0B4"
SEPARATOR_ROUND[left_separator]="\\uE0B5"
SEPARATOR_ROUND[right_start]="\\uE0B6"
SEPARATOR_ROUND[right_end]="\\uE0B6"
SEPARATOR_ROUND[right_separator]="\\uE0B7"

