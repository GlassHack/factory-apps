.class public Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;
.super Lcom/google/glass/maps/BaseNavigationLiveCardHelper;
.source "SourceFile"


# static fields
.field private static final LIVE_CARD_ID:I = 0x1

.field private static final LIVE_CARD_TAG:Ljava/lang/String; = "maps_nav"


# instance fields
.field private published:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private publishInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/android/glass/app/ContextualNotification;

    new-instance v2, Landroid/app/Notification$Builder;

    .line 42
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/glass/app/ContextualNotification;-><init>(Landroid/app/Notification$Builder;)V

    new-instance v0, Landroid/content/ComponentName;

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/glass/maps/NowTownNavigationRenderingService;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Lcom/google/android/glass/app/ContextualNotification;->setRenderer(Landroid/content/ComponentName;)Lcom/google/android/glass/app/ContextualNotification;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v5}, Lcom/google/android/glass/app/ContextualNotification;->setReveal(Z)Lcom/google/android/glass/app/ContextualNotification;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualNotification;->build()Landroid/app/Notification;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 49
    const-string v2, "maps_nav"

    invoke-virtual {v0, v2, v5, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 50
    return-void
.end method


# virtual methods
.method public hideGuardPhrase()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public isLiveCardPublished()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->published:Z

    return v0
.end method

.method public listenForGuardPhraseIfNeeded()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public navigate()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->publishInternal()V

    .line 86
    return-void
.end method

.method public publishCard(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->published:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->navigate()V

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->published:Z

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->onCreate(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->publishInternal()V

    goto :goto_0
.end method

.method public unpublishCard()V
    .locals 3

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->published:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->published:Z

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->onDestroy()V

    .line 62
    invoke-virtual {p0}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    const-string v1, "maps_nav"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method
