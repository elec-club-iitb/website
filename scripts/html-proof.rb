require 'html-proofer'

opt = {
    :url_swap => { "https:\/\/elec-club-iitb\.github\.io\/" => "/" },
    :allow_hash_href => true    
}

HTMLProofer.check_directory('./_site',opt).run
