-- Define a etiqueta do plugin
local plugin_label = "CAMINHADOR_PLUGIN_"

-- Cria os elementos do menu
local menu_elements = 
{
    plugin_enabled = checkbox:new(false, get_hash(plugin_label .. "plugin_enabled")),
    main_openDoors_enabled = checkbox:new(false, get_hash(plugin_label .. "main_openDoors_enabled")),
    loop_enabled = checkbox:new(false, get_hash(plugin_label .. "loop_enabled")), -- Adiciona o checkbox de loop
    graphics_enabled = checkbox:new(false, get_hash(plugin_label .. "graphics_enabled")), -- Adiciona o checkbox de gráficos
    revive_enabled = checkbox:new(false, get_hash(plugin_label .. "revive_enabled")), -- Adiciona o checkbox de revive
    main_tree = tree_node:new(0),
}

-- Função para renderizar o menu
function render_menu()
    menu_elements.main_tree:push("Helltide Farmer (EletroLuz)-V1.0")

    -- Renderiza o checkbox para habilitar o plugin de movimento
    menu_elements.plugin_enabled:render("Enable Movement Plugin", "Enable or disable the movement plugin")

    -- Renderiza o checkbox para habilitar o plugin de abertura de baus
    menu_elements.main_openDoors_enabled:render("Open Chests", "Enable or disable the chest plugin")

    -- Renderiza o checkbox para habilitar o loop dos waypoints
    menu_elements.loop_enabled:render("Enable Loop", "Enable or disable looping waypoints") -- Adiciona o checkbox de loop

    -- Renderiza o checkbox para habilitar/desabilitar o módulo de revive
    menu_elements.revive_enabled:render("Enable Revive Module", "Enable or disable the revive module") -- Adiciona o checkbox de revive

    menu_elements.main_tree:pop()
end

-- Retorna os elementos do menu
return menu_elements