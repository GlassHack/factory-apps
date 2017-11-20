.class public final Lcom/google/n/a/a/a/a/l;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/n/a/a/a/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1244
    invoke-static {}, Lcom/google/n/a/a/a/a/m;->b()[Lcom/google/n/a/a/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/l;->G:I

    .line 1245
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 1293
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v1

    .line 1294
    iget-object v0, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1295
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1296
    iget-object v2, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    aget-object v2, v2, v0

    .line 1297
    if-eqz v2, :cond_0

    .line 1298
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    :cond_1
    return v1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1223
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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/a/a/a/m;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/n/a/a/a/a/m;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/m;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/n/a/a/a/a/m;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/m;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1281
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1282
    iget-object v1, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    aget-object v1, v1, v0

    .line 1283
    if-eqz v1, :cond_0

    .line 1284
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1288
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1289
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1255
    if-ne p1, p0, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return v0

    .line 1258
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/l;

    if-nez v2, :cond_2

    move v0, v1

    .line 1259
    goto :goto_0

    .line 1261
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/l;

    .line 1262
    iget-object v2, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1264
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/google/n/a/a/a/a/l;->a:[Lcom/google/n/a/a/a/a/m;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 1274
    return v0
.end method
