.class public Lcom/google/glass/timeline/ui/WearHelper;
.super Ljava/lang/Object;
.source "WearHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasOpenOnPhoneMenuOption(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v1, 0x0

    .line 21
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasAttributionType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 23
    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 25
    .local v0, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-static {p1, p2, v0}, Lcom/google/glass/timeline/TimelineMenuUtils;->shouldShowMenuItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasBroadcastAction()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.google.android.wearable.app.WEAR_ITEM_OPEN_ACTION"

    .line 27
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 32
    .end local v0    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_0
    return v1

    .line 24
    .restart local v0    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
