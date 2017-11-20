.class public final Lcom/google/h/a/b/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/h/a/b/b/t;


# instance fields
.field final a:Lcom/google/h/a/b/b/q;

.field b:D

.field private c:F

.field private d:F

.field private e:Lcom/google/h/a/b/b/g;

.field private final f:Lcom/google/h/a/b/b/q;

.field private final g:Lcom/google/h/a/b/b/q;

.field private final h:Lcom/google/h/a/b/b/q;

.field private final i:Lcom/google/h/a/b/b/q;

.field private final j:Lcom/google/h/a/b/b/q;

.field private final k:Lcom/google/h/a/b/b/q;

.field private final l:Ljava/util/ArrayList;

.field private final m:Ljava/util/ArrayList;

.field private final n:Lcom/google/h/a/b/b/a/b;

.field private final o:Lcom/google/h/a/b/b/a/b;

.field private p:Lcom/google/h/a/b/b/a/b;

.field private final q:Lcom/google/h/a/b/b/a/a;

.field private r:Z

.field private s:Lcom/google/h/a/b/a/b;

.field private t:J

.field private u:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0xa

    const/4 v1, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/google/h/a/b/b/o;->c:F

    .line 51
    iput v0, p0, Lcom/google/h/a/b/b/o;->d:F

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->l:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->m:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v0, v3, v3}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    .line 70
    new-instance v0, Lcom/google/h/a/b/b/a/b;

    const/4 v2, 0x1

    invoke-direct {v0, v3, v2}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->o:Lcom/google/h/a/b/b/a/b;

    .line 71
    new-instance v0, Lcom/google/h/a/b/b/a/b;

    const/4 v2, 0x1

    invoke-direct {v0, v3, v2}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->p:Lcom/google/h/a/b/b/a/b;

    .line 73
    new-instance v0, Lcom/google/h/a/b/b/a/a;

    invoke-direct {v0}, Lcom/google/h/a/b/b/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->q:Lcom/google/h/a/b/b/a/a;

    .line 75
    iput-boolean v1, p0, Lcom/google/h/a/b/b/o;->r:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    .line 77
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/h/a/b/b/o;->t:J

    .line 78
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/h/a/b/b/o;->u:J

    .line 79
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/h/a/b/b/o;->b:D

    .line 82
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v4}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->f:Lcom/google/h/a/b/b/q;

    .line 83
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v4}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    .line 84
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v4}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    .line 85
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v4}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->h:Lcom/google/h/a/b/b/q;

    .line 86
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v4}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->i:Lcom/google/h/a/b/b/q;

    .line 87
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v4}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->j:Lcom/google/h/a/b/b/q;

    .line 88
    new-instance v0, Lcom/google/h/a/b/b/q;

    invoke-direct {v0, v4}, Lcom/google/h/a/b/b/q;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/o;->k:Lcom/google/h/a/b/b/q;

    move v0, v1

    .line 89
    :goto_0
    if-ge v0, v5, :cond_0

    .line 90
    iget-object v2, p0, Lcom/google/h/a/b/b/o;->l:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/h/a/b/b/p;

    invoke-direct {v3, v1}, Lcom/google/h/a/b/b/p;-><init>(B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/h/a/b/b/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 228
    const/16 v0, 0xd

    return v0
.end method

.method public final a()Lcom/google/h/a/b/a/b;
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 214
    iget-boolean v0, p0, Lcom/google/h/a/b/b/o;->r:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->p:Lcom/google/h/a/b/b/a/b;

    invoke-virtual {v0, v5, v5}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v6

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v8

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v0

    iget v5, p0, Lcom/google/h/a/b/b/o;->c:F

    float-to-double v10, v5

    mul-double/2addr v10, v2

    iget v5, p0, Lcom/google/h/a/b/b/o;->d:F

    float-to-double v12, v5

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    add-double/2addr v8, v10

    iget v5, p0, Lcom/google/h/a/b/b/o;->c:F

    float-to-double v10, v5

    mul-double/2addr v6, v10

    iget v5, p0, Lcom/google/h/a/b/b/o;->d:F

    float-to-double v10, v5

    mul-double/2addr v2, v10

    add-double/2addr v2, v6

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    invoke-virtual {v2, v0, v1}, Lcom/google/h/a/b/b/g;->a(D)I

    move-result v1

    iget-object v0, p0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    invoke-virtual {v0, v8, v9}, Lcom/google/h/a/b/b/g;->b(D)I

    move-result v2

    new-instance v0, Lcom/google/h/a/b/a/b;

    iget-object v3, p0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    iget v3, v3, Lcom/google/h/a/b/a/b;->e:I

    iget-object v5, p0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    iget v6, v5, Lcom/google/h/a/b/a/b;->j:I

    iget-object v5, p0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    iget v7, v5, Lcom/google/h/a/b/a/b;->f:F

    iget-object v5, p0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    iget-wide v8, v5, Lcom/google/h/a/b/a/b;->g:D

    iget-object v5, p0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    iget-object v10, v5, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    move-object v5, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/h/a/b/a/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IFDLcom/google/h/a/b/a/c;)V

    .line 218
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v4

    goto :goto_0
.end method

.method public final a(JFFZ)V
    .locals 7

    .prologue
    const-wide v4, 0x3fe3333340000000L    # 0.6000000238418579

    .line 113
    iget v0, p0, Lcom/google/h/a/b/b/o;->c:F

    float-to-double v0, v0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/h/a/b/b/o;->c:F

    .line 114
    iget v0, p0, Lcom/google/h/a/b/b/o;->d:F

    float-to-double v0, v0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/h/a/b/b/o;->d:F

    .line 117
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/p;

    .line 123
    :goto_0
    iput-wide p1, v0, Lcom/google/h/a/b/b/p;->a:J

    .line 124
    iget v1, p0, Lcom/google/h/a/b/b/o;->c:F

    iput v1, v0, Lcom/google/h/a/b/b/p;->b:F

    .line 125
    iget v1, p0, Lcom/google/h/a/b/b/o;->d:F

    iput v1, v0, Lcom/google/h/a/b/b/p;->c:F

    .line 126
    iget-object v1, p0, Lcom/google/h/a/b/b/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iput-wide p1, p0, Lcom/google/h/a/b/b/o;->t:J

    .line 129
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/h/a/b/b/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b/b/p;

    goto :goto_0
.end method

.method public final a(JIF)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 23

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    if-nez v4, :cond_0

    .line 134
    new-instance v4, Lcom/google/h/a/b/b/g;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/h/a/b/a/b;->c:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/google/h/a/b/a/b;->d:I

    invoke-direct {v4, v5, v6}, Lcom/google/h/a/b/b/g;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    .line 137
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/h/a/b/a/b;->c:I

    invoke-virtual {v4, v5}, Lcom/google/h/a/b/b/g;->a(I)D

    move-result-wide v6

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/h/a/b/a/b;->d:I

    invoke-virtual {v4, v5}, Lcom/google/h/a/b/b/g;->b(I)D

    move-result-wide v8

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    invoke-virtual {v4, v8, v9, v6, v7}, Lcom/google/h/a/b/b/g;->a(DD)D

    move-result-wide v4

    const-wide v10, 0x3fd3333333333333L    # 0.3

    cmpl-double v4, v4, v10

    if-lez v4, :cond_1

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/h/a/b/b/o;->c()V

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    if-eqz v4, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    iget v5, v5, Lcom/google/h/a/b/a/b;->c:I

    invoke-virtual {v4, v5}, Lcom/google/h/a/b/b/g;->a(I)D

    move-result-wide v10

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    iget v5, v5, Lcom/google/h/a/b/a/b;->d:I

    invoke-virtual {v4, v5}, Lcom/google/h/a/b/b/g;->b(I)D

    move-result-wide v12

    .line 147
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/h/a/b/b/o;->u:J

    sub-long v4, p1, v4

    long-to-double v14, v4

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/h/a/b/b/p;

    .line 150
    iget-wide v0, v4, Lcom/google/h/a/b/b/p;->a:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/h/a/b/b/o;->u:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v16, v14

    .line 151
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v16

    mul-double v18, v18, v12

    mul-double v20, v16, v8

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 152
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v16

    mul-double v20, v20, v10

    mul-double v16, v16, v6

    add-double v16, v16, v20

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/h/a/b/b/o;->f:Lcom/google/h/a/b/b/q;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/google/h/a/b/b/p;->b:F

    move/from16 v19, v0

    iget v0, v4, Lcom/google/h/a/b/b/p;->b:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    iget v0, v4, Lcom/google/h/a/b/b/p;->c:F

    move/from16 v20, v0

    iget v0, v4, Lcom/google/h/a/b/b/p;->c:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/q;->a(F)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/google/h/a/b/b/p;->b:F

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/q;->a(F)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/google/h/a/b/b/p;->c:F

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/q;->a(F)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/h/a/b/b/o;->h:Lcom/google/h/a/b/b/q;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/google/h/a/b/b/p;->b:F

    move/from16 v19, v0

    mul-float v19, v19, v18

    iget v0, v4, Lcom/google/h/a/b/b/p;->c:F

    move/from16 v20, v0

    mul-float v20, v20, v16

    add-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/q;->a(F)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/h/a/b/b/o;->i:Lcom/google/h/a/b/b/q;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/google/h/a/b/b/p;->c:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v18

    iget v4, v4, Lcom/google/h/a/b/b/p;->b:F

    mul-float v4, v4, v16

    add-float v4, v4, v19

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/h/a/b/b/q;->a(F)V

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->j:Lcom/google/h/a/b/b/q;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/google/h/a/b/b/q;->a(F)V

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->k:Lcom/google/h/a/b/b/q;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/h/a/b/b/q;->a(F)V

    goto/16 :goto_0

    .line 161
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/h/a/b/b/o;->d()V

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    iget v4, v4, Lcom/google/h/a/b/b/q;->d:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->f:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->f:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    neg-float v7, v7

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    neg-float v7, v7

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    iget v7, v7, Lcom/google/h/a/b/b/q;->d:I

    int-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x3

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    iget v7, v7, Lcom/google/h/a/b/b/q;->d:I

    int-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->o:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->h:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->o:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->i:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->o:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->j:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->o:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/h/a/b/b/o;->k:Lcom/google/h/a/b/b/q;

    iget-wide v8, v7, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v7, v8

    float-to-double v8, v7

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/h/a/b/b/a/b;->a(IID)V

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->q:Lcom/google/h/a/b/b/a/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    invoke-virtual {v4, v5}, Lcom/google/h/a/b/b/a/a;->a(Lcom/google/h/a/b/b/a/b;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->n:Lcom/google/h/a/b/b/a/b;

    .line 191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/h/a/b/b/o;->q:Lcom/google/h/a/b/b/a/a;

    invoke-virtual {v5, v4}, Lcom/google/h/a/b/b/a/a;->b(Lcom/google/h/a/b/b/a/b;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/h/a/b/b/o;->o:Lcom/google/h/a/b/b/a/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/o;->p:Lcom/google/h/a/b/b/a/b;

    invoke-static {v4, v5, v6}, Lcom/google/h/a/b/b/a/d;->a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 193
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/h/a/b/b/o;->r:Z

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/o;->p:Lcom/google/h/a/b/b/a/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v4

    .line 196
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/o;->p:Lcom/google/h/a/b/b/a/b;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v6

    .line 197
    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/h/a/b/b/o;->b:D

    .line 199
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/h/a/b/b/o;->t:J

    .line 203
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    .line 204
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/h/a/b/b/o;->u:J

    .line 205
    return-void
.end method

.method public final a(JLcom/google/h/a/b/b/u;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/google/h/a/b/b/o;->t:J

    return-wide v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->f:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 234
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 235
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->g:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 236
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->h:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 237
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->i:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 238
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->j:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 239
    iget-object v0, p0, Lcom/google/h/a/b/b/o;->k:Lcom/google/h/a/b/b/q;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/q;->c()V

    .line 240
    iput-object v2, p0, Lcom/google/h/a/b/b/o;->e:Lcom/google/h/a/b/b/g;

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/a/b/b/o;->b:D

    .line 242
    invoke-direct {p0}, Lcom/google/h/a/b/b/o;->d()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/h/a/b/b/o;->r:Z

    .line 244
    iput-object v2, p0, Lcom/google/h/a/b/b/o;->s:Lcom/google/h/a/b/a/b;

    .line 245
    return-void
.end method
