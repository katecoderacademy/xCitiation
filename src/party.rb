#require_relative "law-report"
require_relative "help"
require_relative "data"
#require_relative "xcitation"
#require 'json'
#file = File.read('data.json')
#data_hash = JSON.parse(file)



class Party
    # attr_accessor :partyname
    # attr_accessor :company_suffix
    # attr_accessor :bracket_status 
    # attr_accessor :co_suffix
    # attr_accessor :admin
    # attr_accessor :party_suffix
    # attr_accessor :state_abreviation
    # attr_accessor :year_date
    # attr_accessor :is_company
    # attr_accessor :is_government
     def initialize
    #     @partyname = partyname
    #     @company_suffix = company_suffix
    #     @bracket_status = bracket_status    
    #     @co_suffix = co_suffix  
    #     @admin = admin
    #     @party_suffix = party_suffix
    #     @state_abreviation = state_abreviation
    #     @year_date = year_date
    #
    #@file = File.read('data.json')
    #@data_hash = JSON.parse(@file)
        
      puts "test"
     end    

    #def year
         # puts "what year is this matter?"
         # @user_selections[:year_queries] = gets.strip
         # #File.write('data.json', JSON.dump(@data_hash))
    # end
    # def company
    #puts "Is the party a company? #{@prompt[:bool_question]}"
    is_company = gets.strip.to_i

            if is_company == 1 #Start helping user define their company party "==y"
   #         @user_selections["is_company_#{@party_number[:user]}"] == 1
            
          
       
            puts "Enter the number of the relevant company structure, or 6 for a foreign registered company."
            @company_types.each.with_index do  |type, index| 
            puts "#{index + 1}. #{type}"
                    end
            company_answer = gets.strip.to_i
                    case company_answer
                        when 1
                           @user_selections["company_suffix_#{@party_number[:user]}"] = "Ltd"
                           
                        when 2
                           @user_selections["company_suffix_#{@party_number[:user]}"] = "Pty"
                           
                        when 3
                           @user_selections["company_suffix_#{@party_number[:user]}"] = "Pty Ltd"
                           
                        when 4
                           @user_selections["company_suffix_#{@party_number[:user]}"] = "Inc"
                           
                        when 5
                           @user_selections["company_suffix_#{@party_number[:user]}"] = "NL"
                           
                        when 6
                            puts "Please enter the relevant suffix." 
                           @user_selections["company_suffix_#{@party_number[:user]}"] = gets.strip
                           
                            #no_insolvency
                    end
                
                # elsif puts "enter a number between 1 and #{company_types.length}."
            #if is_company == 2
            #puts "enter either 1 or 2"
            puts "Is the company under external management? #{@data_hash["bool_question"]}"
                is_under_admin = gets.strip.to_i

            if is_under_admin == 1 
                #if program_data.include?("company")
                #else
                puts "Select the relevant type of administration arrangement"
                @admin_types.each.with_index do  |type, index| puts "#{index + 1}. #{type}"
                end  
                admin_answer = gets.strip.to_i
                case admin_answer
                when 1
                   @data_hash["administration_status_#{@data_hash["party_number"]}"]  = "(in liq)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 2
                   @data_hash["administration_status_#{@data_hash["party_number"]}"]  = "(in prov liq)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 3
                   @data_hash["administration_status_#{@data_hash["party_number"]}"]  = "(admin appt)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 4
                   @data_hash["administration_status_#{@data_hash["party_number"]}"]  = "(mgr apptd)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 5
                   @data_hash["administration_status_#{@data_hash["party_number"]}"]  = "(rec apptd)"
                   File.write('data.json', JSON.dump(@data_hash))
                # else
                #     puts "enter a number between 1 and #{admin_types.length}."
                #end
                end
                #elsif admin_answer = n - what does this mean?
            #else puts "enter either 1 or 2. "
            end
        

    
            puts "Is the structure of the name NAME and company?#{@data_hash["bool_question"]}"
            is_co = gets.strip.to_i
            if is_co == 1 #Start helping user define their company party
            puts "The appropriate suffix has been addeed to the name.\nPlease do not include characters after the 'and' when entering the party name"
               @data_hash["co_suffix_#{@data_hash["party_number"]}"] = "& Co"
               File.write('data.json', JSON.dump(@data_hash))


            #elsif is_co == 2
            # else puts "enter either 1 or 2." #error handling
            # return #error handling
            end
         end
        File.write('data.json', JSON.dump(@data_hash))
    # end
    # def government
        if @data_hash["is_company_#{@data_hash["party_number"]}"] != 1
        puts "Is it a government part or representing government? #{@data_hash["bool_question"]}"
            is_government = gets.strip.to_i
        end
        if is_government == 1 #Start helping user define which government
           @data_hash["is_government_#{@data_hash["party_number"]}"] = "1"
            government_types = ["State/Territory Government", "Australian Government", "Foreign Government"]
            puts "Select the relevant type of government"
            government_types.each.with_index do  |type, index| puts "#{index + 1}. #{type}"
            end
            government_answer = gets.strip.to_i
                  
        # elsif is_government == 2 
        
        # else puts "enter either 1 or 2. " # this is error handling
        end        
            
        if government_answer == 1
            #puts "Enter a number between 1 and #{@states.length}."
            "Enter the relevant state."
            @states.each.with_index do  |type, index| puts "#{index + 1}. #{type}"
            end
            states_answer = gets.strip.to_i
            case states_answer #this both notes that the party is a state based party, and puts the name of it in shortened form into the bracket section
                when 1
                   @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(Vic)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 2
                   @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(NSW)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 3
                   @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(QLD)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 4
                   @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(Tas)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 5
                   @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(SA)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 6
                   @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(NT)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 7
                   @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(ACT)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 8
                   @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(WA)"
                   File.write('data.json', JSON.dump(@data_hash))
                when 9
                    aus_ter_selection = 0
                    aus_ter_answer = 0
                    #puts "Enter a number between 1 and #{aus_ter.length}."
                    aus_ter.each.with_index do  |type, index| puts "#{index + 1}. #{type}"
                    end
                    aus_ter_answer = gets.strip.to_i
                    
               end
         end  
            
            if government_answer == 2
               @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(Cth)"
               File.write('data.json', JSON.dump(@data_hash))
            
            end
            if government_answer == 3
                    puts "Enter the name of the government, including any relevant suffixes."
                   @data_hash["party_#{@data_hash["party_number"]}"] = gets.strip
                   File.write('data.json', JSON.dump(@data_hash))
            end   
                        
               case aus_ter_answer
                  when 1, 4
                  @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(WA)"
                  File.write('data.json', JSON.dump(@data_hash))
                  when 2, 3, 6
                  @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(Cth)"
                  File.write('data.json', JSON.dump(@data_hash))
                  when 5, 7
                  @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(NI)"
                  File.write('data.json', JSON.dump(@data_hash))
                  when 8
                  @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(ACT)"
                  File.write('data.json', JSON.dump(@data_hash))
                  when 9
                  puts "#{@help[:one]}" #PLACEHOLDER
                        
               end

         
        #error handling - enter number between 1 and 3       

        if government_answer == 3 || government_answer == 1
            
            puts "Chose the entity type."
            #puts "Enter a number between 1 and #{government_entity.length}."
            @government_entity.each.with_index do |type, index| puts "#{index + 1}. #{type}"
            end
            @government_entity_answer = gets.to_i
            
            case @government_entity_answer
                when 1
                    puts "Enter Government Department Name"
                   @data_hash["party_#{@data_hash["party_number"]}"] = gets.strip
                when 2
                    puts "Was the Minister an Attorney-General?"
                    is_ag = gets.strip.to_i
                    if is_ag == 1
                        puts "Was the proceeding a relator action?"
                        rel_action = gets.to_i
                        rel_action_answer = 0
                       @data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = state_abbreviation
                        case rel_action_answer
                        when 1
                            @data_hash["party_#{@data_hash["party_number"]}"] = "Attorney-General (#{state_abreviation}); ex rel"
                            File.write('data.json', JSON.dump(@data_hash)) 
                        when 2
                            @data_hash["party_#{@data_hash["party_number"]}"] = "Attorney-General (#{state_abreviation});"
                            File.write('data.json', JSON.dump(@data_hash))
                        when 3
                            #help
                        end
                    end
            
            
                    if is_ag == 2
                        puts "Enter the Ministers's title including all relevant departments." 
                       @data_hash["party_#{@data_hash["party_number"]}"] = gets.strip
                       File.write('data.json', JSON.dump(@data_hash))
                    end
                when 3
                    check_dpp = 1
                    puts "Is it the Director of Public Prosecutions?" 
                    check_dpp = gets.strip.to_i
                    if check_dpp == 2 &&@data_hash["govt_abbreviation_#{@data_hash["party_number"]}"] = "(NI)" && year_date < 2016
                        puts "As the case is a prosecution brought by the Norfolk Island administration, please manually enter the title of the individual or government representative who brought the action."
                       @data_hash["party_#{@data_hash["party_number"]}"] = gets.strip
                       File.write('data.json', JSON.dump(@data_hash))
                    else check_dpp == 1 
                       @data_hash["party_#{@data_hash["party_number"]}"] = "Director of Public Prosecutions"
                       File.write('data.json', JSON.dump(@data_hash))
                            
                        
                    end
                    
                when 4
                    if @data_hash["party_number"] = 1 || @data_hash["party_number"] = 3
                        if @data_hash["year_queries"] > 1952
                            @data_hash["party_#{@data_hash["party_number"]}"] = "the Queen"
                            File.write('data.json', JSON.dump(@data_hash))
                        elsif @data_hash["year_queries"] < 1952
                            @data_hash["party_#{@data_hash["party_number"]}"] = "the King"
                            File.write('data.json', JSON.dump(@data_hash))
                        else puts "As the year selected is 1952 and the Queen has reigned from February 1952, please indicate whether the decision was from January 1952."  #@bool_question
                        month_of_1952 = gets.strip.to_i
                            if month_of_1952 == 1
                               @data_hash["party_#{@data_hash["party_number"]}"] = "The King"
                               File.write('data.json', JSON.dump(@data_hash))
                            else
                               @data_hash["party_#{@data_hash["party_number"]}"] = "The Queen"
                               File.write('data.json', JSON.dump(@data_hash))
                            end
                        end
                    end
                    
                when 5
                    case #need something here????
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(Vic)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "Victoria"
                           File.write('data.json', JSON.dump(@data_hash))
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(NSW)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "New South Wales"
                           File.write('data.json', JSON.dump(@data_hash))
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(SA)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "South Australia"
                           File.write('data.json', JSON.dump(@data_hash))
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(WA)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "Western Australia"
                           File.write('data.json', JSON.dump(@data_hash))
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(Qld)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "Queensland"
                           File.write('data.json', JSON.dump(@data_hash))
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(ACT)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "Australian Capital Territory"
                           File.write('data.json', JSON.dump(@data_hash))
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(NT)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "Northern Territory"
                           File.write('data.json', JSON.dump(@data_hash))
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(NI)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "Norfolk Island"
                           File.write('data.json', JSON.dump(@data_hash))
                        when @data_hash["govt_abbreviation_#{data_hash["party_number"]}"] = "(Cth)"
                           @data_hash["party_#{data_hash["party_number"]}"] = "Commonwealth"
                           File.write('data.json', JSON.dump(@data_hash))
                    end
                when 6
                    puts "Please enter the party name."
                   @data_hash["party_#{data_hash["party_number"]}"]  = gets.strip
                   File.write('data.json', JSON.dump(@data_hash))
                when 9
                #this is for help.d
            end
         else
        end

end


    def single_party_procedure
        puts "is this a single party application? #{data_hash["bool_question"]}"
        single_party = gets.to_i
        puts "does it require a suffix? #{data_hash["bool_question"]}"
        case_affix_requred = gets.strip.to_i
        if case_affix_requred == 1
        case_affix.each.with_index do |type, index| puts "#{index + 1}. #{type}"
        end   
        case_affix_answer = gets.strip.to_i
        if case_affix_answer == 1
            case case_affix
            when 1
               @data_hash["case_suffix_#{data_hash["party_number"]}"] = "Ex parte" 
            when 2
               @data_hash["case_suffix_#{data_hash["party_number"]}"] = "Re"
            else
                puts "enter either 1 or 2."
            end
        end
        end
        if case_affix_requred == 2
        end
        # else puts "enter either Y or N. "
    end
     
    # @program_data.each do |e|
    #     puts e
    # end

    File.write('data.json', JSON.dump(data_hash))
    

 







    



 #if [input].include?(variable_passed)