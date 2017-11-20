.class public abstract Lcom/google/glass/timeline/ui/TimelineItemLoader;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 4

    .prologue
    .line 154
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 155
    :goto_0
    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p2

    or-long/2addr v0, v2

    return-wide v0

    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public abstract find(Lcom/google/glass/timeline/TimelineItemId;)I
.end method

.method public abstract getCount()I
.end method

.method public abstract getItemId(I)J
.end method
