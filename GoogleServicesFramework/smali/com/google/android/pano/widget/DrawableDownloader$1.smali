.class Lcom/google/android/pano/widget/DrawableDownloader$1;
.super Landroid/util/LruCache;
.source "DrawableDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/DrawableDownloader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/DrawableDownloader;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/DrawableDownloader;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/pano/widget/DrawableDownloader$1;->this$0:Lcom/google/android/pano/widget/DrawableDownloader;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/pano/widget/DrawableDownloader$1;->entryRemoved(ZLjava/lang/String;Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;
    .param p4, "newValue"    # Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p3}, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->clear()V

    .line 187
    :cond_0
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/DrawableDownloader$1;->sizeOf(Ljava/lang/String;Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;

    .prologue
    .line 179
    iget v0, p2, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->mByteCount:I

    return v0
.end method
