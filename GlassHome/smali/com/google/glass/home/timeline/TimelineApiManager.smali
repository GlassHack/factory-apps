.class public Lcom/google/glass/home/timeline/TimelineApiManager;
.super Ljava/lang/Object;
.source "TimelineApiManager.java"

# interfaces
.implements Lcom/google/android/glass/timeline/TimelineHostManager$Listener;


# instance fields
.field private final pinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

.field private final unpinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/timeline/TimelineApiAdapter;Lcom/google/glass/home/timeline/TimelineApiAdapter;)V
    .locals 1
    .param p1, "unpinnedAdapter"    # Lcom/google/glass/home/timeline/TimelineApiAdapter;
    .param p2, "pinnedAdapter"    # Lcom/google/glass/home/timeline/TimelineApiAdapter;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineApiAdapter;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiManager;->unpinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    .line 29
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineApiAdapter;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiManager;->pinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    .line 30
    return-void
.end method

.method private getCardAdapter(Lcom/google/android/glass/timeline/HostedCard;)Lcom/google/glass/home/timeline/TimelineApiAdapter;
    .locals 1
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/google/android/glass/timeline/HostedCard;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiManager;->pinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiManager;->unpinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/google/android/glass/timeline/TimelineHostManager;->get()Lcom/google/android/glass/timeline/TimelineHostManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/glass/timeline/TimelineHostManager;->register(Lcom/google/android/glass/timeline/TimelineHostManager$Listener;)Lcom/google/android/glass/timeline/TimelineHostManager;

    .line 50
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiManager;->unpinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onActivate()V

    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiManager;->pinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onActivate()V

    .line 52
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/glass/timeline/TimelineHostManager;->get()Lcom/google/android/glass/timeline/TimelineHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/TimelineHostManager;->unregister()V

    .line 57
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiManager;->unpinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onDeactivate()V

    .line 58
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineApiManager;->pinnedAdapter:Lcom/google/glass/home/timeline/TimelineApiAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onDeactivate()V

    .line 59
    return-void
.end method

.method public onLiveCardAdded(Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 1
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineApiManager;->getCardAdapter(Lcom/google/android/glass/timeline/HostedCard;)Lcom/google/glass/home/timeline/TimelineApiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onLiveCardAdded(Lcom/google/android/glass/timeline/HostedCard;)V

    .line 35
    return-void
.end method

.method public onLiveCardRemoved(Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 1
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineApiManager;->getCardAdapter(Lcom/google/android/glass/timeline/HostedCard;)Lcom/google/glass/home/timeline/TimelineApiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onLiveCardRemoved(Lcom/google/android/glass/timeline/HostedCard;)V

    .line 40
    return-void
.end method

.method public onLiveCardUpdated(Lcom/google/android/glass/timeline/HostedCard;)V
    .locals 1
    .param p1, "card"    # Lcom/google/android/glass/timeline/HostedCard;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/TimelineApiManager;->getCardAdapter(Lcom/google/android/glass/timeline/HostedCard;)Lcom/google/glass/home/timeline/TimelineApiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onLiveCardUpdated(Lcom/google/android/glass/timeline/HostedCard;)V

    .line 45
    return-void
.end method
