.class Lcom/google/android/pano/widget/BitmapDownloader$2;
.super Lcom/google/android/pano/widget/BitmapWorkerTask;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/BitmapDownloader;->loadBitmapBlocking(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/BitmapDownloader;

.field final synthetic val$hasAccountImageUri:Z


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/BitmapDownloader;Landroid/widget/ImageView;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/pano/widget/BitmapDownloader$2;->this$0:Lcom/google/android/pano/widget/BitmapDownloader;

    iput-boolean p3, p0, Lcom/google/android/pano/widget/BitmapDownloader$2;->val$hasAccountImageUri:Z

    invoke-direct {p0, p2}, Lcom/google/android/pano/widget/BitmapWorkerTask;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/BitmapWorkerTask;->doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/pano/widget/BitmapDownloader$2;->val$hasAccountImageUri:Z

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/google/android/pano/widget/BitmapDownloader$2;->this$0:Lcom/google/android/pano/widget/BitmapDownloader;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0}, Lcom/google/android/pano/widget/BitmapDownloader$2;->isScaled()Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/pano/widget/BitmapDownloader;->access$000(Lcom/google/android/pano/widget/BitmapDownloader;Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;Z)V

    .line 135
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/BitmapDownloader$2;->doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
