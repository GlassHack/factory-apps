.class public final Lcom/google/maps/api/android/lib6/gmm6/o/ch;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field g:Z

.field private h:[I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->h:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->g:Z

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->a:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->b:I

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->c:I

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->d:I

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->e:I

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->f:I

    return-void
.end method

.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/ch;)V
    .locals 7

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->a:I

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->b:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->c:I

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->d:I

    iget v5, p1, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->e:I

    iget v6, p1, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->f:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/o/ch;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method final a()[I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->h:[I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/16 v1, 0x3024

    aput v1, v0, v2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->a:I

    aput v1, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v5

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->b:I

    aput v1, v0, v6

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->c:I

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->d:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->e:I

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->f:I

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->h:[I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->h:[I

    return-object v0

    :cond_1
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v1, 0x3024

    aput v1, v0, v2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->a:I

    aput v1, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v5

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->b:I

    aput v1, v0, v6

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->c:I

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->d:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->e:I

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->f:I

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ch;->h:[I

    goto :goto_0
.end method
