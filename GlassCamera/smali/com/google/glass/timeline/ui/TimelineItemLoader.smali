.class public abstract Lcom/google/glass/timeline/ui/TimelineItemLoader;
.super Ljava/lang/Object;
.source "TimelineItemLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/ui/TimelineItemLoader$NoopTimelineItemLoader;,
        Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;,
        Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/glass/timeline/ui/TimelineItemLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$NoopTimelineItemLoader;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$NoopTimelineItemLoader;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/ui/TimelineItemLoader;->EMPTY:Lcom/google/glass/timeline/ui/TimelineItemLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method


# virtual methods
.method public abstract asyncRead(ILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
.end method

.method public calculateRowId(Ljava/lang/String;J)J
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "creationTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 155
    .local v0, "idHashCode":J
    :goto_0
    const/16 v2, 0x20

    shl-long v2, v0, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p2

    or-long/2addr v2, v4

    return-wide v2

    .line 154
    .end local v0    # "idHashCode":J
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v0, v2

    goto :goto_0
.end method

.method public abstract find(Lcom/google/glass/timeline/TimelineItemId;)I
.end method

.method public abstract getCount()I
.end method

.method public abstract getItemId(I)J
.end method
