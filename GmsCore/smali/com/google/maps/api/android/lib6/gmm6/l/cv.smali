.class public Lcom/google/maps/api/android/lib6/gmm6/l/cv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/ei;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/a/a/d;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public final e:J

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/d;Ljava/util/List;IZLcom/google/maps/api/android/lib6/gmm6/l/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->c:I

    iput-boolean p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->f:Z

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-wide p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->e:J

    return-void
.end method

.method public static a(Lcom/google/g/a/b/b/f;J)Lcom/google/maps/api/android/lib6/gmm6/l/cv;
    .locals 15

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/c/c/fx;->b(I)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v9, :cond_c

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v7}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v11

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_1

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/c/c/fx;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    const/4 v4, 0x2

    invoke-virtual {v11, v4, v0}, Lcom/google/g/a/b/b/f;->d(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/a/a/d;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_b

    move-object v0, v4

    :goto_4
    move-object v3, v0

    :cond_5
    if-nez v4, :cond_6

    move-object v4, v3

    :cond_6
    const/4 v5, 0x0

    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v5

    :cond_7
    const/high16 v6, -0x80000000

    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v6

    :cond_8
    const/4 v0, 0x7

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    invoke-virtual {v11, v0}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v11

    invoke-static {v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v13

    if-le v12, v13, :cond_9

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    add-int/2addr v12, v13

    invoke-virtual {v0, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(I)V

    :cond_9
    new-instance v12, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-direct {v12, v11, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v12}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    :cond_a
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/l/cw;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_b
    const-string v0, ""

    goto :goto_4

    :cond_c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v3

    if-ltz v3, :cond_d

    if-lt v3, v9, :cond_e

    :cond_d
    const/4 v3, 0x0

    :cond_e
    if-nez v4, :cond_f

    if-nez v9, :cond_10

    :cond_f
    const/4 v3, -0x1

    :cond_10
    const/4 v5, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    :cond_11
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-object v1, v8

    move-object v2, v10

    move-wide/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;Ljava/util/List;IZLcom/google/maps/api/android/lib6/gmm6/l/h;J)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {p1, v2}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/g;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;
    .locals 1

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/a/a/g;)I
    .locals 2

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->c:I

    return v0
.end method

.method public final synthetic c(Lcom/google/maps/api/android/lib6/a/a/g;)Lcom/google/maps/api/android/lib6/c/ek;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/maps/api/android/lib6/a/a/g;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Building: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
