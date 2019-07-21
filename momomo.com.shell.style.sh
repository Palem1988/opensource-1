#!/usr/bin/env bash

 ######################################################################################################################################
 # Copyright(C) 2014, Mo Enterprises Inc.                                                                                             #
 # All rights reserved.                                                                                                               #
 # Mo Enterprises Inc Opensource License 'MoL1'.                                                                                      #
 #                                                                                                                                    #
 # (1) Use of this source code, wether identical, changed or altered is allowed, for commercial and non-commercial use.               #
 #                                                                                                                                    #
 # (2) This source code may be changed and altered freely to be used only within your entity/organisation, given that a notice of all #
 #     changes introduced are listed and included at the end of an exact copy of this notice, including the name and date of          #
 #     the entity/organization that introduced them.                                                                                  #
 #                                                                                                                                    #
 # (3) The redistribution or publication of this source code to the public, if changed or altered, is prohibited using any            #
 #     medium not priorly approved by Mo Enterprises Inc unless a written consent has been requested and henceforth recieved by       #
 #     representatives of Mo Enterprises Inc.                                                                                         #
 #                                                                                                                                    #
 # (4) The distribution of any work to the derived through the use of this source code, wether identical, changed or altered,  #
 #     is however allowed, as long as such distribution does not contradict (3).                                                      #
 #                                                                                                                                    #
 # (5) Mo Enterprises Inc considers the techniques and design patterns employed in this source as unique, and will consider the       #
 #     redistribution of this source code using altered names, and/or rearranging and/or restructuring of this source as a severe     #
 #     breach of the copyright law and this license. Mo Enterprises Inc reserves all rights to puruse any and all legal options.      #
 #                                                                                                                                    #
 # (6) All copies of this source code, wether identical, changed/altered must include this entire copyright notice, list all changes  #
 #     made including the name and date of the entity/organization that introduced them, as well as the following disclaimer:         #
 #                                                                                                                                    #
 #     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND                                                #
 #     ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED                                                  #
 #     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE                                                         #
 #     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR                                                #
 #     ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES                                                 #
 #     (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;                                                   #
 #     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND                                                    #
 #     ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT                                                     #
 #     (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS                                                  #
 #     SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.                                                                   #
 #                                                                                                                                    #
 # Please contact us on opensource@{at}momomo.com if you have an improvement to this source code you'd like to contribute.            #
 # We'll make sure to include your name and/or organisation as a contributor once accepted.                                           #
 ######################################################################################################################################

{

	momomo.com.shell.style() {
		# Regular Colors
		PRIVATE_MOMOMO_COM_COLOR_BLACK="30m"                        # Black
		PRIVATE_MOMOMO_COM_COLOR_RED="31m"                          # Red
		PRIVATE_MOMOMO_COM_COLOR_GREEN="32m"                        # Green
		PRIVATE_MOMOMO_COM_COLOR_YELLOW="33m"                       # Yellow
		PRIVATE_MOMOMO_COM_COLOR_BLUE="34m"                         # Blue
		PRIVATE_MOMOMO_COM_COLOR_PURPLE="35m"                       # Purple
		PRIVATE_MOMOMO_COM_COLOR_CYAN="36m"                         # Cyan
		PRIVATE_MOMOMO_COM_COLOR_WHITE="37m"                        # White
		
		# Bold
		PRIVATE_MOMOMO_COM_COLOR_BLACK_BOLD="1;30m"                 # Black
		PRIVATE_MOMOMO_COM_COLOR_RED_BOLD="1;31m"                   # Red
		PRIVATE_MOMOMO_COM_COLOR_GREEN_BOLD="1;32m"                 # Green
		PRIVATE_MOMOMO_COM_COLOR_YELLOW_BOLD="1;33m"                # Yellow
		PRIVATE_MOMOMO_COM_COLOR_BLUE_BOLD="1;34m"                  # Blue
		PRIVATE_MOMOMO_COM_COLOR_PURP_BOLDLe="1;35m"                # Purple
		PRIVATE_MOMOMO_COM_COLOR_CYAN_BOLD="1;36m"                  # Cyan
		PRIVATE_MOMOMO_COM_COLOR_WHITE_BOLD="1;37m"                 # White
		
		# Underline
		PRIVATE_MOMOMO_COM_COLOR_BLACK_UNDERLINE="4;30m"            # Black
		PRIVATE_MOMOMO_COM_COLOR_RED_UNDERLINE="4;31m"              # Red
		PRIVATE_MOMOMO_COM_COLOR_GREEN_UNDERLINE="4;32m"            # Green
		PRIVATE_MOMOMO_COM_COLOR_YELLOW_UNDERLINE="4;33m"           # Yellow
		PRIVATE_MOMOMO_COM_COLOR_BLUE_UNDERLINE="4;34m"             # Blue
		PRIVATE_MOMOMO_COM_COLOR_PURPLE_UNDERLINE="4;35m"           # Purple
		PRIVATE_MOMOMO_COM_COLOR_CYAN_UNDERLINE="4;36m"             # Cyan
		PRIVATE_MOMOMO_COM_COLOR_WHITE_UNDERLINE="4;37m"            # White
		
		# Background
		PRIVATE_MOMOMO_COM_COLOR_BLACK_BG="40m"                     # Black
		PRIVATE_MOMOMO_COM_COLOR_RED_BG="41m"                       # Red
		PRIVATE_MOMOMO_COM_COLOR_GREEN_BG="42m"                     # Green
		PRIVATE_MOMOMO_COM_COLOR_YELLOW_BG="43m"                    # Yellow
		PRIVATE_MOMOMO_COM_COLOR_BLUE_BG="44m"                      # Blue
		PRIVATE_MOMOMO_COM_COLOR_PURPLE_BG="45m"                    # Purple
		PRIVATE_MOMOMO_COM_COLOR_CYAN_BG="46m"                      # Cyan
		PRIVATE_MOMOMO_COM_COLOR_WHITE_BG="47m"                     # White
		
		# High Intensity
		PRIVATE_MOMOMO_COM_COLOR_BLACK_INTENSE="0;90m"              # Black
		PRIVATE_MOMOMO_COM_COLOR_RED_INTENSE="0;91m"                # Red
		PRIVATE_MOMOMO_COM_COLOR_GREEN_INTENSE="0;92m"              # Green
		PRIVATE_MOMOMO_COM_COLOR_YELLOW_INTENSE="0;93m"             # Yellow
		PRIVATE_MOMOMO_COM_COLOR_BLUE_INTENSE="0;94m"               # Blue
		PRIVATE_MOMOMO_COM_COLOR_PURPLE_INTENSE="0;95m"             # Purple
		PRIVATE_MOMOMO_COM_COLOR_CYAN_INTENSE="0;96m"               # Cyan
		PRIVATE_MOMOMO_COM_COLOR_WHITE_INTENSE="0;97m"              # White
		
		# Bold High Intensity
		PRIVATE_MOMOMO_COM_COLOR_BLACK_BOLD_INTENSE="1;90m"         # Black
		PRIVATE_MOMOMO_COM_COLOR_RED_BOLD_INTENSE="1;91m"           # Red
		PRIVATE_MOMOMO_COM_COLOR_GREEN_BOLD_INTENSE="1;92m"         # Green
		PRIVATE_MOMOMO_COM_COLOR_YELL_BOLD_INTENSEOw="1;93m"        # Yellow
		PRIVATE_MOMOMO_COM_COLOR_BLUE_BOLD_INTENSE="1;94m"          # Blue
		PRIVATE_MOMOMO_COM_COLOR_PURP_BOLD_INTENSELe="1;95m"        # Purple
		PRIVATE_MOMOMO_COM_COLOR_CYAN_BOLD_INTENSE="1;96m"          # Cyan
		PRIVATE_MOMOMO_COM_COLOR_WHITE_BOLD_INTENSE="1;97m"         # White
		
		# High Intensity backgrounds
		PRIVATE_MOMOMO_COM_COLOR_BLACK_BOLD_INTENSE_BG="0;100m"     # Black
		PRIVATE_MOMOMO_COM_COLOR_RED_BOLD_INTENSE_BG="0;101m"       # Red
		PRIVATE_MOMOMO_COM_COLOR_GREEN_BOLD_INTENSE_BG="0;102m"     # Green
		PRIVATE_MOMOMO_COM_COLOR_YELL_BOLD_INTENSE_BGOw="0;103m"    # Yellow
		PRIVATE_MOMOMO_COM_COLOR_BLUE_BOLD_INTENSE_BG="0;104m"      # Blue
		PRIVATE_MOMOMO_COM_COLOR_PURP_BOLD_INTENSE_BGLe="0;105m"    # Purple
		PRIVATE_MOMOMO_COM_COLOR_CYAN_BOLD_INTENSE_BG="0;106m"      # Cyan
		PRIVATE_MOMOMO_COM_COLOR_WHITE_BOLD_INTENSE_BG="0;107m"     # White
		
		PRIVATE_MOMOMO_COM_COLOR_RESET="0m"                         # Reset
		
		{ # ----- ABSTRACT :: TO BE OVERRIDEN ------
		    PRIVATE_MOMOMO_COM_ABSTRACT_LEFT="" 
		    PRIVATE_MOMOMO_COM_ABSTRACT_RIGHT=""
		    
		    momomo.com.shell.style.out() { :; }
		} # ----------------------------------------
		
		momomo.com.shell.style.color() {
		    local color="${1}"; local value="${2}";
		    
		    momomo.com.shell.style.out "${PRIVATE_MOMOMO_COM_ABSTRACT_LEFT}\e[${color}${PRIVATE_MOMOMO_COM_ABSTRACT_RIGHT}${value}${PRIVATE_MOMOMO_COM_ABSTRACT_LEFT}\e[m${PRIVATE_MOMOMO_COM_ABSTRACT_RIGHT}" 
		}
		
		# Using printf: Due to some bugs on Mac at least, printf and \001 and \002 leads to terminal bugs unless they are used in a function
		momomo.com.shell.style.interface.implemented.using.printf() {
		    PRIVATE_MOMOMO_COM_ABSTRACT_LEFT="\["; PRIVATE_MOMOMO_COM_ABSTRACT_RIGHT="\]"
		    
		    momomo.com.shell.style.out() {
		        printf "$@"
		    }
		            
		    # Here we replaced the dynamic method output \[ and \] with \001 and 002 which is find from a dynamic method			
		    momomo.com.shell.style.out.method() {
		        local out="${1}"
		        
		        local out="${out//\\[/\\001}"; out="${out//\\]/\\002}"
		        
		        printf "${out}"
		    }
		}
		
		# Using echo: Instead we can rely on echo by using \001 and \002 from the getgo and do not need to replace in dynamic methods   
		momomo.com.shell.style.interface.implemented.using.echo() {
		    PRIVATE_MOMOMO_COM_ABSTRACT_LEFT="\001"; PRIVATE_MOMOMO_COM_ABSTRACT_RIGHT="\002"
		    
		    momomo.com.shell.style.out() {
		        echo "$@"
		    }
		    
		    # Simply output since we are relying on \001 and and \002 which works fine with printf from a dynamic method 
		    momomo.com.shell.style.out.method() {
		        local out="${1}"
		        
		        printf "${out}"
		    }
		}
		
		momomo.com.shell.style.git.branch() {
		    local branch="$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')";
		    
		    if [[ "$branch" != "" ]]; then
		        momomo.com.shell.style.out.method " $( momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_YELLOW_BOLD}" '(' )$( momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_BLUE}" "${branch}" )$( momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_YELLOW_BOLD}" ')' )" 
		    fi
		}
		
		#############################################
		     #### We choose implementation ####
		  momomo.com.shell.style.interface.implemented.using.echo
		# momomo.com.shell.style.interface.implemented.using.printf
		#############################################
		
		local  user="$(momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_CYAN_BOLD}"     "\u" )"
		local    at="$(momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_GREEN}"         "@"  )"
		local   dir="$(momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_WHITE_BOLD}"    "\w" )"
		local arrow="$(momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_RED_BOLD}"      "⇒"  )"
		local reset="$(momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_RESET}"         ""   )"
		
		# Finalize
		export PS1="${user}${at}${dir}\$( momomo.com.shell.style.git.branch ) ${arrow} ${reset}"
	
	} && momomo.com.shell.style;

}