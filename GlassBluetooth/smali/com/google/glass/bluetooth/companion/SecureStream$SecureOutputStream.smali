.class Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;
.super Ljava/io/OutputStream;
.source "SecureStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/SecureStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/SecureStream;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/companion/SecureStream;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/companion/SecureStream;Lcom/google/glass/bluetooth/companion/SecureStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/companion/SecureStream$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;-><init>(Lcom/google/glass/bluetooth/companion/SecureStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$200(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$400(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    monitor-exit v1

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$400(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 104
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$402(Lcom/google/glass/bluetooth/companion/SecureStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 105
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$300(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$500(Lcom/google/glass/bluetooth/companion/SecureStream;)V

    .line 108
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use write(byte[], int, int) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureOutputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0, p1, p2, p3}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$700(Lcom/google/glass/bluetooth/companion/SecureStream;[BII)V

    .line 113
    return-void
.end method
