.class public final Lcom/google/android/gms/common/server/q;
.super Lcom/android/d/p;
.source "SourceFile"


# instance fields
.field private final c:I

.field private final d:[B

.field private final e:Lcom/android/d/v;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(IILjava/lang/String;[BLjava/lang/Object;Lcom/android/d/v;Lcom/android/d/u;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)V
    .locals 3

    .prologue
    .line 88
    invoke-direct {p0, p2, p3, p7}, Lcom/android/d/p;-><init>(ILjava/lang/String;Lcom/android/d/u;)V

    .line 89
    iput p1, p0, Lcom/google/android/gms/common/server/q;->c:I

    .line 90
    iput-object p6, p0, Lcom/google/android/gms/common/server/q;->e:Lcom/android/d/v;

    .line 91
    iput-object p4, p0, Lcom/google/android/gms/common/server/q;->d:[B

    .line 92
    iput-object p5, p0, Lcom/google/android/gms/common/server/q;->f:Ljava/lang/Object;

    .line 93
    iput-object p11, p0, Lcom/google/android/gms/common/server/q;->g:Ljava/util/HashMap;

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/common/server/q;->g:Ljava/util/HashMap;

    invoke-static {v0, p8, p9}, Lcom/google/android/gms/common/server/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/common/server/q;->g:Ljava/util/HashMap;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iput-boolean p10, p0, Lcom/android/d/p;->a:Z

    .line 97
    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/d/m;)Lcom/android/d/t;
    .locals 6

    .prologue
    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcom/android/d/p;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/d/a/i;->a(Lcom/android/d/m;)Lcom/android/d/c;

    move-result-object v0

    move-object v2, v0

    .line 142
    :goto_0
    iget-object v0, p1, Lcom/android/d/m;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/common/util/n;->a([B)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "ProtiaryRequest"

    const-string v2, "Unable to parse the network response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    new-instance v1, Lcom/android/d/o;

    invoke-direct {v1, v0}, Lcom/android/d/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/d/t;->a(Lcom/android/d/aa;)Lcom/android/d/t;

    move-result-object v0

    .line 152
    :goto_2
    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    move-object v1, v0

    iget v0, p0, Lcom/google/android/gms/common/server/q;->c:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/server/q;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/nano/j;

    array-length v3, v1

    invoke-static {v0, v1, v3}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/common/server/q;->f:Ljava/lang/Object;

    .line 143
    invoke-static {v0, v2}, Lcom/android/d/t;->a(Ljava/lang/Object;Lcom/android/d/c;)Lcom/android/d/t;

    move-result-object v0

    goto :goto_2

    .line 142
    :cond_3
    iget v0, p0, Lcom/google/android/gms/common/server/q;->c:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/server/q;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/a/f;

    array-length v3, v1

    invoke-virtual {v0, v1, v3}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;
    :try_end_1
    .catch Lcom/google/protobuf/nano/i; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 147
    :catch_1
    move-exception v0

    .line 148
    const-string v1, "ProtiaryRequest"

    const-string v2, "Unable to parse the network response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    new-instance v1, Lcom/android/d/o;

    invoke-direct {v1, v0}, Lcom/android/d/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/d/t;->a(Lcom/android/d/aa;)Lcom/android/d/t;

    move-result-object v0

    goto :goto_2

    .line 142
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid ProtoType provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/google/protobuf/nano/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/protobuf/a/e; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    :catch_2
    move-exception v0

    .line 151
    const-string v1, "ProtiaryRequest"

    const-string v2, "Unable to parse the network response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    new-instance v1, Lcom/android/d/o;

    invoke-direct {v1, v0}, Lcom/android/d/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/d/t;->a(Lcom/android/d/aa;)Lcom/android/d/t;

    move-result-object v0

    goto :goto_2
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/common/server/q;->e:Lcom/android/d/v;

    invoke-interface {v0, p1}, Lcom/android/d/v;->a(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/common/server/q;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "application/x-protobuf"

    return-object v0
.end method

.method public final l()[B
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/common/server/q;->d:[B

    return-object v0
.end method
