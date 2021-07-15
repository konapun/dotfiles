lua << EOF
package.loaded['colors.system'] = nil
package.loaded['colors.system.util'] = nil
package.loaded['colors.system.colors'] = nil
package.loaded['colors.system.theme'] = nil
package.loaded['colors.system.functions'] = nil

require('colors.system').set()
EOF
