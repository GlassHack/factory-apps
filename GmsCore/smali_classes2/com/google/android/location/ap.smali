.class public final Lcom/google/android/location/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/os/a;
.implements Lcom/google/android/location/p/e;


# instance fields
.field final a:Lcom/google/android/location/os/at;

.field final b:Lcom/google/android/location/b/w;

.field final c:Lcom/google/android/location/b/aa;

.field final d:Lcom/google/android/location/b/c;

.field final e:Lcom/google/android/location/l/a;

.field final f:Lcom/google/android/location/am;

.field final g:Lcom/google/android/location/a;

.field final h:Lcom/google/android/location/bd;

.field final i:Lcom/google/android/location/b/p;

.field final j:Lcom/google/android/location/b/u;

.field final k:Lcom/google/android/location/av;

.field final l:Lcom/google/android/location/v;

.field final m:Lcom/google/android/location/ba;

.field final n:Lcom/google/android/location/f/f;

.field private o:Lcom/google/android/location/f/bh;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/f/ag;Lcom/google/android/location/activity/k;Z)V
    .locals 18

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->d()Lcom/google/android/location/k/d;

    move-result-object v9

    .line 77
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v2

    .line 79
    new-instance v17, Lcom/google/android/location/l/a;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/location/l/a;-><init>(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Lcom/google/android/location/f/ag;)V

    .line 80
    invoke-interface {v2}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/location/k/e;->b()Ljava/io/File;

    move-result-object v4

    invoke-interface {v9}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lcom/google/android/location/b/p;->a(Lcom/google/android/location/k/i;Ljava/io/File;[BLcom/google/android/location/k/e;)Lcom/google/android/location/b/p;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/location/ap;->i:Lcom/google/android/location/b/p;

    .line 82
    invoke-interface {v2}, Lcom/google/android/location/k/e;->b()Ljava/io/File;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    new-instance v4, Lcom/google/android/location/b/z;

    invoke-interface {v9}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/location/b/z;-><init>(Lcom/google/android/location/k/e;Ljava/io/File;[B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/ap;->j:Lcom/google/android/location/b/u;

    .line 89
    :goto_0
    new-instance v2, Lcom/google/android/location/b/w;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ap;->j:Lcom/google/android/location/b/u;

    move-object/from16 v0, p2

    invoke-direct {v2, v9, v3, v0, v4}, Lcom/google/android/location/b/w;-><init>(Lcom/google/android/location/k/d;Lcom/google/android/location/k/b;Lcom/google/android/location/f/ag;Lcom/google/android/location/b/u;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->b:Lcom/google/android/location/b/w;

    .line 90
    new-instance v2, Lcom/google/android/location/b/aa;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v4, v9, v0}, Lcom/google/android/location/b/aa;-><init>(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Lcom/google/android/location/k/d;Lcom/google/android/location/f/ag;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->c:Lcom/google/android/location/b/aa;

    .line 92
    new-instance v2, Lcom/google/android/location/b/c;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->B()Lcom/google/android/location/k/f;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/ap;->b:Lcom/google/android/location/b/w;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/ap;->c:Lcom/google/android/location/b/aa;

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/b/c;-><init>(Lcom/google/android/location/k/f;Lcom/google/android/location/k/b;Lcom/google/android/location/k/j;Lcom/google/android/location/b/w;Lcom/google/android/location/b/aa;Lcom/google/android/location/f/ag;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    .line 94
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/av;->a(Lcom/google/android/location/os/at;)Lcom/google/android/location/av;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    .line 95
    new-instance v7, Lcom/google/android/location/f/v;

    invoke-direct {v7}, Lcom/google/android/location/f/v;-><init>()V

    .line 97
    new-instance v2, Lcom/google/android/location/v;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v3

    invoke-interface {v9}, Lcom/google/android/location/k/d;->a()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-interface {v9}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/location/v;-><init>(Lcom/google/android/location/k/e;Ljavax/crypto/SecretKey;[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->l:Lcom/google/android/location/v;

    .line 100
    new-instance v2, Lcom/google/android/location/bd;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ap;->b:Lcom/google/android/location/b/w;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ap;->c:Lcom/google/android/location/b/aa;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/ap;->l:Lcom/google/android/location/v;

    move-object/from16 v3, p1

    move-object/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/bd;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/b/aa;Lcom/google/android/location/v;Lcom/google/android/location/f/v;Lcom/google/android/location/l/a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->h:Lcom/google/android/location/bd;

    .line 101
    new-instance v2, Lcom/google/android/location/f/f;

    invoke-direct {v2}, Lcom/google/android/location/f/f;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->n:Lcom/google/android/location/f/f;

    .line 106
    new-instance v8, Lcom/google/android/location/am;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/ap;->b:Lcom/google/android/location/b/w;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/ap;->c:Lcom/google/android/location/b/aa;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/location/ap;->i:Lcom/google/android/location/b/p;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/location/ap;->l:Lcom/google/android/location/v;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/location/ap;->h:Lcom/google/android/location/bd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/ap;->n:Lcom/google/android/location/f/f;

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move-object v14, v7

    invoke-direct/range {v8 .. v16}, Lcom/google/android/location/am;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/b/aa;Lcom/google/android/location/b/p;Lcom/google/android/location/v;Lcom/google/android/location/f/v;Lcom/google/android/location/bd;Lcom/google/android/location/f/f;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    .line 108
    if-eqz p4, :cond_2

    .line 109
    new-instance v2, Lcom/google/android/location/al;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ap;->b:Lcom/google/android/location/b/w;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/ap;->c:Lcom/google/android/location/b/aa;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/ap;->l:Lcom/google/android/location/v;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/ap;->h:Lcom/google/android/location/bd;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/ap;->n:Lcom/google/android/location/f/f;

    move-object/from16 v3, p1

    move-object/from16 v9, v17

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/android/location/al;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/b/aa;Lcom/google/android/location/v;Lcom/google/android/location/bd;Lcom/google/android/location/av;Lcom/google/android/location/l/a;Lcom/google/android/location/f/f;Lcom/google/android/location/activity/k;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    .line 115
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/ap;->e:Lcom/google/android/location/l/a;

    .line 116
    new-instance v2, Lcom/google/android/location/ba;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/ap;->l:Lcom/google/android/location/v;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/location/ba;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/v;Lcom/google/android/location/av;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->m:Lcom/google/android/location/ba;

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/location/av;->a(Lcom/google/android/location/p/e;)V

    .line 118
    return-void

    .line 86
    :cond_0
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkProvider"

    const-string v3, "No persistence dir, unable to record NlpStats"

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    new-instance v2, Lcom/google/android/location/b/v;

    invoke-direct {v2}, Lcom/google/android/location/b/v;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->j:Lcom/google/android/location/b/u;

    goto/16 :goto_0

    .line 112
    :cond_2
    new-instance v2, Lcom/google/android/location/ar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/ap;->b:Lcom/google/android/location/b/w;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/ap;->c:Lcom/google/android/location/b/aa;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/ap;->h:Lcom/google/android/location/bd;

    move-object/from16 v3, p1

    move-object/from16 v5, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/android/location/ar;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/b/aa;Lcom/google/android/location/bd;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public final a(IIIZLcom/google/android/location/p/j;)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/f/x;

    invoke-direct {v2, p1, p2, p3, p5}, Lcom/google/android/location/f/x;-><init>(IIILcom/google/android/location/p/j;)V

    invoke-virtual {v0, v1, v2, p4}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;Lcom/google/android/location/f/x;Z)V

    .line 197
    iget-object v0, p0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    invoke-virtual {v0, p5}, Lcom/google/android/location/b/c;->a(Lcom/google/android/location/p/j;)V

    .line 198
    return-void
.end method

.method public final a(IIZ)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/av;->a(IIZ)V

    .line 322
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/a;->a(IIZ)V

    .line 323
    return-void
.end method

.method public final a(IIZZZLcom/google/android/location/p/j;)V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 377
    return-void
.end method

.method public final a(Lcom/google/android/location/activity/bj;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public final a(Lcom/google/android/location/f/ag;)V
    .locals 5

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/location/ap;->e:Lcom/google/android/location/l/a;

    iget-object v1, v0, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iget-object v1, v0, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->q()Lcom/google/android/location/f/ah;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/location/l/d;->a(Lcom/google/android/location/f/ah;J)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/location/l/a;->c:Lcom/google/android/location/l/d;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/location/l/a;->c:Lcom/google/android/location/l/d;

    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->r()Lcom/google/android/location/f/ah;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/location/l/d;->a(Lcom/google/android/location/f/ah;J)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/location/l/a;->d:Lcom/google/android/location/l/d;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/location/l/a;->d:Lcom/google/android/location/l/d;

    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->s()Lcom/google/android/location/f/ah;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/location/l/d;->a(Lcom/google/android/location/f/ah;J)V

    :cond_2
    iget-object v1, v0, Lcom/google/android/location/l/a;->e:Lcom/google/android/location/l/d;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/location/l/a;->e:Lcom/google/android/location/l/d;

    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->t()Lcom/google/android/location/f/ah;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/l/d;->a(Lcom/google/android/location/f/ah;J)V

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    invoke-virtual {v0, p1}, Lcom/google/android/location/av;->a(Lcom/google/android/location/f/ag;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/ag;)V

    .line 362
    return-void
.end method

.method public final a(Lcom/google/android/location/f/bg;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/bg;)V

    .line 410
    return-void
.end method

.method public final a(Lcom/google/android/location/f/g;)V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    .line 239
    iget-object v2, p0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    invoke-virtual {v2, p1}, Lcom/google/android/location/av;->a(Lcom/google/android/location/f/g;)V

    .line 240
    iget-object v2, p0, Lcom/google/android/location/ap;->n:Lcom/google/android/location/f/f;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/location/f/f;->a(JLcom/google/android/location/f/g;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;Lcom/google/android/location/f/g;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/g;)V

    .line 243
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 4

    .prologue
    .line 202
    sget-object v0, Lcom/google/android/location/aq;->a:[I

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;)V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/k/k;)V

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/c;->a(Lcom/google/android/location/k/k;)V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/location/ap;->m:Lcom/google/android/location/ba;

    sget-object v1, Lcom/google/android/location/k/k;->h:Lcom/google/android/location/k/k;

    if-ne p1, v1, :cond_0

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "SensorUploader"

    const-string v2, "alarmRing"

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/google/android/location/ba;->b:J

    invoke-virtual {v0}, Lcom/google/android/location/ba;->a()V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/location/k/k;J)V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public final a(Lcom/google/android/location/os/ah;)V
    .locals 2

    .prologue
    .line 252
    invoke-interface {p1}, Lcom/google/android/location/os/ah;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/location/os/ah;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 253
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkProvider"

    const-string v1, "ignoring GPS location lacking satellites for 2d fix"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    invoke-virtual {v0, p1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/os/ah;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/os/ah;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/a;->a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/c;->a(Lcom/google/g/a/b/b/a;)V

    .line 348
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0}, Lcom/google/android/location/a;->g()V

    iget-object v0, p0, Lcom/google/android/location/ap;->m:Lcom/google/android/location/ba;

    invoke-virtual {v0}, Lcom/google/android/location/ba;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/location/ap;->n:Lcom/google/android/location/f/f;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/location/f/f;->a(ZJ)V

    .line 328
    iget-object v0, p0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    invoke-virtual {v0, p1}, Lcom/google/android/location/av;->b(Z)V

    .line 329
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->b(Z)V

    .line 330
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/av;->a(ZLjava/lang/String;)V

    .line 388
    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/am;->b(Lcom/google/android/location/k/b;Z)V

    .line 315
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Z)V

    .line 316
    iget-object v0, p0, Lcom/google/android/location/ap;->m:Lcom/google/android/location/ba;

    iput-boolean p2, v0, Lcom/google/android/location/ba;->c:Z

    invoke-virtual {v0}, Lcom/google/android/location/ba;->a()V

    .line 317
    return-void
.end method

.method public final a(ZZI)V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/location/ap;->e:Lcom/google/android/location/l/a;

    iput-boolean p2, v0, Lcom/google/android/location/l/a;->g:Z

    .line 353
    iget-object v0, p0, Lcom/google/android/location/ap;->m:Lcom/google/android/location/ba;

    iput-boolean p1, v0, Lcom/google/android/location/ba;->d:Z

    iget-object v1, v0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/location/ba;->e:J

    invoke-virtual {v0}, Lcom/google/android/location/ba;->a()V

    .line 354
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/am;->a(ZZI)V

    .line 355
    return-void
.end method

.method public final a([Lcom/google/android/location/f/bh;Z)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 266
    move v0, v6

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 267
    aget-object v2, p1, v0

    .line 268
    invoke-virtual {v2}, Lcom/google/android/location/f/bh;->a()I

    move-result v3

    .line 269
    iget-wide v4, v2, Lcom/google/android/location/f/bh;->a:J

    move v1, v6

    .line 271
    :goto_1
    if-ge v1, v3, :cond_1

    .line 272
    invoke-virtual {v2, v1}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v7

    .line 274
    iget-wide v8, v7, Lcom/google/android/location/f/k;->a:J

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 275
    sget-boolean v8, Lcom/google/android/location/j/a;->b:Z

    if-eqz v8, :cond_0

    const-string v8, "NetworkProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Stale scan: scanTimestamp is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and device timestamp is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v7, Lcom/google/android/location/f/k;->a:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and diff is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v7, Lcom/google/android/location/f/k;->a:J

    sub-long v10, v4, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_2
    if-nez p2, :cond_3

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 288
    aget-object v0, p1, v6

    if-eqz v0, :cond_3

    .line 289
    aget-object v0, p1, v6

    .line 291
    iget-object v1, p0, Lcom/google/android/location/ap;->o:Lcom/google/android/location/f/bh;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/bh;->a(Lcom/google/android/location/f/bh;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 293
    new-instance v1, Lcom/google/android/location/f/bh;

    iget-wide v2, v0, Lcom/google/android/location/f/bh;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/location/f/bh;-><init>(JLjava/util/ArrayList;)V

    aput-object v1, p1, v6

    .line 301
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    aget-object v1, p1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/location/a;->a(Lcom/google/android/location/f/bh;)V

    .line 305
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    sget-object v0, Lcom/google/android/location/d/a;->e:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/location/d/a;->a(Lcom/google/android/gms/common/a/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_batch"

    const-string v3, "count"

    array-length v4, p1

    int-to-long v4, v4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 310
    :cond_4
    return-void

    .line 296
    :cond_5
    iput-object v0, p0, Lcom/google/android/location/ap;->o:Lcom/google/android/location/f/bh;

    goto :goto_2
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public final b(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->a(Lcom/google/g/a/b/b/a;)V

    .line 248
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public final d()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 146
    iget-object v0, p0, Lcom/google/android/location/ap;->b:Lcom/google/android/location/b/w;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/b/w;->a(Lcom/google/android/location/k/e;Lcom/google/android/location/k/b;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    invoke-virtual {v0, v3}, Lcom/google/android/location/av;->c(Z)V

    .line 148
    iget-object v0, p0, Lcom/google/android/location/ap;->c:Lcom/google/android/location/b/aa;

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/google/android/location/ap;->c:Lcom/google/android/location/b/aa;

    :try_start_0
    iget-object v0, v1, Lcom/google/android/location/b/aa;->g:Lcom/google/android/location/f/at;

    invoke-virtual {v0}, Lcom/google/android/location/f/at;->a()Lcom/google/g/a/b/b/a;

    move-result-object v0

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "SeenDevicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Actual file version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/location/b/aa;->g:Lcom/google/android/location/f/at;

    invoke-virtual {v4}, Lcom/google/android/location/f/at;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/location/b/aa;->b(Lcom/google/g/a/b/b/a;)V

    invoke-virtual {v1}, Lcom/google/android/location/b/aa;->c()V

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "SeenDevicesCache"

    const-string v2, "Loaded %d entries, last refresh: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v5}, Lcom/google/android/location/b/ab;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, v1, Lcom/google/android/location/b/aa;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    invoke-virtual {v0}, Lcom/google/android/location/b/c;->a()V

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/ap;->h:Lcom/google/android/location/bd;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/bd;->a(J)V

    .line 157
    iget-object v0, p0, Lcom/google/android/location/ap;->i:Lcom/google/android/location/b/p;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/google/android/location/ap;->i:Lcom/google/android/location/b/p;

    invoke-virtual {v0}, Lcom/google/android/location/b/p;->a()V

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/ap;->l:Lcom/google/android/location/v;

    iget-object v2, v1, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, v1, Lcom/google/android/location/v;->b:Lcom/google/android/location/f/at;

    invoke-virtual {v0}, Lcom/google/android/location/f/at;->a()Lcom/google/g/a/b/b/a;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "CollectorState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Actual file version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/location/v;->b:Lcom/google/android/location/f/at;

    invoke-virtual {v4}, Lcom/google/android/location/f/at;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/location/v;->h()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    :try_start_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "CollectorState"

    const-string v3, "Loaded: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/google/android/location/v;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 149
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/location/b/aa;->b()V

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "SeenDevicesCache"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    :try_start_3
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_5

    const-string v3, "CollectorState"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/av;->c(Z)V

    .line 171
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0}, Lcom/google/android/location/a;->f()V

    .line 172
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    invoke-virtual {v0}, Lcom/google/android/location/am;->a()V

    .line 173
    iget-object v0, p0, Lcom/google/android/location/ap;->d:Lcom/google/android/location/b/c;

    invoke-virtual {v0}, Lcom/google/android/location/b/c;->b()V

    .line 174
    iget-object v0, p0, Lcom/google/android/location/ap;->k:Lcom/google/android/location/av;

    invoke-virtual {v0, p0}, Lcom/google/android/location/av;->b(Lcom/google/android/location/p/e;)V

    .line 175
    if-eqz p1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/google/android/location/ap;->b:Lcom/google/android/location/b/w;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/b/w;->a(Lcom/google/android/location/k/e;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/location/ap;->i:Lcom/google/android/location/b/p;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/location/ap;->i:Lcom/google/android/location/b/p;

    invoke-virtual {v0}, Lcom/google/android/location/b/p;->b()V

    .line 189
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/location/av;->a()V

    .line 190
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/ap;->i:Lcom/google/android/location/b/p;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/google/android/location/ap;->i:Lcom/google/android/location/b/p;

    iget-object v1, v0, Lcom/google/android/location/b/p;->a:Lcom/google/android/location/b/m;

    iget-object v1, v1, Lcom/google/android/location/b/m;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, v0, Lcom/google/android/location/b/p;->b:Lcom/google/android/location/b/f;

    invoke-virtual {v1}, Lcom/google/android/location/b/f;->c()V

    iget-object v0, v0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    invoke-virtual {v0}, Lcom/google/android/location/b/f;->c()V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/ap;->j:Lcom/google/android/location/b/u;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/google/android/location/ap;->j:Lcom/google/android/location/b/u;

    invoke-interface {v0}, Lcom/google/android/location/b/u;->c()V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/v;->a(Lcom/google/android/location/k/e;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0}, Lcom/google/android/location/a;->h()V

    .line 415
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/location/ap;->f:Lcom/google/android/location/am;

    iget-object v1, p0, Lcom/google/android/location/ap;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;Z)V

    .line 335
    return-void
.end method

.method public final f(Z)V
    .locals 3

    .prologue
    .line 339
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Full collection mode changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/ap;->g:Lcom/google/android/location/a;

    invoke-virtual {v0, p1}, Lcom/google/android/location/a;->c(Z)V

    .line 341
    return-void
.end method
