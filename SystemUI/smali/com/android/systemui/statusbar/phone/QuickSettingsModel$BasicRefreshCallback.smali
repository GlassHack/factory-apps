.class public Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicRefreshCallback"
.end annotation


# instance fields
.field private mShowWhenEnabled:Z

.field private final mView:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0
    .param p1, "v"    # Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->mView:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    .line 113
    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 2
    .param p1, "ignored"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->mShowWhenEnabled:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->mView:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setVisibility(I)V

    .line 118
    :cond_0
    iget v0, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->mView:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->mView:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 122
    :cond_1
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->mView:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_2
    return-void

    .line 116
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setShowWhenEnabled(Z)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;
    .locals 0
    .param p1, "swe"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->mShowWhenEnabled:Z

    .line 128
    return-object p0
.end method
