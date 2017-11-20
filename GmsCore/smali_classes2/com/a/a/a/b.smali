.class public final Lcom/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[B

.field b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    .line 39
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/a/a/a/b;->a:[B

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/b;->b:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/16 v2, 0x4000

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/b;->b:I

    .line 80
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/a/a/a/b;->a:[B

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    iget v1, p0, Lcom/a/a/a/b;->b:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget v1, p0, Lcom/a/a/a/b;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/a/a/a/b;->b:I

    .line 86
    if-ne v0, v2, :cond_0

    .line 88
    iget v0, p0, Lcom/a/a/a/b;->b:I

    add-int/lit16 v0, v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/a/a/a/b;->a(I)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/a/a/a/b;->a:[B

    .line 50
    array-length v0, p1

    iput v0, p0, Lcom/a/a/a/b;->b:I

    .line 51
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/a/a/a/b;->a:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/a/a/a/b;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    .line 322
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/a/a/a/b;->a:[B

    .line 323
    iget-object v1, p0, Lcom/a/a/a/b;->a:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    :cond_0
    return-void
.end method

.method public final a([BI)V
    .locals 3

    .prologue
    .line 198
    iget v0, p0, Lcom/a/a/a/b;->b:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/a/a/a/b;->a(I)V

    .line 199
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/a/b;->a:[B

    iget v2, p0, Lcom/a/a/a/b;->b:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget v0, p0, Lcom/a/a/a/b;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/a/a/a/b;->b:I

    .line 201
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xfe

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 236
    iget v0, p0, Lcom/a/a/a/b;->b:I

    if-ge v0, v3, :cond_1

    .line 239
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    .line 307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    return-object v0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_5

    .line 248
    iget v0, p0, Lcom/a/a/a/b;->b:I

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v5

    if-eqz v0, :cond_3

    .line 250
    :cond_2
    const-string v0, "UTF-16BE"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    .line 254
    const-string v0, "UTF-32BE"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_4
    const-string v0, "UTF-32"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-ge v0, v1, :cond_9

    .line 267
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v5

    if-eqz v0, :cond_6

    .line 269
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_6
    iget v0, p0, Lcom/a/a/a/b;->b:I

    if-lt v0, v4, :cond_7

    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_8

    .line 273
    :cond_7
    const-string v0, "UTF-16LE"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_8
    const-string v0, "UTF-32LE"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_9
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xef

    if-ne v0, v1, :cond_a

    .line 290
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_a
    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_b

    .line 294
    const-string v0, "UTF-16"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_b
    iget v0, p0, Lcom/a/a/a/b;->b:I

    if-lt v0, v4, :cond_c

    iget-object v0, p0, Lcom/a/a/a/b;->a:[B

    aget-byte v0, v0, v3

    if-eqz v0, :cond_d

    .line 298
    :cond_c
    const-string v0, "UTF-16"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 302
    :cond_d
    const-string v0, "UTF-32"

    iput-object v0, p0, Lcom/a/a/a/b;->c:Ljava/lang/String;

    goto/16 :goto_0
.end method
