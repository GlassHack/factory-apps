.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 182
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 183
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 188
    return-void
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 193
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 199
    return-void
.end method
