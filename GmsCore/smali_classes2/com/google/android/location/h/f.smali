.class public final Lcom/google/android/location/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/h/ae;

.field public b:Z

.field public c:J

.field public d:J

.field public final e:Lcom/google/android/location/f/c;

.field private final f:Lcom/google/android/location/h/a;

.field private final g:Lcom/google/android/location/os/at;


# direct methods
.method public constructor <init>(Lcom/google/android/location/b/am;Lcom/google/android/location/b/am;Lcom/google/android/location/b/u;Lcom/google/android/location/h/w;Lcom/google/android/location/os/at;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/location/f/c;

    invoke-direct {v0}, Lcom/google/android/location/f/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/h/f;->e:Lcom/google/android/location/f/c;

    .line 50
    invoke-static {p4, p2, p3, p5}, Lcom/google/android/location/h/ae;->a(Lcom/google/android/location/h/w;Lcom/google/android/location/b/am;Lcom/google/android/location/b/u;Lcom/google/android/location/os/at;)Lcom/google/android/location/h/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/h/f;->a:Lcom/google/android/location/h/ae;

    .line 51
    new-instance v0, Lcom/google/android/location/h/a;

    invoke-interface {p5}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/h/a;-><init>(Lcom/google/android/location/b/am;Lcom/google/android/location/k/b;)V

    iput-object v0, p0, Lcom/google/android/location/h/f;->f:Lcom/google/android/location/h/a;

    .line 52
    iput-object p5, p0, Lcom/google/android/location/h/f;->g:Lcom/google/android/location/os/at;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/h/f;->b:Z

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/ao;)Lcom/google/android/location/f/af;
    .locals 18

    .prologue
    .line 141
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/location/f/ao;->a:J

    .line 142
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/location/f/ao;->b:Lcom/google/android/location/f/h;

    .line 143
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/location/f/ao;->c:Lcom/google/android/location/f/bh;

    .line 144
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/location/f/ao;->d:Lcom/google/android/location/f/ak;

    .line 145
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/location/f/ao;->e:Z

    move/from16 v17, v0

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/h/f;->f:Lcom/google/android/location/h/a;

    iget-object v2, v5, Lcom/google/android/location/h/a;->a:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v12

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-eqz v4, :cond_26

    iget-object v8, v4, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    iget-object v2, v4, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    move-object v3, v2

    :goto_0
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/google/android/location/f/g;->i()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    new-instance v3, Lcom/google/android/location/f/e;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/location/f/e;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/g;)V

    move-object v9, v3

    .line 148
    :goto_1
    iget-object v2, v9, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    sget-object v3, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    move/from16 v16, v2

    .line 159
    :goto_2
    if-nez v10, :cond_25

    .line 160
    iget-object v2, v9, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    sget-object v3, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v2, v3, :cond_25

    .line 161
    iget-object v3, v9, Lcom/google/android/location/f/e;->c:Lcom/google/android/location/f/ak;

    .line 162
    new-instance v2, Lcom/google/android/location/f/ak;

    iget v4, v3, Lcom/google/android/location/f/ak;->d:I

    iget v5, v3, Lcom/google/android/location/f/ak;->e:I

    iget v3, v3, Lcom/google/android/location/f/ak;->f:I

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/location/f/ak;-><init>(III)V

    .line 163
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    const-string v3, "LocatorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Generating cell-based aperture: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/h/f;->a:Lcom/google/android/location/h/ae;

    invoke-virtual {v3, v11, v2}, Lcom/google/android/location/h/ae;->a(Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;)Lcom/google/android/location/f/be;

    move-result-object v12

    .line 170
    if-eqz v12, :cond_13

    iget-object v2, v12, Lcom/google/android/location/f/be;->d:Lcom/google/android/location/f/aa;

    sget-object v3, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v2, v3, :cond_13

    const/4 v2, 0x1

    move v5, v2

    .line 171
    :goto_4
    if-eqz v5, :cond_14

    iget-object v2, v12, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    if-eqz v2, :cond_14

    iget-object v2, v12, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    instance-of v2, v2, Lcom/google/android/location/f/m;

    if-eqz v2, :cond_14

    iget-object v2, v12, Lcom/google/android/location/f/be;->c:Lcom/google/android/location/f/ak;

    check-cast v2, Lcom/google/android/location/f/m;

    iget-object v2, v2, Lcom/google/android/location/f/m;->b:Ljava/lang/String;

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    move v10, v2

    .line 176
    :goto_5
    iget-object v2, v12, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    sget-object v3, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    :goto_6
    iget-object v3, v9, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    sget-object v4, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    :goto_7
    if-nez v2, :cond_17

    if-nez v3, :cond_17

    const/4 v2, 0x0

    move-object v11, v2

    .line 182
    :goto_8
    sget-object v2, Lcom/google/android/location/d/a;->d:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/location/d/a;->a(Lcom/google/android/gms/common/a/b;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 183
    const/4 v4, 0x0

    .line 184
    const/4 v3, 0x0

    .line 185
    const/4 v2, 0x0

    .line 187
    if-eqz v11, :cond_24

    .line 188
    if-ne v11, v9, :cond_1e

    .line 189
    const/4 v4, 0x1

    move v13, v2

    move v14, v3

    move v15, v4

    .line 198
    :goto_9
    if-eqz v5, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/f;->g:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "locType"

    const-string v5, "has_wifi"

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 205
    :cond_2
    if-eqz v16, :cond_3

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/f;->g:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "locType"

    const-string v5, "has_cell"

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 209
    :cond_3
    if-eqz v10, :cond_4

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/f;->g:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "locType"

    const-string v5, "has_indoor"

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 213
    :cond_4
    if-eqz v15, :cond_20

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/f;->g:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "locType"

    const-string v5, "uses_cell"

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 225
    :cond_5
    :goto_a
    if-eqz v17, :cond_23

    if-ne v11, v9, :cond_23

    const/4 v2, 0x1

    .line 226
    :goto_b
    new-instance v3, Lcom/google/android/location/f/af;

    invoke-direct {v3, v11, v12, v9, v2}, Lcom/google/android/location/f/af;-><init>(Lcom/google/android/location/f/y;Lcom/google/android/location/f/be;Lcom/google/android/location/f/e;Z)V

    return-object v3

    .line 147
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v5, v8, v2, v12, v13}, Lcom/google/android/location/h/a;->a(Lcom/google/android/location/f/g;Ljava/util/Map;J)Lcom/google/android/location/b/a;

    move-result-object v2

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_7

    const-string v2, "CellLocator"

    const-string v3, "Primary cell miss in cache. Need server request."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v3, Lcom/google/android/location/f/e;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/location/f/e;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/g;)V

    move-object v9, v3

    goto/16 :goto_1

    :cond_8
    iget-object v2, v2, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/location/f/ak;

    invoke-virtual {v2}, Lcom/google/android/location/f/ak;->b()Z

    move-result v2

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_9

    const-string v2, "CellLocator"

    const-string v3, "Primary cell is in cache with no location."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v3, Lcom/google/android/location/f/e;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/location/f/e;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/g;)V

    move-object v9, v3

    goto/16 :goto_1

    :cond_a
    if-nez v3, :cond_d

    const/4 v2, 0x0

    :goto_c
    new-instance v3, Lcom/google/android/location/h/e;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Lcom/google/android/location/h/e;-><init>(I)V

    new-instance v9, Lcom/google/android/location/h/b;

    invoke-direct {v9, v5, v12, v13, v3}, Lcom/google/android/location/h/b;-><init>(Lcom/google/android/location/h/a;JLcom/google/android/location/h/e;)V

    const-wide/16 v12, 0x7530

    sub-long v12, v6, v12

    iget-object v2, v4, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    if-eqz v2, :cond_b

    iget-object v2, v4, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    invoke-virtual {v9, v2}, Lcom/google/android/location/f/i;->a(Lcom/google/android/location/f/g;)V

    :cond_b
    iget-object v2, v4, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/g;

    invoke-virtual {v2}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v14

    cmp-long v5, v14, v12

    if-lez v5, :cond_c

    invoke-virtual {v9, v2}, Lcom/google/android/location/f/i;->a(Lcom/google/android/location/f/g;)V

    goto :goto_d

    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_c

    :cond_e
    new-instance v4, Lcom/google/android/location/f/ak;

    invoke-virtual {v3}, Lcom/google/android/location/h/e;->a()D

    move-result-wide v12

    const-wide v14, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v12, v14

    double-to-int v2, v12

    invoke-virtual {v3}, Lcom/google/android/location/h/e;->b()D

    move-result-wide v12

    const-wide v14, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v12, v14

    double-to-int v5, v12

    invoke-virtual {v3}, Lcom/google/android/location/h/e;->c()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/location/h/d;->a(I)I

    move-result v9

    iget v3, v3, Lcom/google/android/location/h/e;->d:I

    invoke-direct {v4, v2, v5, v9, v3}, Lcom/google/android/location/f/ak;-><init>(IIII)V

    invoke-static {v4}, Lcom/google/android/location/h/d;->c(Lcom/google/android/location/f/ak;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_f

    const-string v2, "CellLocator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Found cell location: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    new-instance v3, Lcom/google/android/location/f/e;

    sget-object v5, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/location/f/e;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/g;)V

    move-object v9, v3

    goto/16 :goto_1

    :cond_10
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_11

    const-string v2, "CellLocator"

    const-string v3, "Cell location had non-sane values"

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance v3, Lcom/google/android/location/f/e;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/location/f/e;-><init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/g;)V

    move-object v9, v3

    goto/16 :goto_1

    .line 148
    :cond_12
    const/4 v2, 0x0

    move/from16 v16, v2

    goto/16 :goto_2

    .line 170
    :cond_13
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_4

    .line 171
    :cond_14
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_5

    .line 176
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_17
    if-nez v2, :cond_18

    move-object v11, v9

    goto/16 :goto_8

    :cond_18
    if-eqz v3, :cond_1d

    iget-object v3, v12, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    iget-object v4, v9, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    invoke-static {v3, v4}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)I

    move-result v2

    iget v6, v3, Lcom/google/android/location/f/ak;->f:I

    iget v7, v4, Lcom/google/android/location/f/ak;->f:I

    add-int/2addr v6, v7

    const v7, 0x3567e0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    if-gt v2, v6, :cond_19

    const/4 v2, 0x1

    :goto_e
    if-eqz v2, :cond_1b

    iget v2, v3, Lcom/google/android/location/f/ak;->f:I

    iget v3, v4, Lcom/google/android/location/f/ak;->f:I

    if-le v2, v3, :cond_1a

    const/4 v2, 0x1

    :goto_f
    if-eqz v2, :cond_1d

    move-object v11, v9

    goto/16 :goto_8

    :cond_19
    const/4 v2, 0x0

    goto :goto_e

    :cond_1a
    const/4 v2, 0x0

    goto :goto_f

    :cond_1b
    iget v2, v3, Lcom/google/android/location/f/ak;->g:I

    iget v3, v4, Lcom/google/android/location/f/ak;->g:I

    if-ge v2, v3, :cond_1c

    const/4 v2, 0x1

    goto :goto_f

    :cond_1c
    const/4 v2, 0x0

    goto :goto_f

    :cond_1d
    move-object v11, v12

    goto/16 :goto_8

    .line 194
    :cond_1e
    if-nez v10, :cond_1f

    const/4 v2, 0x1

    :goto_10
    move v13, v10

    move v14, v2

    move v15, v4

    goto/16 :goto_9

    :cond_1f
    const/4 v2, 0x0

    goto :goto_10

    .line 215
    :cond_20
    if-eqz v14, :cond_21

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/f;->g:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "locType"

    const-string v5, "uses_wifi"

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_a

    .line 217
    :cond_21
    if-eqz v13, :cond_22

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/f;->g:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "locType"

    const-string v5, "uses_indoor"

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_a

    .line 221
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/f;->g:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "locType"

    const-string v5, "no_location"

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_a

    .line 225
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_24
    move v13, v2

    move v14, v3

    move v15, v4

    goto/16 :goto_9

    :cond_25
    move-object v2, v10

    goto/16 :goto_3

    :cond_26
    move-object v3, v2

    goto/16 :goto_0
.end method

.method public final a(JLcom/google/android/location/f/h;[Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;Z)Ljava/util/List;
    .locals 9

    .prologue
    .line 96
    new-instance v8, Ljava/util/ArrayList;

    if-nez p4, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    iget-object v1, p0, Lcom/google/android/location/h/f;->e:Lcom/google/android/location/f/c;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/f/c;->a(JLcom/google/android/location/f/h;[Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;Z)V

    .line 100
    iget-wide v0, p0, Lcom/google/android/location/h/f;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b

    .line 101
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "LocatorManager"

    const-string v1, "Batch deadline expired."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/h/f;->e:Lcom/google/android/location/f/c;

    iget-object v0, v0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ao;

    .line 104
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "LocatorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BATCH: Computing location for timestamp "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/google/android/location/f/ao;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/location/h/f;->a(Lcom/google/android/location/f/ao;)Lcom/google/android/location/f/af;

    move-result-object v3

    .line 108
    iget-object v1, v3, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    if-nez v1, :cond_6

    .line 109
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "LocatorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Location timestamp : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/google/android/location/f/ao;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", bestResult is NULL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_2
    :goto_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v1, "LocatorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "wifi status: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-nez v0, :cond_9

    const-string v0, "null"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_3
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v1, "LocatorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "cell status: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-nez v0, :cond_a

    const-string v0, "null"

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_4
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 96
    :cond_5
    array-length v0, p4

    goto/16 :goto_0

    .line 111
    :cond_6
    const-string v1, "unknown"

    .line 113
    iget-object v4, v3, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v5, v3, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-ne v4, v5, :cond_8

    .line 114
    const-string v1, "wifi"

    .line 119
    :cond_7
    :goto_5
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_2

    const-string v4, "LocatorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Location timestamp : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/google/android/location/f/ao;->a:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", bestResult is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v1, v1, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 115
    :cond_8
    iget-object v4, v3, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v5, v3, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-ne v4, v5, :cond_7

    .line 116
    const-string v1, "cell"

    goto :goto_5

    .line 122
    :cond_9
    iget-object v0, v3, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v0, v0, Lcom/google/android/location/f/be;->d:Lcom/google/android/location/f/aa;

    goto :goto_3

    .line 124
    :cond_a
    iget-object v0, v3, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v0, v0, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    goto :goto_4

    .line 131
    :cond_b
    return-object v8
.end method
