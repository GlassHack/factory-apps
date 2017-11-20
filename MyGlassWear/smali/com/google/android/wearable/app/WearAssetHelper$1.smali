.class Lcom/google/android/wearable/app/WearAssetHelper$1;
.super Ljava/lang/Object;
.source "WearAssetHelper.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/app/WearAssetHelper;->saveAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/app/WearAssetHelper;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/app/WearAssetHelper;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/wearable/app/WearAssetHelper;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/wearable/app/WearAssetHelper$1;->this$0:Lcom/google/android/wearable/app/WearAssetHelper;

    iput-object p2, p0, Lcom/google/android/wearable/app/WearAssetHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/wearable/app/WearAssetHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/wearable/app/WearAssetHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    return-void
.end method
