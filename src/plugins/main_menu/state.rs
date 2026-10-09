use bevy::prelude::*;

use crate::state::AppState;

#[derive(Debug, Clone, Copy, Default, Eq, PartialEq, Hash, SubStates)]
#[source(AppState = AppState::InGame)]
pub enum IsMainMenuShown {
    #[default]
    ShowMenu,
    HideMenu,
}

impl IsMainMenuShown {
    pub fn next(self) -> Self {
        match self {
            IsMainMenuShown::ShowMenu => IsMainMenuShown::HideMenu,
            IsMainMenuShown::HideMenu => IsMainMenuShown::ShowMenu,
        }
    }
}
