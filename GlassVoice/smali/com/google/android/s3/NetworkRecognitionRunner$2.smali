.class Lcom/google/android/s3/NetworkRecognitionRunner$2;
.super Ljava/lang/Object;
.source "NetworkRecognitionRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/s3/NetworkRecognitionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/s3/NetworkRecognitionRunner;


# direct methods
.method constructor <init>(Lcom/google/android/s3/NetworkRecognitionRunner;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/s3/NetworkRecognitionRunner$2;->this$0:Lcom/google/android/s3/NetworkRecognitionRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$2;->this$0:Lcom/google/android/s3/NetworkRecognitionRunner;

    iget-object v0, v0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$2;->this$0:Lcom/google/android/s3/NetworkRecognitionRunner;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/s3/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/s3/S3Connection;

    .line 83
    return-void
.end method
