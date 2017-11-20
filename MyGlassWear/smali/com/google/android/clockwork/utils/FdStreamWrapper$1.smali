.class Lcom/google/android/clockwork/utils/FdStreamWrapper$1;
.super Ljava/lang/Thread;
.source "FdStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/clockwork/utils/FdStreamWrapper;->getFd()Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/utils/FdStreamWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/utils/FdStreamWrapper;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;->this$0:Lcom/google/android/clockwork/utils/FdStreamWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 46
    iget-object v4, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;->this$0:Lcom/google/android/clockwork/utils/FdStreamWrapper;

    invoke-static {v4}, Lcom/google/android/clockwork/utils/FdStreamWrapper;->access$000(Lcom/google/android/clockwork/utils/FdStreamWrapper;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-nez v4, :cond_0

    .line 68
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v4, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;->this$0:Lcom/google/android/clockwork/utils/FdStreamWrapper;

    invoke-static {v4}, Lcom/google/android/clockwork/utils/FdStreamWrapper;->access$000(Lcom/google/android/clockwork/utils/FdStreamWrapper;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 53
    .local v3, "outputStream":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 54
    .local v0, "data":[B
    :goto_1
    iget-object v4, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;->this$0:Lcom/google/android/clockwork/utils/FdStreamWrapper;

    invoke-static {v4}, Lcom/google/android/clockwork/utils/FdStreamWrapper;->access$100(Lcom/google/android/clockwork/utils/FdStreamWrapper;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 55
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 59
    .end local v0    # "data":[B
    .end local v2    # "nRead":I
    .end local v3    # "outputStream":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "FdStreamWrapper"

    const-string v5, "Could not write to pipe"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    iget-object v4, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;->this$0:Lcom/google/android/clockwork/utils/FdStreamWrapper;

    invoke-static {v4}, Lcom/google/android/clockwork/utils/FdStreamWrapper;->access$100(Lcom/google/android/clockwork/utils/FdStreamWrapper;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v4

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "data":[B
    .restart local v2    # "nRead":I
    .restart local v3    # "outputStream":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V

    .line 58
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :try_start_4
    iget-object v4, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;->this$0:Lcom/google/android/clockwork/utils/FdStreamWrapper;

    invoke-static {v4}, Lcom/google/android/clockwork/utils/FdStreamWrapper;->access$100(Lcom/google/android/clockwork/utils/FdStreamWrapper;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 64
    :catch_2
    move-exception v4

    goto :goto_0

    .line 62
    .end local v0    # "data":[B
    .end local v2    # "nRead":I
    .end local v3    # "outputStream":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :catchall_0
    move-exception v4

    .line 63
    :try_start_5
    iget-object v5, p0, Lcom/google/android/clockwork/utils/FdStreamWrapper$1;->this$0:Lcom/google/android/clockwork/utils/FdStreamWrapper;

    invoke-static {v5}, Lcom/google/android/clockwork/utils/FdStreamWrapper;->access$100(Lcom/google/android/clockwork/utils/FdStreamWrapper;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 66
    :goto_2
    throw v4

    .line 64
    :catch_3
    move-exception v5

    goto :goto_2
.end method
