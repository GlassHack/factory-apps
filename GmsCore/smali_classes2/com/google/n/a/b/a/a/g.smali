.class public final Lcom/google/n/a/b/a/a/g;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2196
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 2197
    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/g;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/g;->G:I

    .line 2198
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2248
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v3

    .line 2249
    iget-object v1, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    move v2, v0

    .line 2252
    :goto_0
    iget-object v4, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 2253
    iget-object v4, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 2254
    if-eqz v4, :cond_0

    .line 2255
    add-int/lit8 v2, v2, 0x1

    .line 2256
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 2252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2260
    :cond_1
    add-int v0, v3, v1

    .line 2261
    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 2263
    :goto_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/g;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

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
    .line 2235
    iget-object v0, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2236
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2237
    iget-object v1, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 2238
    if-eqz v1, :cond_0

    .line 2239
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 2236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2243
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 2244
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2209
    if-ne p1, p0, :cond_1

    .line 2210
    const/4 v0, 0x1

    .line 2220
    :cond_0
    :goto_0
    return v0

    .line 2212
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/g;

    if-eqz v1, :cond_0

    .line 2215
    check-cast p1, Lcom/google/n/a/b/a/a/g;

    .line 2216
    iget-object v1, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2220
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/g;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/google/n/a/b/a/a/g;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 2228
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/g;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 2229
    return v0
.end method
