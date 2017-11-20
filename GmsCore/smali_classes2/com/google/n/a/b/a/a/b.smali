.class public final Lcom/google/n/a/b/a/a/b;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 172
    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->a:[I

    iput-object v0, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/b;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/b;->G:I

    .line 173
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v4

    .line 251
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    move v2, v1

    move v3, v1

    .line 254
    :goto_0
    iget-object v5, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 255
    iget-object v5, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 256
    if-eqz v5, :cond_0

    .line 257
    add-int/lit8 v3, v3, 0x1

    .line 258
    invoke-static {v5}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    add-int v0, v4, v2

    .line 263
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 265
    :goto_1
    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    move v4, v1

    .line 268
    :goto_2
    iget-object v5, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 269
    iget-object v5, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 270
    if-eqz v5, :cond_2

    .line 271
    add-int/lit8 v4, v4, 0x1

    .line 272
    invoke-static {v5}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 268
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 276
    :cond_3
    add-int/2addr v0, v3

    .line 277
    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    .line 279
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    .line 281
    :goto_3
    iget-object v3, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 282
    iget-object v3, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    aget v3, v3, v1

    .line 283
    invoke-static {v3}, Lcom/google/protobuf/nano/b;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 286
    :cond_5
    add-int/2addr v0, v2

    .line 287
    iget-object v1, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 289
    :cond_6
    return v0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    array-length v0, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v2

    move v0, v1

    :goto_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->e(I)V

    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    if-nez v2, :cond_c

    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_9
    array-length v4, v0

    if-ge v2, v4, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    array-length v2, v2

    goto :goto_8

    :cond_d
    iput-object v0, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 225
    :goto_0
    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 227
    if-eqz v2, :cond_0

    .line 228
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 233
    :goto_1
    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 234
    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 235
    if-eqz v2, :cond_2

    .line 236
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 233
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 241
    :goto_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 242
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 245
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 246
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    if-ne p1, p0, :cond_1

    .line 187
    const/4 v0, 0x1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/b;

    if-eqz v1, :cond_0

    .line 192
    check-cast p1, Lcom/google/n/a/b/a/a/b;

    .line 193
    iget-object v1, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    iget-object v2, p1, Lcom/google/n/a/b/a/a/b;->c:[I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/b;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/n/a/b/a/a/b;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 213
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/b/a/a/b;->b:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/b/a/a/b;->c:[I

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    return v0
.end method
