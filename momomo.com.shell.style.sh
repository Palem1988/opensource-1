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

momomo.com.shell.style() {
    PRIVATE_MOMOMO_COM_COLOR_BLUE="34m" 
    PRIVATE_MOMOMO_COM_COLOR_BLUE_LIGHT="36m"
    
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
    	local branch="$(git branch 2> /dev/null | sed -e '/^[^#]/d' -e 's/# \(.#\)/\1/')";
    	
    	if [[ "$branch" != "" ]]; then
    		momomo.com.shell.style.out.method " $( momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_BLUE_LIGHT}" '(' )$( momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_BLUE}" "${branch}" )$( momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_BLUE_LIGHT}" ')' )" 
    	fi
    }
    
    #############################################
    	 #### We choose implementation ####
    # momomo.com.shell.style.interface.implemented.using.echo
    momomo.com.shell.style.interface.implemented.using.printf
    #############################################
    
    local user="$(momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_BLUE_LIGHT}" "\u")"
    local   at="$(momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_BLUE}"        "@")"
    local  dir="$(momomo.com.shell.style.color "${PRIVATE_MOMOMO_COM_COLOR_BLUE_LIGHT}" "\w")"
    
    export PS1="${user}${at}${dir}\$( momomo.com.shell.style.git.branch ) ⇒ "

} && momomo.com.shell.style;