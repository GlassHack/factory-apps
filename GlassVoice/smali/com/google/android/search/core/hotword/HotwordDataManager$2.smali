.class Lcom/google/android/search/core/hotword/HotwordDataManager$2;
.super Lcom/google/android/shared/util/NamedRunnable;
.source "HotwordDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/search/core/hotword/HotwordDataManager;->setSpeakerModel([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/search/core/hotword/HotwordDataManager;

.field final synthetic val$speakerModel:[B


# direct methods
.method varargs constructor <init>(Lcom/google/android/search/core/hotword/HotwordDataManager;Ljava/lang/String;[I[B)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [I

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/search/core/hotword/HotwordDataManager$2;->this$0:Lcom/google/android/search/core/hotword/HotwordDataManager;

    iput-object p4, p0, Lcom/google/android/search/core/hotword/HotwordDataManager$2;->val$speakerModel:[B

    invoke-direct {p0, p2, p3}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    :try_start_0
    const-string v1, "HotwordDataManager"

    const-string v2, "Writing speaker model to disk"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 223
    iget-object v1, p0, Lcom/google/android/search/core/hotword/HotwordDataManager$2;->val$speakerModel:[B

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/search/core/hotword/HotwordDataManager$2;->this$0:Lcom/google/android/search/core/hotword/HotwordDataManager;

    invoke-static {v3}, Lcom/google/android/search/core/hotword/HotwordDataManager;->access$000(Lcom/google/android/search/core/hotword/HotwordDataManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/search/core/hotword/HotwordDataManager;->getSpeakerModelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/shared/util/IoUtils;->write([BLjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HotwordDataManager"

    const-string v2, "Error while writing speaker model"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method
