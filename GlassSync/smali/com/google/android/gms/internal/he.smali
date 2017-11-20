.class public abstract Lcom/google/android/gms/internal/he;
.super Ljava/lang/Object;


# instance fields
.field protected volatile XN:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/he;->XN:I

    return-void
.end method

.method public static final mergeFrom(Lcom/google/android/gms/internal/he;[B)Lcom/google/android/gms/internal/he;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/he;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/hd;
        }
    .end annotation

    .prologue
    .local p0, "msg":Lcom/google/android/gms/internal/he;, "TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/he;->mergeFrom(Lcom/google/android/gms/internal/he;[BII)Lcom/google/android/gms/internal/he;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/android/gms/internal/he;[BII)Lcom/google/android/gms/internal/he;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/he;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/hd;
        }
    .end annotation

    .prologue
    .local p0, "msg":Lcom/google/android/gms/internal/he;, "TT;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gw;->a([BII)Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/he;->mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/he;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gw;->ew(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/hd; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final toByteArray(Lcom/google/android/gms/internal/he;[BII)V
    .locals 3
    .param p0, "msg"    # Lcom/google/android/gms/internal/he;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gx;->b([BII)Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/he;->writeTo(Lcom/google/android/gms/internal/gx;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gx;->iX()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final toByteArray(Lcom/google/android/gms/internal/he;)[B
    .locals 3
    .param p0, "msg"    # Lcom/google/android/gms/internal/he;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/he;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/he;->toByteArray(Lcom/google/android/gms/internal/he;[BII)V

    return-object v0
.end method


# virtual methods
.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/he;->XN:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/he;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/he;->XN:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/he;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/he;->XN:I

    return v0
.end method

.method public abstract mergeFrom(Lcom/google/android/gms/internal/gw;)Lcom/google/android/gms/internal/he;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/hf;->f(Lcom/google/android/gms/internal/he;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/gx;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/gms/internal/gx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    return-void
.end method
