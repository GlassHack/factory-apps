.class public abstract Lcom/google/protobuf/nano/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile G:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/j;->G:I

    return-void
.end method

.method public static final a(Lcom/google/protobuf/nano/j;[BI)V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p2}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 117
    invoke-virtual {v0}, Lcom/google/protobuf/nano/b;->a()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 121
    :cond_0
    return-void
.end method

.method public static final a(Lcom/google/protobuf/nano/j;)[B
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/nano/j;->e()I

    move-result v0

    new-array v0, v0, [B

    .line 100
    array-length v1, v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;[BI)V

    .line 101
    return-object v0
.end method

.method public static final b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p2}, Lcom/google/protobuf/nano/a;->a([BII)Lcom/google/protobuf/nano/a;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/a;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    return-object p0

    .line 145
    :catch_0
    move-exception v0

    throw v0

    .line 148
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
.end method

.method public a(Lcom/google/protobuf/nano/b;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/protobuf/nano/j;->G:I

    if-gez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/nano/j;->e()I

    .line 55
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/j;->G:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 65
    iput v0, p0, Lcom/google/protobuf/nano/j;->G:I

    .line 66
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-static {p0}, Lcom/google/protobuf/nano/k;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
