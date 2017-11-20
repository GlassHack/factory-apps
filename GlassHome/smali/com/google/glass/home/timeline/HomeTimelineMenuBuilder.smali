.class public Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;
.super Lcom/google/glass/timeline/TimelineMenuBuilder;
.source "HomeTimelineMenuBuilder.java"


# static fields
.field private static final WEAR_CONNECTION_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.glass.action.WEAR_CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;->WEAR_CONNECTION_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->createIconProvider(Landroid/content/Context;)Lcom/google/glass/util/IconProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;-><init>(Landroid/content/Context;Lcom/google/glass/util/IconProvider;)V

    .line 25
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;->activity:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method private isWearConnected()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;->WEAR_CONNECTION_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "com.google.glass.extra.STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected isMenuEnabled(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;->isWearConnected()Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/timeline/TimelineMenuBuilder;->isMenuEnabled(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    goto :goto_0
.end method
