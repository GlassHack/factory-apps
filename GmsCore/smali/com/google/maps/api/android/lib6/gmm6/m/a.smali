.class public abstract Lcom/google/maps/api/android/lib6/gmm6/m/a;
.super Lcom/google/maps/api/android/lib6/gmm6/m/d;


# instance fields
.field private volatile e:Z

.field private final f:I

.field private final g:Ljava/util/List;

.field private final h:I

.field private final i:I

.field private final j:F


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/b/o;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/List;IIFZLjava/util/Locale;ZLjava/io/File;Lcom/google/maps/api/android/lib6/gmm6/m/b/g;)V
    .locals 12

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->b()Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;

    move-result-object v5

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move/from16 v0, p10

    invoke-virtual {p3, p2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(Ljava/lang/String;ZLcom/google/maps/api/android/lib6/gmm6/m/b/g;)Lcom/google/maps/api/android/lib6/gmm6/m/b/f;

    move-result-object v6

    :goto_0
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->d:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p3, v1, :cond_2

    const/16 v7, 0x3e8

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move/from16 v8, p8

    move/from16 v9, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/m/d;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/b/aj;Lcom/google/maps/api/android/lib6/gmm6/m/b/f;IZILjava/util/Locale;Ljava/io/File;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->e:Z

    const/16 v1, 0x100

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->f:I

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->g:Ljava/util/List;

    move/from16 v0, p5

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->i:I

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->h:I

    :goto_2
    move/from16 v0, p7

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->j:F

    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/16 v7, 0xbb8

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->h:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/a;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->f:I

    return v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/m/a;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->i:I

    return v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/m/a;)F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->j:F

    return v0
.end method

.method static synthetic c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/gmm6/m/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/gmm6/m/a;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/a;->h:I

    return v0
.end method
