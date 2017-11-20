.class public Lcom/google/glass/settings/ui/developer/ShowLayoutBoundsCard;
.super Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;
.source "ShowLayoutBoundsCard.java"


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V
    .locals 2
    .param p1, "activity"    # Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;
    .param p2, "developerSettingsHelper"    # Lcom/google/glass/settings/DeveloperSettingsHelper;

    .prologue
    .line 13
    sget v0, Lcom/google/glass/settings/ui/R$string;->developer_setting_show_layout_bounds:I

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_SHOW_LAYOUT_BOUNDS_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/glass/settings/ui/developer/BooleanDeveloperSettingCard;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;ILcom/google/glass/userevent/UserEventAction;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected isSettingEnabled()Z
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/ShowLayoutBoundsCard;->getDeveloperSettingsHelper()Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->isDebugLayoutEnabled()Z

    move-result v0

    return v0
.end method

.method protected setSettingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/ShowLayoutBoundsCard;->getDeveloperSettingsHelper()Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setDebugLayoutEnabled(Z)V

    .line 26
    return-void
.end method
