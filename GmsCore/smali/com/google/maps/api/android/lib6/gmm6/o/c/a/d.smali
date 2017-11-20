.class public Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;


# instance fields
.field protected a:[S

.field public b:I

.field c:Ljava/nio/ShortBuffer;

.field protected d:I

.field protected e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d:I

    iput-boolean p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->h:Z

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f()V

    return-void
.end method

.method private a([SII)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    return-void

    :cond_1
    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_0

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    rsub-int v2, v2, 0x800

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->h:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    :cond_1
    :goto_0
    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    return-void

    :cond_2
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f:I

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/h;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->a()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final D_()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    return v0
.end method

.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/h;->c:Ljava/lang/Object;

    check-cast v0, [S

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/h;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    :cond_0
    return-void
.end method

.method public final a(III)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    :cond_0
    return-void
.end method

.method public final a(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p4

    aput-short v2, v0, v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;II)V
    .locals 5

    const/4 v2, 0x1

    const/16 v4, 0x800

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    if-ge v0, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/2addr v3, p3

    if-gt v3, v4, :cond_4

    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    invoke-direct {p0, v0, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a([SII)V

    goto :goto_2

    :cond_6
    invoke-direct {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e()V

    shr-int/lit8 v0, p2, 0xb

    and-int/lit16 v2, p2, 0x7ff

    move v3, v2

    move v2, v0

    :goto_3
    if-lez p3, :cond_2

    rsub-int v0, v3, 0x800

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    invoke-direct {p0, v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a([SII)V

    add-int/lit8 v0, v2, 0x1

    sub-int/2addr p3, v4

    move v2, v0

    move v3, v1

    goto :goto_3
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f()V

    return-void
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p2, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final a(SS)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    aput-short p1, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    aput-short p2, v0, v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    :cond_0
    return-void
.end method

.method public final a(SSS)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    aput-short p1, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    aput-short p2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    aput-short p3, v0, v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-nez v0, :cond_3

    const/16 v0, 0x800

    if-lt v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->h:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->h:Z

    new-array v0, v1, [S

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    :goto_0
    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->f:I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/h;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/h;->c:Ljava/lang/Object;

    check-cast v0, [S

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/h;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->c(I)V

    goto :goto_0
.end method

.method public b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d:I

    return v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->c()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    :cond_0
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    return-void
.end method

.method public d()I
    .locals 2

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x20

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

.method protected d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->m()Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->a(Ljava/nio/ShortBuffer;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->c()V

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    goto :goto_0
.end method

.method public final e_(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a:[S

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->g:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a()V

    :cond_0
    return-void
.end method
