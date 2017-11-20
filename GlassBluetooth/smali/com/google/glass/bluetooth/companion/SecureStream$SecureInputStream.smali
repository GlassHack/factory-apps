.class Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;
.super Ljava/io/InputStream;
.source "SecureStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/SecureStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/SecureStream;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/companion/SecureStream;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/companion/SecureStream;Lcom/google/glass/bluetooth/companion/SecureStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/companion/SecureStream;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/companion/SecureStream$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;-><init>(Lcom/google/glass/bluetooth/companion/SecureStream;)V

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
    .line 70
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$200(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$300(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    monitor-exit v1

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$300(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 75
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$302(Lcom/google/glass/bluetooth/companion/SecureStream;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 76
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$400(Lcom/google/glass/bluetooth/companion/SecureStream;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$500(Lcom/google/glass/bluetooth/companion/SecureStream;)V

    .line 79
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

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 87
    new-array v0, v5, [B

    .line 88
    .local v0, "b":[B
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v3, v0, v4, v5}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$600(Lcom/google/glass/bluetooth/companion/SecureStream;[BII)I

    move-result v1

    .line 89
    .local v1, "ret":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    goto :goto_0
.end method

.method public read([BII)I
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
    .line 83
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/SecureStream$SecureInputStream;->this$0:Lcom/google/glass/bluetooth/companion/SecureStream;

    invoke-static {v0, p1, p2, p3}, Lcom/google/glass/bluetooth/companion/SecureStream;->access$600(Lcom/google/glass/bluetooth/companion/SecureStream;[BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "count"    # J

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stream does not support skipping."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
