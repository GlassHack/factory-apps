.class public Lcom/google/glass/timeline/ui/VideoItemView;
.super Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
.source "SourceFile"


# instance fields
.field private bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private videoAttachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public setVideoAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/timeline/ui/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 41
    iput-object p2, p0, Lcom/google/glass/timeline/ui/VideoItemView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 42
    return-void
.end method
