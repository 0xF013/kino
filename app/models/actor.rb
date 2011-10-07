class Actor < User
  
  has_one :profile, :class_name => 'ActorProfile'
  has_one :contact_info
  
  #actor + employee
    #current workplace    
    
  #NOTE: this also goes to employee
  #contact_info
    ##emails
    ##phones
    #------
    #website    
  
  #profile
    #weight -i
    #height -i
    #emploi
    #professional_profile
    #passport -d
    #additional
    #special_skills
    #-----
    ##experience
    ##contracts
    ##children
    #-----
    #driver licence -1
    

  
  #model_info
    #chest -i
    #waist -i
    #hip -i
    #constitution
    #clothing_size
    #shoe_size -i
    #eye_color
    #hair_color
    #hair_length -i
    #appearence
    
  

    
  
end
