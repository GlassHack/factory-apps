.class Lcom/google/android/s3/NetworkRecognitionRunner$1;
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
    .line 71
    iput-object p1, p0, Lcom/google/android/s3/NetworkRecognitionRunner$1;->this$0:Lcom/google/android/s3/NetworkRecognitionRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/s3/NetworkRecognitionRunner$1;->this$0:Lcom/google/android/s3/NetworkRecognitionRunner;

    invoke-virtual {v0}, Lcom/google/android/s3/NetworkRecognitionRunner;->runNetworkLoop()V

    .line 75
    return-void
.end method
