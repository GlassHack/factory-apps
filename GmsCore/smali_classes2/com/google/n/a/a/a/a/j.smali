.class public final Lcom/google/n/a/a/a/a/j;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 250
    iput-object v0, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/j;->G:I

    .line 251
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 310
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 314
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 222
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 301
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 303
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 304
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    if-ne p1, p0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/j;

    if-nez v2, :cond_2

    move v0, v1

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/j;

    .line 269
    iget-object v2, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 270
    iget-object v2, p1, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 274
    goto :goto_0

    .line 276
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    if-nez v2, :cond_5

    .line 277
    iget-object v2, p1, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move v0, v1

    .line 278
    goto :goto_0

    .line 280
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 281
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 291
    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/j;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method
