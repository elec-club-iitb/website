require 'html-proofer'

opt = {
    :url_swap => { "https:\/\/stab-iitb\.org\/electronics-club\/" => "/" },
    :allow_hash_href => true    
}

HTMLProofer.check_directory('./_site',opt).run
