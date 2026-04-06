import { PluginDefinition } from '../pluginAPI';
import { Widget } from '../../types';

export const RareScannerPlugin: PluginDefinition = {
  id: 'rare-scanner',
  name: 'Rare Scanner',
  version: '1.2.0',
  author: 'Xurkon',
  description: 'Alerts you when rare NPCs are nearby.',
  type: 'UTILITY',
  onEnable: () => {
    console.log('Rare Scanner enabled');
  },
  onDisable: () => {
    console.log('Rare Scanner disabled');
  },
  getWidgets: (): Widget[] => [
    { 
      id: 'rare-scanner-widget', 
      type: 'PLUGIN_WIDGET', 
      title: 'Rare Scanner', 
      x: 0, y: 0, w: 1, h: 1, 
      visible: true,
      pluginId: 'rare-scanner'
    }
  ]
};
