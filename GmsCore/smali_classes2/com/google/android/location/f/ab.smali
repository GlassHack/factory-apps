.class public final Lcom/google/android/location/f/ab;
.super Lcom/google/android/location/f/g;
.source "SourceFile"


# instance fields
.field private final n:I

.field private final o:I

.field private final p:I


# direct methods
.method public constructor <init>(JIIIIIIILjava/util/Collection;)V
    .locals 17

    .prologue
    .line 45
    const/4 v6, 0x4

    if-nez p10, :cond_0

    sget-object v10, Lcom/google/android/location/f/ab;->a:Ljava/util/Collection;

    :goto_0
    const/4 v11, -0x1

    const/4 v12, -0x1

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v7, p5

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v15, p9

    invoke-direct/range {v3 .. v15}, Lcom/google/android/location/f/g;-><init>(JIIIILjava/util/Collection;IIIII)V

    .line 48
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/f/ab;->n:I

    .line 49
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/f/ab;->o:I

    .line 50
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/location/f/ab;->p:I

    .line 51
    return-void

    :cond_0
    move-object/from16 v10, p10

    .line 45
    goto :goto_0
.end method


# virtual methods
.method public final a(JI)Lcom/google/android/location/f/g;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/location/f/ab;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "6:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/f/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/ab;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/ab;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/f/ab;->m:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/f/ab;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/location/f/ab;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/f/ab;->p:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 69
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/location/f/ab;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 72
    :cond_0
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/location/f/ab;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 73
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/location/f/ab;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 74
    return-void
.end method

.method public final a(Lcom/google/android/location/f/g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    instance-of v1, p1, Lcom/google/android/location/f/ab;

    if-eqz v1, :cond_0

    .line 102
    check-cast p1, Lcom/google/android/location/f/ab;

    .line 103
    iget v1, p0, Lcom/google/android/location/f/ab;->n:I

    iget v2, p1, Lcom/google/android/location/f/ab;->n:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/ab;->o:I

    iget v2, p1, Lcom/google/android/location/f/ab;->o:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 105
    :cond_0
    return v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " pci: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/f/ab;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tac "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/ab;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timingAdvance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/ab;->p:I

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

    .line 131
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/location/f/ab;

    if-eqz v1, :cond_0

    .line 132
    check-cast p1, Lcom/google/android/location/f/ab;

    .line 133
    invoke-super {p0, p1}, Lcom/google/android/location/f/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/location/f/ab;->n:I

    iget v2, p1, Lcom/google/android/location/f/ab;->n:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/ab;->o:I

    iget v2, p1, Lcom/google/android/location/f/ab;->o:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 135
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/android/location/f/g;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/location/f/ab;->n:I

    mul-int/lit16 v1, v1, 0x1b65

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/location/f/ab;->o:I

    mul-int/lit16 v1, v1, 0xb7b

    xor-int/2addr v0, v1

    return v0
.end method
