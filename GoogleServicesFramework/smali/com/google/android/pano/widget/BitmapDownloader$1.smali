.class Lcom/google/android/pano/widget/BitmapDownloader$1;
.super Landroid/util/LruCache;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/BitmapDownloader;-><init>(Landroid/content/Context;)V
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
        "Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/BitmapDownloader;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/BitmapDownloader;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapDownloader$1;->this$0:Lcom/google/android/pano/widget/BitmapDownloader;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/BitmapDownloader$1;->sizeOf(Ljava/lang/String;Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;

    .prologue
    .line 107
    iget-object v0, p2, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method
