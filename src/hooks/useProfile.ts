import { useState, useEffect } from 'react';
import { AddonSettings } from '../types';

const STORAGE_KEY = 'xplore_profiles';

export function useProfile(defaultSettings: AddonSettings) {
  const [profiles, setProfiles] = useState<Record<string, AddonSettings>>(() => {
    const saved = localStorage.getItem(STORAGE_KEY);
    if (saved) {
      try {
        return JSON.parse(saved);
      } catch (e) {
        console.error("Failed to parse profiles:", e);
      }
    }
    return { 'Default': defaultSettings };
  });

  const [activeProfileName, setActiveProfileName] = useState<string>(() => {
    const saved = localStorage.getItem('xplore_active_profile');
    return saved || 'Default';
  });

  const savedProfile = profiles[activeProfileName] || {} as AddonSettings;
  const activeSettings: AddonSettings = { 
    ...defaultSettings, 
    ...savedProfile,
    // Deep merge categories to ensure new default settings are available
    stepDisplay: { ...defaultSettings.stepDisplay, ...(savedProfile.stepDisplay || {}) },
    guideViewer: { ...defaultSettings.guideViewer, ...(savedProfile.guideViewer || {}) },
    automation: { ...defaultSettings.automation, ...(savedProfile.automation || {}) },
    actionButton: { ...defaultSettings.actionButton, ...(savedProfile.actionButton || {}) },
    waypointArrow: { ...defaultSettings.waypointArrow, ...(savedProfile.waypointArrow || {}) },
    maps: { ...defaultSettings.maps, ...(savedProfile.maps || {}) },
    gear: { ...defaultSettings.gear, ...(savedProfile.gear || {}) },
    itemScore: { ...defaultSettings.itemScore, ...(savedProfile.itemScore || {}) },
    goldGuide: { ...defaultSettings.goldGuide, ...(savedProfile.goldGuide || {}) },
    notifications: { ...defaultSettings.notifications, ...(savedProfile.notifications || {}) },
    extras: { ...defaultSettings.extras, ...(savedProfile.extras || {}) },
    plugins: { ...defaultSettings.plugins, ...(savedProfile.plugins || {}) },
    profile: { ...defaultSettings.profile, ...(savedProfile.profile || {}) },
    // Deep merge widgets to ensure new default widgets are available while preserving plugin widgets
    widgets: [
      ...defaultSettings.widgets.map(defaultWidget => {
        const savedWidget = (savedProfile.widgets || []).find(w => w.id === defaultWidget.id);
        return savedWidget ? { ...defaultWidget, ...savedWidget } : defaultWidget;
      }),
      ...(savedProfile.widgets || []).filter(w => !defaultSettings.widgets.some(dw => dw.id === w.id))
    ]
  };

  const saveProfile = (name: string, settings: AddonSettings) => {
    const newProfiles = { ...profiles, [name]: settings };
    setProfiles(newProfiles);
    localStorage.setItem(STORAGE_KEY, JSON.stringify(newProfiles));
  };

  const switchProfile = (name: string) => {
    if (profiles[name]) {
      setActiveProfileName(name);
      localStorage.setItem('xplore_active_profile', name);
    }
  };

  const deleteProfile = (name: string) => {
    if (name === 'Default') return;
    const newProfiles = { ...profiles };
    delete newProfiles[name];
    setProfiles(newProfiles);
    localStorage.setItem(STORAGE_KEY, JSON.stringify(newProfiles));
    if (activeProfileName === name) {
      switchProfile('Default');
    }
  };

  const createProfile = (name: string) => {
    if (profiles[name]) return;
    saveProfile(name, defaultSettings);
    switchProfile(name);
  };

  return {
    activeSettings,
    activeProfileName,
    profiles: Object.keys(profiles),
    saveProfile: (settings: AddonSettings) => saveProfile(activeProfileName, settings),
    switchProfile,
    deleteProfile,
    createProfile
  };
}
