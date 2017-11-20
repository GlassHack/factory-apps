.class public Lcom/google/glass/timeline/ui/WearHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 21
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasAttributionType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    iget-object v1, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 23
    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 25
    invoke-static {p1, p2, v4}, Lcom/google/glass/timeline/TimelineMenuUtils;->shouldShowMenuItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasBroadcastAction()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.google.android.wearable.app.WEAR_ITEM_OPEN_ACTION"

    .line 27
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 32
    :cond_0
    return v0

    .line 24
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
