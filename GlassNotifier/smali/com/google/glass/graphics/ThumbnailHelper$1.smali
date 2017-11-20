.class Lcom/google/glass/graphics/ThumbnailHelper$1;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"

# interfaces
.implements Lcom/google/glass/io/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/graphics/ThumbnailHelper;->saveThumbnailToCachedFiles(Lcom/google/glass/io/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/glass/graphics/ThumbnailHelper;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/graphics/ThumbnailHelper;

    .prologue
    .line 45
    iput-object p2, p0, Lcom/google/glass/graphics/ThumbnailHelper$1;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/graphics/ThumbnailHelper$1;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/graphics/ThumbnailHelper$1;->val$thumbnail:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 50
    return-void
.end method
