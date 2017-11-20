.class public abstract Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;
.super Ljava/lang/Object;
.source "DeveloperSettingCard.java"


# instance fields
.field private final activity:Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;

.field private final card:Lcom/google/android/glass/widget/CardBuilder;

.field private final developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;Lcom/google/glass/settings/DeveloperSettingsHelper;)V
    .locals 2
    .param p1, "activity"    # Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;
    .param p2, "developerSettingsHelper"    # Lcom/google/glass/settings/DeveloperSettingsHelper;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->activity:Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;

    .line 35
    new-instance v0, Lcom/google/android/glass/widget/CardBuilder;

    sget-object v1, Lcom/google/android/glass/widget/CardBuilder$Layout;->COLUMNS_FIXED:Lcom/google/android/glass/widget/CardBuilder$Layout;

    invoke-direct {v0, p1, v1}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->card:Lcom/google/android/glass/widget/CardBuilder;

    .line 36
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->card:Lcom/google/android/glass/widget/CardBuilder;

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_gear_150:I

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardBuilder;->setIcon(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 37
    iput-object p2, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    .line 38
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 39
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->activity:Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;

    return-object v0
.end method

.method public final getCard()Lcom/google/android/glass/widget/CardBuilder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->card:Lcom/google/android/glass/widget/CardBuilder;

    return-object v0
.end method

.method public getDeveloperSettingsHelper()Lcom/google/glass/settings/DeveloperSettingsHelper;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    return-object v0
.end method

.method public getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 119
    return-void
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->activity:Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsActivity;->refreshCards()V

    .line 88
    return-void
.end method

.method protected showConfirmationAndRefresh(I)V
    .locals 3
    .param p1, "titleResId"    # I

    .prologue
    .line 126
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 127
    invoke-virtual {v1, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingCard$1;-><init>(Lcom/google/glass/settings/ui/developer/DeveloperSettingCard;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 138
    return-void
.end method

.method public abstract update()V
.end method
