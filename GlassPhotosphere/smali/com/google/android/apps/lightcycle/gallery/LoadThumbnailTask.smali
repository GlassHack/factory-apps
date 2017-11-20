.class public Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "LoadThumbnailTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pathName:Ljava/lang/String;

.field private final view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Ljava/util/Map;)V
    .locals 0
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->pathName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->view:Landroid/widget/ImageView;

    .line 31
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->cache:Ljava/util/Map;

    .line 32
    return-void
.end method

.method private static declared-synchronized loadThumbnailFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->cache:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->pathName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->cache:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->pathName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->pathName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->loadThumbnailFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->cache:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->pathName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->cache:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->pathName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thumbnail":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->pathName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->view:Landroid/widget/ImageView;

    sget v2, Lcom/google/android/apps/lightcycle/R$id;->FILENAME:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->view:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->view:Landroid/widget/ImageView;

    const v1, 0x108005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->view:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
