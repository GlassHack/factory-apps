.class public final Lcom/google/android/location/f/l;
.super Lcom/google/android/location/f/g;
.source "SourceFile"


# instance fields
.field private final n:I

.field private final o:I


# direct methods
.method public constructor <init>(JIIIIIIILjava/util/Collection;IIII)V
    .locals 17

    .prologue
    .line 27
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p9

    invoke-direct/range {v3 .. v15}, Lcom/google/android/location/f/g;-><init>(JIIIILjava/util/Collection;IIIII)V

    .line 29
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/f/l;->n:I

    .line 32
    const v2, 0x7fffffff

    move/from16 v0, p8

    if-eq v0, v2, :cond_0

    if-nez p8, :cond_1

    .line 33
    :cond_0
    const/16 p8, -0x1

    .line 36
    :cond_1
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/f/l;->o:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a(JI)Lcom/google/android/location/f/g;
    .locals 19

    .prologue
    .line 77
    new-instance v3, Lcom/google/android/location/f/l;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/f/l;->k:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/location/f/l;->b:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/location/f/l;->c:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/location/f/l;->d:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/location/f/l;->n:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/location/f/l;->o:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/location/f/l;->j:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/location/f/l;->e:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/location/f/l;->f:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/f/l;->g:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/location/f/l;->h:I

    move/from16 v17, v0

    move-wide/from16 v4, p1

    move/from16 v12, p3

    invoke-direct/range {v3 .. v17}, Lcom/google/android/location/f/l;-><init>(JIIIIIIILjava/util/Collection;IIII)V

    return-object v3
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/f/l;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/location/f/l;->j()I

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/l;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/l;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/l;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/f/l;->m:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/f/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/location/f/l;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 99
    iget v0, p0, Lcom/google/android/location/f/l;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 100
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/location/f/l;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 102
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/f/g;)Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    instance-of v0, p1, Lcom/google/android/location/f/l;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lcom/google/android/location/f/l;

    .line 86
    iget v0, p1, Lcom/google/android/location/f/l;->o:I

    if-eq v0, v4, :cond_1

    move v0, v1

    .line 87
    :goto_0
    iget v3, p0, Lcom/google/android/location/f/l;->o:I

    if-eq v3, v4, :cond_2

    move v3, v1

    .line 89
    :goto_1
    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/location/f/l;->n:I

    iget v3, p1, Lcom/google/android/location/f/l;->n:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/location/f/l;->o:I

    iget v3, p1, Lcom/google/android/location/f/l;->o:I

    if-ne v0, v3, :cond_0

    move v2, v1

    .line 91
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 86
    goto :goto_0

    :cond_2
    move v3, v2

    .line 87
    goto :goto_1
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/location/f/l;->n:I

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
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " lac: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/f/l;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " psc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/l;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 120
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/location/f/l;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/google/android/location/f/l;

    .line 122
    iget v2, p0, Lcom/google/android/location/f/l;->n:I

    iget v3, v0, Lcom/google/android/location/f/l;->n:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/location/f/l;->o:I

    iget v0, v0, Lcom/google/android/location/f/l;->o:I

    if-ne v2, v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/location/f/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0

    :cond_1
    move v0, v1

    .line 124
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/android/location/f/g;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/location/f/l;->n:I

    mul-int/lit16 v1, v1, 0xe75

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/location/f/l;->o:I

    mul-int/lit16 v1, v1, 0xa7f

    xor-int/2addr v0, v1

    return v0
.end method
