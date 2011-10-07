ActiveAdmin.register BlogPost do
    form do |f|
      f.inputs do
        f.input :title
        f.input :body, :as => :text
      end
      f.buttons
    end
end
