use std::time::Duration;

use bevy::color::Color;

pub const WINDOW_PHYSICAL_WIDTH: u32 = 1280; // In pixels
pub const WINDOW_PHYSICAL_HEIGHT: u32 = 1280; // In pixels
pub const WINDOW_SCALE_FACTOR: f32 = 2.; // How much tiles are streched out in the beginning

pub const SPRITE_DISPLAY_SIZE: u16 = 16; // Size of a sprite side length, in pixels when drawn

// Map dimension (in tiles)
pub const MAP_HEIGHT: u16 = 200;
pub const MAP_WIDTH: u16 = 200;

// Zoomies
pub const MIN_SCALE: f32 = 0.5;
pub const MAX_SCALE: f32 = 2.5;

pub const PRESSED_BUTTON: Color = Color::srgb(0.35, 0.75, 0.35);

// Animations
pub const SPEED_CONSTANT: f32 = 20.0;
