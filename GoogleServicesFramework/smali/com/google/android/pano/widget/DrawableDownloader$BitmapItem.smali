.class Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;
.super Ljava/lang/Object;
.source "DrawableDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/DrawableDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapItem"
.end annotation


# instance fields
.field mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field mByteCount:I


# virtual methods
.method clear()V
    .locals 4

    .prologue
    .line 117
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "c":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 118
    iget-object v3, p0, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 119
    .local v1, "d":Landroid/graphics/drawable/BitmapDrawable;
    instance-of v3, v1, Lcom/google/android/pano/widget/RefcountBitmapDrawable;

    if-eqz v3, :cond_0

    .line 120
    check-cast v1, Lcom/google/android/pano/widget/RefcountBitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Lcom/google/android/pano/widget/RefcountBitmapDrawable;->getRefcountObject()Lcom/google/android/pano/widget/RefcountObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/pano/widget/RefcountObject;->releaseRef()I

    .line 117
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->mByteCount:I

    .line 125
    return-void
.end method

.method findLargestDrawable(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->mBitmaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method
