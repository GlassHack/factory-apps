.class public Lcom/google/glass/home/timeline/active/HomeItemView;
.super Lcom/google/glass/home/timeline/active/ActiveItemView;
.source "HomeItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/HomeItemView$SendWallpaperInfoCallback;,
        Lcom/google/glass/home/timeline/active/HomeItemView$OnViewInflatedWallpaperCallback;,
        Lcom/google/glass/home/timeline/active/HomeItemView$UpdateWallpaperCallback;
    }
.end annotation


# instance fields
.field private clockView:Lcom/google/glass/widget/ClockView;

.field private guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private onViewInflatedWallpaperCallback:Lcom/google/glass/wallpaper/WallpaperCallback;

.field private final proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wallpaperHelper:Lcom/google/glass/wallpaper/WallpaperHelper;

.field private final wallpaperReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private wallpaperView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HOME:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    new-instance v0, Lcom/google/glass/home/timeline/active/HomeItemView$1;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.glass.action.SET_WALLPAPER_REQUEST_RECEIVED"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.google.glass.action.GET_WALLPAPER_INFO_RECEIVED"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/active/HomeItemView$1;-><init>(Lcom/google/glass/home/timeline/active/HomeItemView;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 76
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 77
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/HomeItemView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/wallpaper/WallpaperHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/HomeItemView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperHelper:Lcom/google/glass/wallpaper/WallpaperHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/HomeItemView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/HomeItemView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/active/HomeItemView;)Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/HomeItemView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    return-object v0
.end method

.method private fade(Z)V
    .locals 4
    .param p1, "in"    # Z

    .prologue
    .line 156
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    .local v0, "toAlpha":F
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 159
    return-void

    .line 156
    .end local v0    # "toAlpha":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeWallpaperVariables()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperHelper:Lcom/google/glass/wallpaper/WallpaperHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->onViewInflatedWallpaperCallback:Lcom/google/glass/wallpaper/WallpaperCallback;

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {}, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;->getInstance()Lcom/google/glass/wallpaper/WallpaperHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/wallpaper/WallpaperHelper;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperHelper:Lcom/google/glass/wallpaper/WallpaperHelper;

    .line 181
    new-instance v0, Lcom/google/glass/home/timeline/active/HomeItemView$OnViewInflatedWallpaperCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/active/HomeItemView$OnViewInflatedWallpaperCallback;-><init>(Lcom/google/glass/home/timeline/active/HomeItemView;Lcom/google/glass/home/timeline/active/HomeItemView$1;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->onViewInflatedWallpaperCallback:Lcom/google/glass/wallpaper/WallpaperCallback;

    goto :goto_0
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 6
    .param p1, "selected"    # Z

    .prologue
    const/4 v5, 0x1

    .line 131
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "dispatchSetSelected [selected=%s]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0, v5}, Lcom/google/glass/home/timeline/active/HomeItemView;->fade(Z)V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemView;->dispatchSetSelected(Z)V

    .line 141
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onAttachedToWindow()V

    .line 104
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/widget/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/widget/ClockView;->onLoad()V

    .line 105
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onLoad()V

    .line 106
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->WP:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 110
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onDetachedFromWindow()V

    .line 115
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/widget/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/widget/ClockView;->onUnload()V

    .line 116
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnload()V

    .line 117
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->WP:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method protected onViewInflated()V
    .locals 2

    .prologue
    .line 87
    sget v0, Lcom/google/glass/home/R$id;->clock:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/ClockView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->clockView:Lcom/google/glass/widget/ClockView;

    .line 88
    sget v0, Lcom/google/glass/home/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .line 89
    sget v0, Lcom/google/glass/home/R$id;->wallpaper:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperView:Landroid/widget/ImageView;

    .line 90
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->WP:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/HomeItemView;->initializeWallpaperVariables()V

    .line 97
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->wallpaperHelper:Lcom/google/glass/wallpaper/WallpaperHelper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->onViewInflatedWallpaperCallback:Lcom/google/glass/wallpaper/WallpaperCallback;

    invoke-virtual {v0, v1}, Lcom/google/glass/wallpaper/WallpaperHelper;->loadWallpaper(Lcom/google/glass/wallpaper/WallpaperCallback;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onWindowFocusChanged [hasWindowFocus=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/HomeItemView;->fade(Z)V

    .line 152
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onWindowFocusChanged(Z)V

    .line 153
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/google/glass/home/R$layout;->home_item:I

    return v0
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemView;->setSelected(Z)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onSettled()V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView;->guardPhrase:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnsettled()V

    goto :goto_0
.end method
