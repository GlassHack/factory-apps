.class public final Lcom/google/n/a/a/a/a/e;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Lcom/google/n/a/a/a/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/n/a/a/a/a/f;->b()[Lcom/google/n/a/a/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/e;->G:I

    .line 1202
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 1263
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1264
    iget-object v1, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1265
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1269
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1270
    iget-object v2, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    aget-object v2, v2, v0

    .line 1271
    if-eqz v2, :cond_1

    .line 1272
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1269
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1277
    :cond_3
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1177
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/f;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/n/a/a/a/a/f;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/n/a/a/a/a/f;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1248
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1251
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1252
    iget-object v1, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    aget-object v1, v1, v0

    .line 1253
    if-eqz v1, :cond_1

    .line 1254
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1251
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1258
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1259
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1213
    if-ne p1, p0, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return v0

    .line 1216
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/e;

    if-nez v2, :cond_2

    move v0, v1

    .line 1217
    goto :goto_0

    .line 1219
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/e;

    .line 1220
    iget-object v2, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1221
    iget-object v2, p1, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1222
    goto :goto_0

    .line 1224
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1225
    goto :goto_0

    .line 1227
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1229
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1239
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/n/a/a/a/a/e;->b:[Lcom/google/n/a/a/a/a/f;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1241
    return v0

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
