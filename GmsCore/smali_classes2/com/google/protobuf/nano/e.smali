.class public final Lcom/google/protobuf/nano/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:I

.field protected final b:Ljava/lang/Class;

.field protected final c:I

.field protected final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/Class;I)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/protobuf/nano/e;->a:I

    .line 150
    iput-object p2, p0, Lcom/google/protobuf/nano/e;->b:Ljava/lang/Class;

    .line 151
    const v0, 0x65270aa

    iput v0, p0, Lcom/google/protobuf/nano/e;->c:I

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/e;->d:Z

    .line 153
    return-void
.end method

.method private b(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 300
    iget v0, p0, Lcom/google/protobuf/nano/e;->c:I

    invoke-static {v0}, Lcom/google/protobuf/nano/m;->b(I)I

    move-result v0

    .line 301
    iget v1, p0, Lcom/google/protobuf/nano/e;->a:I

    packed-switch v1, :pswitch_data_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/e;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_0
    check-cast p1, Lcom/google/protobuf/nano/j;

    .line 304
    invoke-static {v0}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/protobuf/nano/j;->e()I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :goto_0
    return v0

    .line 306
    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/j;

    .line 307
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v0

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/e;->c:I

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/b;->c(I)V

    .line 245
    iget v0, p0, Lcom/google/protobuf/nano/e;->a:I

    packed-switch v0, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/e;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 247
    :pswitch_0
    :try_start_1
    check-cast p1, Lcom/google/protobuf/nano/j;

    .line 248
    iget v0, p0, Lcom/google/protobuf/nano/e;->c:I

    invoke-static {v0}, Lcom/google/protobuf/nano/m;->b(I)I

    move-result v0

    .line 249
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 251
    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/b;->i(II)V

    .line 256
    :goto_0
    return-void

    .line 254
    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/j;

    .line 255
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/j;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-boolean v1, p0, Lcom/google/protobuf/nano/e;->d:Z

    if-eqz v1, :cond_1

    .line 279
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/protobuf/nano/e;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/e;->b(Ljava/lang/Object;)I

    move-result v0

    :cond_2
    return v0
.end method

.method final a(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/protobuf/nano/e;->d:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, p2}, Lcom/google/protobuf/nano/e;->b(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/nano/e;->b(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V

    .line 239
    :cond_2
    return-void
.end method
