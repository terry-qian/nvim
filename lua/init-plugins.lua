return require('packer').startup(function(use)
    -- package manager
    use('wbthomason/packer.nvim')

    -- termial integration
    use({
        'akinsho/nvim-toggleterm.lua',
        config = function()
            require('terminal')
        end,
    })

    -- clickable buffer line
    use({
        'akinsho/nvim-bufferline.lua',
        config = function()
            require('bufferline').setup()
        end,
    })

    -- font color
    use({
        'NTBBloodbath/doom-one.nvim',
        config = function()
            require('doomone')
        end,
    })

    -- tree
    use ({
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons',
        },
        tag = 'nightly',
        config = function()
            require('tree')
        end,
      })
    -- status
    use {'windwp/windline.nvim', config = function() require('wlsample.bubble2').setup() end,}

end)
