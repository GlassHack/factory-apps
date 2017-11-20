.class public Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/mosaic/MosaicHelper$1;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1

    .prologue
    .line 58
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/mosaic/ImageLoaders;->forTimelineItemStaticImage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    return-object v0
.end method
