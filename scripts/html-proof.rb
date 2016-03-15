require 'html-proofer'

opt = {
    :url_swap => { "http:\/\/elec-club-iitb\.github\.io\/" => "/" },
    :allow_hash_href => true    
}

HTMLProofer.check_directory('./_site',opt).run
