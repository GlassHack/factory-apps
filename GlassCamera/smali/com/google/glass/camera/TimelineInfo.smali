.class Lcom/google/glass/camera/TimelineInfo;
.super Ljava/lang/Object;
.source "TimelineInfo.java"


# instance fields
.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private pictureId:I

.field private vignette:Lcom/google/glass/camera/TimelineInfo;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/glass/camera/TimelineInfo;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 0
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "pictureId"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/glass/camera/TimelineInfo;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 24
    iput p2, p0, Lcom/google/glass/camera/TimelineInfo;->pictureId:I

    .line 25
    return-void
.end method


# virtual methods
.method getId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/glass/camera/TimelineInfo;->pictureId:I

    return v0
.end method

.method getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/camera/TimelineInfo;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method getVignette()Lcom/google/glass/camera/TimelineInfo;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/camera/TimelineInfo;->vignette:Lcom/google/glass/camera/TimelineInfo;

    return-object v0
.end method

.method hasVignette()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/camera/TimelineInfo;->vignette:Lcom/google/glass/camera/TimelineInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPicture()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/camera/TimelineInfo;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVignette()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/camera/TimelineInfo;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/glass/camera/TimelineInfo;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 35
    return-void
.end method

.method setVignette(Lcom/google/glass/camera/TimelineInfo;)V
    .locals 0
    .param p1, "vignette"    # Lcom/google/glass/camera/TimelineInfo;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/camera/TimelineInfo;->vignette:Lcom/google/glass/camera/TimelineInfo;

    .line 60
    return-void
.end method
