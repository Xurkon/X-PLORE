import { PluginDefinition } from '../pluginAPI';
import { Widget } from '../../types';

export const AuctionHelperPlugin: PluginDefinition = {
  id: 'auction-helper',
  name: 'Auction Helper',
  version: '0.9.5',
  author: 'Xurkon',
  description: 'Real-time auction house price tracking.',
  type: 'UTILITY',
  onEnable: () => {
    console.log('Auction Helper enabled');
  },
  onDisable: () => {
    console.log('Auction Helper disabled');
  },
  getWidgets: (): Widget[] => [
    { 
      id: 'auction-helper-widget', 
      type: 'PLUGIN_WIDGET', 
      title: 'Auction Helper', 
      x: 0, y: 0, w: 1, h: 1, 
      visible: true,
      pluginId: 'auction-helper'
    }
  ]
};
