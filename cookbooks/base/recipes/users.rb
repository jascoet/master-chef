
if node[:users]

  node.users.each do |k, v|

    unless v[:do_not_create]

      base_user k

      if v[:rbenv] || v[:nvm]

        warp_install k do
          rbenv true if v[:rbenv]
          nvm true if v[:nvm]
        end

      end

    end

  end

end