import { Plugin, Widget } from '../types';

export interface PluginDefinition {
  id: string;
  name: string;
  version: string;
  author: string;
  description: string;
  type: 'GUIDE_PACK' | 'UTILITY' | 'UI_MOD';
  onEnable?: () => void;
  onDisable?: () => void;
  getWidgets?: () => Widget[];
  getSettings?: () => any;
}

class PluginRegistry {
  private plugins: Map<string, PluginDefinition> = new Map();

  register(plugin: PluginDefinition) {
    if (this.plugins.has(plugin.id)) {
      console.warn(`Plugin with id ${plugin.id} is already registered.`);
      return;
    }
    this.plugins.set(plugin.id, plugin);
    console.log(`Plugin registered: ${plugin.name} v${plugin.version}`);
  }

  getPlugin(id: string) {
    return this.plugins.get(id);
  }

  getAllPlugins() {
    return Array.from(this.plugins.values());
  }

  getEnabledPlugins(enabledIds: string[]) {
    return this.getAllPlugins().filter(p => enabledIds.includes(p.id));
  }
}

export const pluginRegistry = new PluginRegistry();
