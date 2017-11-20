.class public final Lcom/google/android/location/f/d;
.super Lcom/google/android/location/f/g;
.source "SourceFile"


# instance fields
.field private final n:I


# direct methods
.method public constructor <init>(JIIIIIILjava/util/Collection;IIII)V
    .locals 17

    .prologue
    .line 18
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p8

    invoke-direct/range {v3 .. v15}, Lcom/google/android/location/f/g;-><init>(JIIIILjava/util/Collection;IIIII)V

    .line 20
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/f/d;->n:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a(JI)Lcom/google/android/location/f/g;
    .locals 15

    .prologue
    .line 53
    new-instance v1, Lcom/google/android/location/f/d;

    iget v4, p0, Lcom/google/android/location/f/d;->k:I

    iget v5, p0, Lcom/google/android/location/f/d;->b:I

    iget v6, p0, Lcom/google/android/location/f/d;->c:I

    iget v7, p0, Lcom/google/android/location/f/d;->d:I

    iget v8, p0, Lcom/google/android/location/f/d;->n:I

    iget-object v10, p0, Lcom/google/android/location/f/d;->j:Ljava/util/Collection;

    iget v11, p0, Lcom/google/android/location/f/d;->e:I

    iget v12, p0, Lcom/google/android/location/f/d;->f:I

    iget v13, p0, Lcom/google/android/location/f/d;->g:I

    iget v14, p0, Lcom/google/android/location/f/d;->h:I

    move-wide/from16 v2, p1

    move/from16 v9, p3

    invoke-direct/range {v1 .. v14}, Lcom/google/android/location/f/d;-><init>(JIIIIIILjava/util/Collection;IIII)V

    return-object v1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/f/d;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/location/f/d;->j()I

    move-result v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/d;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/f/d;->m:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/f/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/location/f/d;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 72
    return-void
.end method

.method public final a(Lcom/google/android/location/f/g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    instance-of v1, p1, Lcom/google/android/location/f/d;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lcom/google/android/location/f/d;

    .line 63
    iget v1, p0, Lcom/google/android/location/f/d;->n:I

    iget v2, p1, Lcom/google/android/location/f/d;->n:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 65
    :cond_0
    return v0
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/location/f/d;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " lac: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/f/d;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/location/f/d;

    if-eqz v1, :cond_0

    .line 94
    check-cast p1, Lcom/google/android/location/f/d;

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/location/f/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/location/f/d;->n:I

    iget v2, p1, Lcom/google/android/location/f/d;->n:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 97
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/android/location/f/g;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/location/f/d;->n:I

    mul-int/lit16 v1, v1, 0xd79

    xor-int/2addr v0, v1

    return v0
.end method
