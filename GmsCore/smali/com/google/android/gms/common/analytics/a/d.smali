.class public final Lcom/google/android/gms/common/analytics/a/d;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/common/analytics/a/c;

.field public b:Lcom/google/android/gms/common/analytics/a/g;

.field public c:Lcom/google/android/gms/common/analytics/a/b;

.field public d:[Lcom/google/android/gms/common/analytics/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1293
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1294
    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    invoke-static {}, Lcom/google/android/gms/common/analytics/a/f;->b()[Lcom/google/android/gms/common/analytics/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/analytics/a/d;->G:I

    .line 1295
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 1331
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1332
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    if-eqz v1, :cond_0

    .line 1333
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    if-eqz v1, :cond_1

    .line 1337
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1340
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    if-eqz v1, :cond_2

    .line 1341
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1344
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1345
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1346
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    aget-object v2, v2, v0

    .line 1347
    if-eqz v2, :cond_3

    .line 1348
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1345
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1353
    :cond_5
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1260
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
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/analytics/a/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/analytics/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/analytics/a/g;

    invoke-direct {v0}, Lcom/google/android/gms/common/analytics/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/common/analytics/a/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/analytics/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/common/analytics/a/f;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/common/analytics/a/f;

    invoke-direct {v3}, Lcom/google/android/gms/common/analytics/a/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    array-length v0, v0

    goto :goto_1

    :cond_6
    new-instance v3, Lcom/google/android/gms/common/analytics/a/f;

    invoke-direct {v3}, Lcom/google/android/gms/common/analytics/a/f;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    if-eqz v0, :cond_0

    .line 1310
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->a:Lcom/google/android/gms/common/analytics/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    if-eqz v0, :cond_1

    .line 1313
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->b:Lcom/google/android/gms/common/analytics/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    if-eqz v0, :cond_2

    .line 1316
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1318
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1319
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1320
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/d;->d:[Lcom/google/android/gms/common/analytics/a/f;

    aget-object v1, v1, v0

    .line 1321
    if-eqz v1, :cond_3

    .line 1322
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1319
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1327
    return-void
.end method
