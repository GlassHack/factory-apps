.class public final Lcom/google/android/location/m/a/ah;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/m/a/bo;

.field public b:[Lcom/google/android/location/m/a/d;

.field public c:Lcom/google/android/location/m/a/cd;

.field public d:[Lcom/google/android/location/m/a/ai;

.field public e:[Lcom/google/android/location/m/a/o;

.field public f:Lcom/google/android/location/m/a/bt;

.field public g:Ljava/lang/Integer;

.field public h:Lcom/google/android/location/m/b/d;

.field public i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    invoke-static {}, Lcom/google/android/location/m/a/d;->b()[Lcom/google/android/location/m/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    iput-object v1, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    invoke-static {}, Lcom/google/android/location/m/a/ai;->b()[Lcom/google/android/location/m/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    invoke-static {}, Lcom/google/android/location/m/a/o;->b()[Lcom/google/android/location/m/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    iput-object v1, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    iput-object v1, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    iput-object v1, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/ah;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ah;->G:I

    .line 65
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 230
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    if-eqz v2, :cond_0

    .line 231
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 235
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    aget-object v3, v3, v0

    .line 237
    if-eqz v3, :cond_1

    .line 238
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    if-eqz v2, :cond_4

    .line 244
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 247
    :cond_4
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v0

    move v0, v1

    .line 248
    :goto_1
    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 249
    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    aget-object v3, v3, v0

    .line 250
    if-eqz v3, :cond_5

    .line 251
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 248
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 256
    :cond_7
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 257
    :goto_2
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 258
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    aget-object v2, v2, v1

    .line 259
    if-eqz v2, :cond_8

    .line 260
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 257
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 265
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    if-eqz v1, :cond_a

    .line 266
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 270
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    if-eqz v1, :cond_c

    .line 274
    const/16 v1, 0x101

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 278
    const/16 v1, 0x800

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_d
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ah;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/bo;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bo;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/d;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/android/location/m/a/d;

    invoke-direct {v3}, Lcom/google/android/location/m/a/d;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/location/m/a/d;

    invoke-direct {v3}, Lcom/google/android/location/m/a/d;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/location/m/a/cd;

    invoke-direct {v0}, Lcom/google/android/location/m/a/cd;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/ai;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    new-instance v3, Lcom/google/android/location/m/a/ai;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ai;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    array-length v0, v0

    goto :goto_3

    :cond_8
    new-instance v3, Lcom/google/android/location/m/a/ai;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ai;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/o;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    new-instance v3, Lcom/google/android/location/m/a/o;

    invoke-direct {v3}, Lcom/google/android/location/m/a/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    array-length v0, v0

    goto :goto_5

    :cond_b
    new-instance v3, Lcom/google/android/location/m/a/o;

    invoke-direct {v3}, Lcom/google/android/location/m/a/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/location/m/a/bt;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bt;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    :cond_c
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/android/location/m/b/d;

    invoke-direct {v0}, Lcom/google/android/location/m/b/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    :cond_d
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x80a -> :sswitch_8
        0x4000 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    aget-object v2, v2, v0

    .line 188
    if-eqz v2, :cond_1

    .line 189
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    if-eqz v0, :cond_3

    .line 194
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 197
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 198
    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    aget-object v2, v2, v0

    .line 199
    if-eqz v2, :cond_4

    .line 200
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 197
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 205
    :goto_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 206
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    aget-object v0, v0, v1

    .line 207
    if-eqz v0, :cond_6

    .line 208
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 205
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    if-eqz v0, :cond_8

    .line 213
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 215
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 216
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    if-eqz v0, :cond_a

    .line 219
    const/16 v0, 0x101

    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 221
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 222
    const/16 v0, 0x800

    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 224
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 225
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    if-ne p1, p0, :cond_1

    .line 85
    const/4 v0, 0x1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ah;

    if-eqz v1, :cond_0

    .line 90
    check-cast p1, Lcom/google/android/location/m/a/ah;

    .line 91
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    if-nez v1, :cond_8

    .line 92
    iget-object v1, p1, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    if-nez v1, :cond_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    if-nez v1, :cond_9

    .line 105
    iget-object v1, p1, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    if-nez v1, :cond_0

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    if-nez v1, :cond_a

    .line 122
    iget-object v1, p1, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    if-nez v1, :cond_0

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    if-nez v1, :cond_b

    .line 131
    iget-object v1, p1, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    if-nez v1, :cond_c

    .line 138
    iget-object v1, p1, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    if-nez v1, :cond_0

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    if-nez v1, :cond_d

    .line 147
    iget-object v1, p1, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 152
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ah;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 96
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 109
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/cd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 126
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 134
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 142
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 150
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->e:[Lcom/google/android/location/m/a/o;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 175
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ah;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bo;->hashCode()I

    move-result v0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->c:Lcom/google/android/location/m/a/cd;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/cd;->hashCode()I

    move-result v0

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->f:Lcom/google/android/location/m/a/bt;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bt;->hashCode()I

    move-result v0

    goto :goto_2

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ah;->h:Lcom/google/android/location/m/b/d;

    invoke-virtual {v0}, Lcom/google/android/location/m/b/d;->hashCode()I

    move-result v0

    goto :goto_4

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ah;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5
.end method
