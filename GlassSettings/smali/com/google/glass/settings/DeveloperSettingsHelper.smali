.class public Lcom/google/glass/settings/DeveloperSettingsHelper;
.super Ljava/lang/Object;
.source "DeveloperSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;
    }
.end annotation


# static fields
.field private static final BATTERY_FLAGS:I = 0x3

.field private static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field private static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field private static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field private static final SYSPROPS_TRANSACTION:I = 0x5f535052


# instance fields
.field private final androidGlobalSettings:Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final serviceManager:Lcom/google/android/glass/hidden/HiddenServiceManager;

.field private shouldPokeProperties:Z

.field private final systemProperties:Lcom/google/android/glass/hidden/HiddenSystemProperties;

.field private final systemPropertiesPoker:Ljava/lang/Runnable;

.field private final windowManager:Lcom/google/android/glass/hidden/HiddenWindowManager;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/AndroidGlobalSettingsHelper;Lcom/google/android/glass/hidden/HiddenServiceManager;Lcom/google/android/glass/hidden/HiddenSystemProperties;Lcom/google/android/glass/hidden/HiddenWindowManager;)V
    .locals 1
    .param p1, "androidGlobalSettings"    # Lcom/google/glass/settings/AndroidGlobalSettingsHelper;
    .param p2, "serviceManager"    # Lcom/google/android/glass/hidden/HiddenServiceManager;
    .param p3, "systemProperties"    # Lcom/google/android/glass/hidden/HiddenSystemProperties;
    .param p4, "windowManager"    # Lcom/google/android/glass/hidden/HiddenWindowManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 71
    new-instance v0, Lcom/google/glass/settings/DeveloperSettingsHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/DeveloperSettingsHelper$1;-><init>(Lcom/google/glass/settings/DeveloperSettingsHelper;)V

    iput-object v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->systemPropertiesPoker:Ljava/lang/Runnable;

    .line 112
    iput-object p1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->androidGlobalSettings:Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    .line 113
    iput-object p2, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->serviceManager:Lcom/google/android/glass/hidden/HiddenServiceManager;

    .line 114
    iput-object p3, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->systemProperties:Lcom/google/android/glass/hidden/HiddenSystemProperties;

    .line 115
    iput-object p4, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->windowManager:Lcom/google/android/glass/hidden/HiddenWindowManager;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->shouldPokeProperties:Z

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/DeveloperSettingsHelper;)Lcom/google/android/glass/hidden/HiddenServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/DeveloperSettingsHelper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->serviceManager:Lcom/google/android/glass/hidden/HiddenServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/DeveloperSettingsHelper;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/DeveloperSettingsHelper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private pokeSystemProperties()V
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->shouldPokeProperties:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 263
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->systemPropertiesPoker:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 265
    :cond_0
    return-void
.end method

.method private resetDeveloperSettings()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->shouldPokeProperties:Z

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setScreenOnWhileCharging(Z)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setDebugLayoutEnabled(Z)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setShowsGpuOverdraw(Z)V

    .line 253
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setAllAnimationScales(F)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->shouldPokeProperties:Z

    .line 256
    invoke-direct {p0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->pokeSystemProperties()V

    .line 257
    return-void
.end method


# virtual methods
.method public getAnimatorDurationScale()F
    .locals 4

    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->windowManager:Lcom/google/android/glass/hidden/HiddenWindowManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/glass/hidden/HiddenWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 235
    :goto_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to retrieve the animator duration scale"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTransitionAnimationScale()F
    .locals 4

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->windowManager:Lcom/google/android/glass/hidden/HiddenWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/glass/hidden/HiddenWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 216
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to retrieve the transition animation scale"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getWindowAnimationScale()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->windowManager:Lcom/google/android/glass/hidden/HiddenWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/glass/hidden/HiddenWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to retrieve the window animation scale"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public isAdbEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->androidGlobalSettings:Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    const-string v2, "adb_enabled"

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDebugLayoutEnabled()Z
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->systemProperties:Lcom/google/android/glass/hidden/HiddenSystemProperties;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isScreenOnWhileCharging()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->androidGlobalSettings:Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    const-string v2, "stay_on_while_plugged_in"

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAdbEnabled(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 121
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->androidGlobalSettings:Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    const-string v2, "adb_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper;->putInt(Ljava/lang/String;I)V

    .line 124
    if-nez p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->resetDeveloperSettings()V

    .line 127
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllAnimationScales(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setWindowAnimationScale(F)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setTransitionAnimationScale(F)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setAnimatorDurationScale(F)V

    .line 244
    return-void
.end method

.method public setAnimatorDurationScale(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->windowManager:Lcom/google/android/glass/hidden/HiddenWindowManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/glass/hidden/HiddenWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to update the animator duration scale"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDebugLayoutEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->systemProperties:Lcom/google/android/glass/hidden/HiddenSystemProperties;

    const-string v2, "debug.layout"

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->pokeSystemProperties()V

    .line 160
    return-void

    .line 158
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setScreenOnWhileCharging(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    iget-object v2, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->androidGlobalSettings:Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    const-string v3, "stay_on_while_plugged_in"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "currentSetting":I
    if-eqz p1, :cond_0

    or-int/lit8 v1, v0, 0x3

    .line 140
    .local v1, "newSetting":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->androidGlobalSettings:Lcom/google/glass/settings/AndroidGlobalSettingsHelper;

    const-string v3, "stay_on_while_plugged_in"

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/settings/AndroidGlobalSettingsHelper;->putInt(Ljava/lang/String;I)V

    .line 141
    return-void

    .line 139
    .end local v1    # "newSetting":I
    :cond_0
    and-int/lit8 v1, v0, -0x4

    goto :goto_0
.end method

.method public setShowsGpuOverdraw(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->systemProperties:Lcom/google/android/glass/hidden/HiddenSystemProperties;

    const-string v2, "debug.hwui.overdraw"

    if-eqz p1, :cond_0

    const-string v0, "show"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->pokeSystemProperties()V

    .line 174
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTransitionAnimationScale(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->windowManager:Lcom/google/android/glass/hidden/HiddenWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/glass/hidden/HiddenWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to update the transition animation scale"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWindowAnimationScale(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/4 v3, 0x0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->windowManager:Lcom/google/android/glass/hidden/HiddenWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/google/android/glass/hidden/HiddenWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to update the window animation scale"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showsGpuOverdraw()Z
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/glass/settings/DeveloperSettingsHelper;->systemProperties:Lcom/google/android/glass/hidden/HiddenSystemProperties;

    const-string v2, "debug.hwui.overdraw"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "value":Ljava/lang/String;
    const-string v1, "show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
