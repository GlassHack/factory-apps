.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:Ljava/nio/ByteBuffer;

.field private j:Ljava/util/List;

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private n:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->k:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->l:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->m:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    invoke-static {p1}, Lcom/google/c/c/fx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    invoke-static {p1}, Lcom/google/c/c/fx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    :cond_1
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->m:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/c/c/fx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final D_()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    return v0
.end method

.method public final E_()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    return v0
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v2, v0, 0x3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-eq v2, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Buffer mismatch verts = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tex coords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-eq v2, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->m:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v2, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_8

    :try_start_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->l:Z

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :cond_5
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->k:Z

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :cond_6
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->m:Z

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_9
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_a
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method

.method public final a(FF)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->k:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Texture coordinate 0 not enabled in this VBO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->n:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->i:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final a(II)V
    .locals 3

    const/high16 v2, 0x47800000    # 65536.0f

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    int-to-float v1, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    int-to-float v1, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(III)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    return-void
.end method

.method public final a(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p4

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting styleIndex"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    return-void
.end method

.method public final a([I)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a([III)V

    return-void
.end method

.method public final a([III)V
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->g:I

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->b:Ljava/util/List;

    aget v2, p1, v0

    int-to-float v2, v2

    const/high16 v3, 0x47800000    # 65536.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a()V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->e:I

    return-void
.end method

.method public final d_(I)V
    .locals 0

    return-void
.end method

.method public final e_(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->d:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/k;->f:I

    return-void
.end method
