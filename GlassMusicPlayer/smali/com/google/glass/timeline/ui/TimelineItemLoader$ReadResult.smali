.class public Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bundleCoverStatus:I

.field private final crc32:Ljava/lang/Long;

.field private final item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final processedHtml:Ljava/lang/String;

.field private final processedHtmlReadMore:Z


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILjava/lang/Long;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILjava/lang/Long;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 35
    iput p2, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->bundleCoverStatus:I

    .line 36
    iput-object p3, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->crc32:Ljava/lang/Long;

    .line 37
    iput-object p4, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->processedHtml:Ljava/lang/String;

    .line 38
    iput-boolean p5, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->processedHtmlReadMore:Z

    .line 41
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->processedHtmlReadMore:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public getBundleCoverStatus()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->bundleCoverStatus:I

    return v0
.end method

.method public getCrc32()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->crc32:Ljava/lang/Long;

    return-object v0
.end method

.method public getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getProcessedHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->processedHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessedHtmlReadMore()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->processedHtmlReadMore:Z

    return v0
.end method
