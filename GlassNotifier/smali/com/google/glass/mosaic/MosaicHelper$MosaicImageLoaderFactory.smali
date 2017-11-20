.class public Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;
.super Ljava/lang/Object;
.source "MosaicHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/mosaic/MosaicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MosaicImageLoaderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/mosaic/MosaicHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/mosaic/MosaicHelper$1;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createImageLoader(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p2, "creatorOnly"    # Z
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 56
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/mosaic/ImageLoaders;->forTimelineItemStaticImage(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    return-object v0
.end method
