module ModalOverlayHelper
   
   Configuration = {
      :use_onclick => true,
      :show  => {
         :onclick => 'ModalOverlay.fetch(); return false;', #set_url updates this with the right parameter.
         :class    => 'modal-overlay-show'
      },
      :hide  => {
         :onclick  => ';ModalOverlay.hide(); return false;',
         :class    => 'modal-overlay-hide'
      }
   }
   
   def link_to_overlay(type, *args)

      type_options = Configuration[type]

      name = args.first
      url = url_for(args.second)
      set_url(url)

      link_to(name, '#', :onclick => type_options[:onclick])
   end
   
   def link_to_show_overlay(*args)
      link_to_overlay(:show, *args)
   end
   
   def link_to_hide_overlay(*args)
      link_to_overlay(:hide, *args)
   end
   
   def set_url(url)
     Configuration[:show][:onclick] = 'ModalOverlay.fetch("' + root_url.chop + url + '"); return false;'
   end
end
