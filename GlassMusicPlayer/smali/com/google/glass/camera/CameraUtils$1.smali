.class Lcom/google/glass/camera/CameraUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/CameraUtils;

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/CameraUtils;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/camera/CameraUtils$1;->this$0:Lcom/google/glass/camera/CameraUtils;

    iput-object p2, p0, Lcom/google/glass/camera/CameraUtils$1;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/camera/CameraUtils$1;->val$thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/camera/CameraUtils$1;->val$thumbnail:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 100
    return-void
.end method
