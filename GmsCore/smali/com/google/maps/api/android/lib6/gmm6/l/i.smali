.class public final Lcom/google/maps/api/android/lib6/gmm6/l/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cp;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/maps/api/android/lib6/a/a/a;

.field public final d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:F

.field public i:F

.field public final j:[Lcom/google/maps/api/android/lib6/gmm6/l/a;

.field public final k:Lcom/google/maps/api/android/lib6/gmm6/l/db;

.field public final l:Lcom/google/maps/api/android/lib6/gmm6/l/db;

.field public final m:[Lcom/google/maps/api/android/lib6/gmm6/l/ag;

.field private final n:Ljava/lang/String;

.field private final o:I

.field private final p:[I

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/a/a/a;[Lcom/google/maps/api/android/lib6/gmm6/l/a;Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/db;[Lcom/google/maps/api/android/lib6/gmm6/l/ag;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->i:F

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->c:Lcom/google/maps/api/android/lib6/a/a/a;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->j:[Lcom/google/maps/api/android/lib6/gmm6/l/a;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->k:Lcom/google/maps/api/android/lib6/gmm6/l/db;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->l:Lcom/google/maps/api/android/lib6/gmm6/l/db;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->m:[Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    iput-object p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->n:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p9, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->q:Ljava/lang/String;

    iput p10, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->o:I

    iput p11, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->e:I

    const/4 v1, -0x1

    if-ne p12, v1, :cond_0

    const/16 p12, 0x1e

    :cond_0
    iput p12, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->f:I

    iput p13, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->g:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->r:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->b:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->p:[I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->c:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->o:I

    return v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->p:[I

    return-object v0
.end method

.method public final f()I
    .locals 8

    const/4 v2, 0x0

    const/16 v0, 0x78

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x78

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->j:[Lcom/google/maps/api/android/lib6/gmm6/l/a;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->j:[Lcom/google/maps/api/android/lib6/gmm6/l/a;

    array-length v6, v5

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v4, v5, v3

    iget-object v7, v4, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)I

    move-result v7

    add-int/lit8 v7, v7, 0x28

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/a;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)I

    move-result v4

    add-int/2addr v4, v7

    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->m:[Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->m:[Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    array-length v5, v3

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/ag;->c()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_4
    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->k:Lcom/google/maps/api/android/lib6/gmm6/l/db;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/db;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->l:Lcom/google/maps/api/android/lib6/gmm6/l/db;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/db;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->c:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/a/a/a;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/i;->r:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method
