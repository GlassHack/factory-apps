.class public final Lcom/google/maps/api/android/lib6/gmm6/n/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public d:Z

.field public e:Z


# direct methods
.method constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 7

    const/16 v6, 0x1d

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/j;->a(Lcom/google/g/a/b/b/f;I)D

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/j;->a(Lcom/google/g/a/b/b/f;I)D

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/j;->a(Lcom/google/g/a/b/b/f;I)D

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/j;->a:I

    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/j;->b:Z

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/j;->c:I

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/n/k;

    invoke-virtual {p1, v6}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v6}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/k;-><init>(Lcom/google/g/a/b/b/f;)V

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/j;->d:Z

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/j;->e:Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/m;->j:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    goto :goto_0
.end method

.method private static final a(Lcom/google/g/a/b/b/f;I)D
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method
