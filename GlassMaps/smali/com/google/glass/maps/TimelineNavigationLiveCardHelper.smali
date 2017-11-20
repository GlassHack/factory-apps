.class public Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;
.super Lcom/google/glass/maps/BaseNavigationLiveCardHelper;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/glass/timeline/DirectRenderingCallback;


# static fields
.field private static final LIVE_CARD_ID:Ljava/lang/String; = "maps_nav"


# instance fields
.field liveCard:Lcom/google/android/glass/timeline/LiveCard;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public hideGuardPhrase()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setVoiceActionEnabled(Z)Lcom/google/android/glass/timeline/LiveCard;

    .line 115
    :cond_0
    return-void
.end method

.method public isLiveCardPublished()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->isPublished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenForGuardPhraseIfNeeded()V
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setVoiceActionEnabled(Z)Lcom/google/android/glass/timeline/LiveCard;

    .line 98
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$2;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$2;-><init>(Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;Lcom/google/android/glass/timeline/LiveCard;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    return-void
.end method

.method public navigate()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->navigate()V

    .line 120
    return-void
.end method

.method public publishCard(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 31
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    if-nez v0, :cond_1

    .line 32
    invoke-static {}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Publishing live card"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lcom/google/android/glass/timeline/LiveCard;

    const-string v1, "maps_nav"

    invoke-direct {v0, p1, v1}, Lcom/google/android/glass/timeline/LiveCard;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    .line 34
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 35
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {p0}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->getRenderer()Lcom/google/glass/maps/NavigationRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setRenderer(Lcom/google/android/glass/timeline/GlRenderer;)Lcom/google/android/glass/timeline/LiveCard;

    .line 36
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->setAction(Landroid/app/PendingIntent;)Lcom/google/android/glass/timeline/LiveCard;

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->onCreate(Landroid/content/Context;)V

    .line 40
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    sget-object v1, Lcom/google/android/glass/timeline/LiveCard$PublishMode;->REVEAL:Lcom/google/android/glass/timeline/LiveCard$PublishMode;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->publish(Lcom/google/android/glass/timeline/LiveCard$PublishMode;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Navigating to live card"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->navigate()V

    goto :goto_0
.end method

.method public renderingPaused(Landroid/view/SurfaceHolder;Z)V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$1;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper$1;-><init>(Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public unpublishCard()V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 59
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unpublishing live card"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->unpublish()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;->liveCard:Lcom/google/android/glass/timeline/LiveCard;

    .line 66
    :cond_0
    return-void
.end method
