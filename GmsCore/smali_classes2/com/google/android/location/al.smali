.class public final Lcom/google/android/location/al;
.super Lcom/google/android/location/a;
.source "SourceFile"


# instance fields
.field final i:[Lcom/google/android/location/a;

.field public j:Lcom/google/android/location/a;

.field final k:Lcom/google/android/location/b/aa;

.field final l:Lcom/google/android/location/f/f;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/b/aa;Lcom/google/android/location/v;Lcom/google/android/location/bd;Lcom/google/android/location/av;Lcom/google/android/location/l/a;Lcom/google/android/location/f/f;Lcom/google/android/location/activity/k;)V
    .locals 13

    .prologue
    .line 50
    const-string v2, "NetworkCollector"

    new-instance v7, Lcom/google/android/location/d;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lcom/google/android/location/d;-><init>(Lcom/google/android/location/b/aa;)V

    sget-object v8, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/location/a;-><init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V

    .line 52
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/location/al;->k:Lcom/google/android/location/b/aa;

    .line 53
    new-instance v1, Lcom/google/android/location/s;

    iget-object v6, p0, Lcom/google/android/location/al;->g:Lcom/google/android/location/d;

    invoke-static {p1}, Lcom/google/android/location/s;->a(Lcom/google/android/location/os/at;)Lcom/google/g/a/b/b/a;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/location/s;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/g/a/b/b/a;Lcom/google/android/location/av;Lcom/google/android/location/v;)V

    .line 56
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/location/al;->l:Lcom/google/android/location/f/f;

    .line 57
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v2, Lcom/google/android/location/h;

    iget-object v7, p0, Lcom/google/android/location/al;->g:Lcom/google/android/location/d;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/location/h;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v2, Lcom/google/android/location/ad;

    iget-object v7, p0, Lcom/google/android/location/al;->g:Lcom/google/android/location/d;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/ad;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/v;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Lcom/google/android/location/p;

    iget-object v7, p0, Lcom/google/android/location/al;->g:Lcom/google/android/location/d;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/p;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/activity/k;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Lcom/google/android/location/ay;

    iget-object v7, p0, Lcom/google/android/location/al;->g:Lcom/google/android/location/d;

    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    move-object/from16 v8, p4

    move-object v9, v1

    move-object/from16 v10, p9

    invoke-direct/range {v2 .. v11}, Lcom/google/android/location/ay;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/v;Lcom/google/android/location/s;Lcom/google/android/location/activity/k;Ljava/util/Random;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/google/android/location/as;

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/location/activity/k;->b()Lcom/google/android/location/activity/m;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/location/al;->g:Lcom/google/android/location/d;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p7

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/as;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/activity/m;Lcom/google/android/location/bd;Lcom/google/android/location/d;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/location/a;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/location/a;

    iput-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    .line 80
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    .line 82
    return-void
.end method

.method private a(Lcom/google/android/location/a;)V
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    if-eq v0, p1, :cond_0

    .line 122
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/al;->a:Ljava/lang/String;

    const-string v1, "Current collector changed from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    invoke-virtual {v0}, Lcom/google/android/location/a;->a()V

    .line 100
    iget-object v0, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    invoke-virtual {v0}, Lcom/google/android/location/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v2, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 103
    iget-object v5, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    if-eq v4, v5, :cond_2

    .line 104
    invoke-virtual {v4}, Lcom/google/android/location/a;->a()V

    .line 105
    invoke-virtual {v4}, Lcom/google/android/location/a;->e()Z

    move-result v5

    if-nez v5, :cond_2

    .line 106
    invoke-direct {p0, v4}, Lcom/google/android/location/al;->a(Lcom/google/android/location/a;)V

    .line 107
    iput-object v4, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    iget-object v2, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    aget-object v2, v2, v1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    invoke-virtual {v0}, Lcom/google/android/location/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/location/al;->a(Lcom/google/android/location/a;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    .line 118
    :cond_1
    return-void

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(IIZ)V
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 210
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/location/a;->a(IIZ)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 213
    return-void
.end method

.method final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 242
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 245
    return-void
.end method

.method public final a(Lcom/google/android/location/f/ag;)V
    .locals 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 226
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/ag;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 229
    return-void
.end method

.method final a(Lcom/google/android/location/f/bg;)V
    .locals 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 258
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/bg;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 261
    return-void
.end method

.method public final a(Lcom/google/android/location/f/bh;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/android/location/al;->k:Lcom/google/android/location/b/aa;

    if-eqz v0, :cond_0

    .line 191
    iget-object v2, p0, Lcom/google/android/location/al;->k:Lcom/google/android/location/b/aa;

    if-eqz p1, :cond_0

    iget-object v0, v2, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/location/f/bh;->a()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/location/f/bb;->b:J

    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/google/android/location/b/aa;->a(JJ)Lcom/google/android/location/b/ac;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 194
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/bh;)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 197
    return-void
.end method

.method public final a(Lcom/google/android/location/f/g;)V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/location/al;->l:Lcom/google/android/location/f/f;

    invoke-virtual {v0}, Lcom/google/android/location/f/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 158
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/g;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 162
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 147
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/k/k;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 150
    return-void
.end method

.method public final a(Lcom/google/android/location/os/ah;)V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 167
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/os/ah;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 170
    return-void
.end method

.method public final a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 250
    invoke-virtual {v3, p1, p2}, Lcom/google/android/location/a;->a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 253
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Lcom/google/g/a/b/b/a;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 140
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 202
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->a(Z)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 205
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 175
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->b(Z)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 178
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 218
    invoke-virtual {v3, p1}, Lcom/google/android/location/a;->c(Z)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 221
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/al;->j:Lcom/google/android/location/a;

    invoke-virtual {v0}, Lcom/google/android/location/a;->e()Z

    move-result v0

    return v0
.end method

.method final f()V
    .locals 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 183
    invoke-virtual {v3}, Lcom/google/android/location/a;->f()V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 186
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 234
    invoke-virtual {v3}, Lcom/google/android/location/a;->g()V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 237
    return-void
.end method

.method final h()V
    .locals 4

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/android/location/al;->i:[Lcom/google/android/location/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 266
    invoke-virtual {v3}, Lcom/google/android/location/a;->h()V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/al;->a()V

    .line 269
    return-void
.end method
