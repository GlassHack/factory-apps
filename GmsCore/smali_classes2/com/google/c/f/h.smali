.class public final Lcom/google/c/f/h;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1216
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1217
    iput v0, p0, Lcom/google/c/f/h;->a:I

    iput v0, p0, Lcom/google/c/f/h;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/h;->G:I

    .line 1218
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1267
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1268
    iget v1, p0, Lcom/google/c/f/h;->a:I

    if-eqz v1, :cond_0

    .line 1269
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/c/f/h;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1272
    :cond_0
    iget v1, p0, Lcom/google/c/f/h;->b:I

    if-eqz v1, :cond_1

    .line 1273
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/c/f/h;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1276
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1168
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/c/f/h;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/c/f/h;->b:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1256
    iget v0, p0, Lcom/google/c/f/h;->a:I

    if-eqz v0, :cond_0

    .line 1257
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/c/f/h;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1259
    :cond_0
    iget v0, p0, Lcom/google/c/f/h;->b:I

    if-eqz v0, :cond_1

    .line 1260
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/c/f/h;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1262
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1263
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1229
    if-ne p1, p0, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1232
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/h;

    if-nez v2, :cond_2

    move v0, v1

    .line 1233
    goto :goto_0

    .line 1235
    :cond_2
    check-cast p1, Lcom/google/c/f/h;

    .line 1236
    iget v2, p0, Lcom/google/c/f/h;->a:I

    iget v3, p1, Lcom/google/c/f/h;->a:I

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1237
    goto :goto_0

    .line 1239
    :cond_3
    iget v2, p0, Lcom/google/c/f/h;->b:I

    iget v3, p1, Lcom/google/c/f/h;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 1240
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1247
    iget v0, p0, Lcom/google/c/f/h;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 1249
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/c/f/h;->b:I

    add-int/2addr v0, v1

    .line 1250
    return v0
.end method
