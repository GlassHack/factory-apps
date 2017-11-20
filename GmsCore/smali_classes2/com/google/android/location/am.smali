.class public final Lcom/google/android/location/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/ao;


# static fields
.field private static final L:Lcom/google/android/location/f/h;


# instance fields
.field public A:J

.field public B:Lcom/google/android/location/f/bh;

.field C:[Lcom/google/android/location/f/bh;

.field D:Z

.field E:Lcom/google/android/location/k/g;

.field F:Lcom/google/android/location/h/w;

.field G:J

.field H:J

.field final I:Lcom/google/android/location/v;

.field final J:Lcom/google/android/location/f/f;

.field final K:Lcom/google/android/location/y;

.field private M:Lcom/google/android/location/os/ah;

.field private N:Z

.field private O:J

.field final a:Lcom/google/android/location/os/at;

.field final b:Lcom/google/android/location/b/w;

.field final c:Lcom/google/android/location/bd;

.field public final d:Lcom/google/android/location/f/v;

.field final e:Lcom/google/android/location/b/aa;

.field final f:Lcom/google/android/location/activity/bh;

.field public g:Lcom/google/android/location/f/x;

.field final h:Lcom/google/android/location/h/f;

.field i:Lcom/google/android/location/f/af;

.field j:Z

.field k:Z

.field l:Lcom/google/g/a/b/b/a;

.field public m:J

.field n:J

.field o:Z

.field p:J

.field q:J

.field r:Lcom/google/android/location/f/h;

.field public s:J

.field t:I

.field u:Z

.field v:Z

.field w:I

.field x:Z

.field y:Z

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/location/f/h;

    invoke-direct {v0}, Lcom/google/android/location/f/h;-><init>()V

    sput-object v0, Lcom/google/android/location/am;->L:Lcom/google/android/location/f/h;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/b/aa;Lcom/google/android/location/b/p;Lcom/google/android/location/v;Lcom/google/android/location/f/v;Lcom/google/android/location/bd;Lcom/google/android/location/f/f;)V
    .locals 6

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/google/android/location/f/af;

    invoke-direct {v0}, Lcom/google/android/location/f/af;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/am;->i:Lcom/google/android/location/f/af;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/am;->j:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/am;->k:Z

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/am;->N:Z

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/am;->O:J

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/am;->m:J

    .line 140
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/am;->n:J

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/am;->o:Z

    .line 145
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/am;->p:J

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/am;->q:J

    .line 151
    new-instance v0, Lcom/google/android/location/f/h;

    const-wide/16 v2, 0x7530

    invoke-direct {v0, v2, v3}, Lcom/google/android/location/f/h;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/location/am;->r:Lcom/google/android/location/f/h;

    .line 152
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/am;->s:J

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/am;->t:I

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/am;->u:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/am;->v:Z

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/am;->w:I

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/am;->x:Z

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/am;->y:Z

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/am;->z:I

    .line 162
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/am;->A:J

    .line 166
    new-instance v0, Lcom/google/android/location/an;

    invoke-direct {v0, p0}, Lcom/google/android/location/an;-><init>(Lcom/google/android/location/am;)V

    iput-object v0, p0, Lcom/google/android/location/am;->E:Lcom/google/android/location/k/g;

    .line 202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/am;->G:J

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/am;->H:J

    .line 218
    iput-object p1, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    .line 219
    iput-object p2, p0, Lcom/google/android/location/am;->b:Lcom/google/android/location/b/w;

    .line 220
    iput-object p3, p0, Lcom/google/android/location/am;->e:Lcom/google/android/location/b/aa;

    .line 221
    new-instance v0, Lcom/google/android/location/h/w;

    invoke-interface {p1}, Lcom/google/android/location/os/at;->B()Lcom/google/android/location/k/f;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-direct {v0, v1, p4, v2, p0}, Lcom/google/android/location/h/w;-><init>(Lcom/google/android/location/k/f;Lcom/google/android/location/b/p;Lcom/google/android/location/k/b;Lcom/google/android/location/ao;)V

    iput-object v0, p0, Lcom/google/android/location/am;->F:Lcom/google/android/location/h/w;

    .line 223
    new-instance v0, Lcom/google/android/location/h/f;

    iget-object v1, p2, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    iget-object v2, p2, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    invoke-virtual {p2}, Lcom/google/android/location/b/w;->e()Lcom/google/android/location/b/u;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/am;->F:Lcom/google/android/location/h/w;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/h/f;-><init>(Lcom/google/android/location/b/am;Lcom/google/android/location/b/am;Lcom/google/android/location/b/u;Lcom/google/android/location/h/w;Lcom/google/android/location/os/at;)V

    iput-object v0, p0, Lcom/google/android/location/am;->h:Lcom/google/android/location/h/f;

    .line 225
    iput-object p6, p0, Lcom/google/android/location/am;->d:Lcom/google/android/location/f/v;

    .line 226
    iput-object p7, p0, Lcom/google/android/location/am;->c:Lcom/google/android/location/bd;

    .line 227
    iput-object p5, p0, Lcom/google/android/location/am;->I:Lcom/google/android/location/v;

    .line 228
    iput-object p8, p0, Lcom/google/android/location/am;->J:Lcom/google/android/location/f/f;

    .line 229
    new-instance v0, Lcom/google/android/location/activity/bh;

    iget-object v1, p2, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/bh;-><init>(Lcom/google/android/location/b/am;Lcom/google/android/location/k/b;)V

    iput-object v0, p0, Lcom/google/android/location/am;->f:Lcom/google/android/location/activity/bh;

    .line 231
    new-instance v0, Lcom/google/android/location/f/x;

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/f/x;-><init>(IIILcom/google/android/location/p/j;)V

    iput-object v0, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    .line 233
    new-instance v0, Lcom/google/android/location/y;

    invoke-direct {v0}, Lcom/google/android/location/y;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/am;->K:Lcom/google/android/location/y;

    .line 242
    new-instance v0, Lcom/google/android/location/f/bh;

    const-wide/32 v2, -0xafc8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/location/f/bh;-><init>(JLjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/google/android/location/am;->B:Lcom/google/android/location/f/bh;

    .line 247
    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4144997000000000L    # 2700000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/am;->G:J

    .line 251
    return-void
.end method

.method private static a(Ljava/util/List;J)Lcom/google/g/a/b/b/a;
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 284
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 289
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/af;

    .line 290
    const/4 v1, 0x0

    .line 293
    iget-object v4, v0, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v4, v4, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    sget-object v5, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    if-ne v4, v5, :cond_1

    .line 294
    iget-object v4, v0, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v4, v4, Lcom/google/android/location/f/e;->a:Lcom/google/android/location/f/g;

    .line 296
    if-eqz v4, :cond_1

    .line 297
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v5, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 298
    invoke-virtual {v4, v1, p1, p2}, Lcom/google/android/location/f/g;->a(Lcom/google/g/a/b/b/a;J)V

    .line 303
    :cond_1
    iget-object v4, v0, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v4, v4, Lcom/google/android/location/f/be;->d:Lcom/google/android/location/f/aa;

    sget-object v5, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    if-ne v4, v5, :cond_3

    .line 304
    iget-object v0, v0, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v0, v0, Lcom/google/android/location/f/be;->b:Lcom/google/android/location/f/bh;

    .line 306
    if-eqz v0, :cond_3

    .line 307
    invoke-virtual {v0, p1, p2, v6}, Lcom/google/android/location/f/bh;->a(JZ)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 308
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 311
    if-nez v1, :cond_2

    .line 312
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v4}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 316
    :cond_2
    new-instance v4, Lcom/google/g/a/b/b/a;

    sget-object v5, Lcom/google/android/location/n/a;->I:Lcom/google/g/a/b/b/c;

    invoke-direct {v4, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 318
    invoke-virtual {v4, v6, v6}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 321
    const/16 v5, 0xc

    invoke-virtual {v1, v5, v4}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 323
    invoke-virtual {v1, v7, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 327
    :cond_3
    if-eqz v1, :cond_0

    .line 329
    const/16 v0, 0xa

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 332
    const/4 v0, 0x4

    invoke-virtual {v2, v0, v1}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 336
    :cond_4
    return-object v2
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 1014
    iget v0, p0, Lcom/google/android/location/am;->w:I

    if-eq v0, p1, :cond_0

    .line 1015
    iput p1, p0, Lcom/google/android/location/am;->w:I

    .line 1016
    iget-object v0, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    iget v1, p0, Lcom/google/android/location/am;->z:I

    iget v2, p0, Lcom/google/android/location/am;->w:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/os/at;->a(II)V

    .line 1018
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/google/android/location/am;->q:J

    .line 274
    iget-wide v0, p0, Lcom/google/android/location/am;->p:J

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/am;->p:J

    .line 275
    iget-object v0, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;)V

    .line 276
    return-void
.end method

.method private a(Lcom/google/android/location/k/b;ZZ)V
    .locals 6

    .prologue
    .line 873
    iget-object v2, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    invoke-interface {p1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    iget-boolean v3, p0, Lcom/google/android/location/am;->u:Z

    iget-boolean v0, p0, Lcom/google/android/location/am;->x:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eq v1, v0, :cond_2

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/google/android/location/f/x;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x1

    sub-long v0, v4, v0

    iput-wide v0, v2, Lcom/google/android/location/f/x;->e:J

    :cond_2
    :goto_2
    if-eq v3, p2, :cond_3

    if-eqz p2, :cond_7

    invoke-virtual {v2}, Lcom/google/android/location/f/x;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1

    sub-long v0, v4, v0

    iput-wide v0, v2, Lcom/google/android/location/f/x;->d:J

    .line 875
    :cond_3
    :goto_3
    iput-boolean p2, p0, Lcom/google/android/location/am;->u:Z

    .line 876
    iput-boolean p3, p0, Lcom/google/android/location/am;->x:Z

    .line 878
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;Z)V

    .line 879
    return-void

    .line 873
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const-wide/32 v0, 0x7fffffff

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/google/android/location/f/x;->e:J

    goto :goto_2

    :cond_7
    const-wide/32 v0, 0x7fffffff

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/google/android/location/f/x;->d:J

    goto :goto_3
.end method

.method private a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;Z)V
    .locals 34

    .prologue
    .line 349
    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v12

    .line 355
    if-nez p2, :cond_17

    .line 356
    const/4 v2, 0x0

    .line 362
    :goto_0
    if-eqz v2, :cond_0

    .line 363
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/am;->B:Lcom/google/android/location/f/bh;

    .line 364
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/am;->C:[Lcom/google/android/location/f/bh;

    .line 368
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/am;->O:J

    sub-long v2, v12, v2

    const-wide/32 v4, 0xdbba00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 370
    sget-object v2, Lcom/google/android/location/d/a;->f:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/location/d/a;->a(Lcom/google/android/gms/common/a/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "settings"

    const-string v5, "gps"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v6}, Lcom/google/android/location/os/at;->h()Z

    move-result v6

    if-eqz v6, :cond_18

    const-wide/16 v6, 0x1

    :goto_1
    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "settings"

    const-string v5, "cell"

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/am;->u:Z

    if-eqz v6, :cond_19

    const-wide/16 v6, 0x1

    :goto_2
    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    const-string v3, "nlp"

    const-string v4, "settings"

    const-string v5, "wifi"

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/location/am;->x:Z

    if-eqz v6, :cond_1a

    const-wide/16 v6, 0x1

    :goto_3
    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 379
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2, v12, v13}, Lcom/google/android/location/os/at;->a(J)V

    .line 380
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->O:J

    .line 385
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/am;->H:J

    sub-long v2, v12, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->b:Lcom/google/android/location/b/w;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/location/b/w;->a(J)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->F:Lcom/google/android/location/h/w;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v4

    iget-object v2, v2, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/location/b/p;->a(J)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->e:Lcom/google/android/location/b/aa;

    if-eqz v2, :cond_3

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->e:Lcom/google/android/location/b/aa;

    invoke-virtual {v2}, Lcom/google/android/location/b/aa;->c()V

    .line 391
    :cond_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->H:J

    .line 405
    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/am;->p:J

    sub-long v30, v12, v2

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->B:Lcom/google/android/location/f/bh;

    iget-wide v2, v2, Lcom/google/android/location/f/bh;->a:J

    sub-long v14, v12, v2

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->r:Lcom/google/android/location/f/h;

    iget-object v0, v2, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    move-object/from16 v29, v0

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-wide v2, v2, Lcom/google/android/location/f/x;->e:J

    cmp-long v2, v12, v2

    if-ltz v2, :cond_1b

    const/4 v2, 0x1

    move v10, v2

    .line 413
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-wide v2, v2, Lcom/google/android/location/f/x;->d:J

    cmp-long v2, v12, v2

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    move/from16 v28, v2

    .line 414
    :goto_5
    if-nez v10, :cond_5

    if-eqz v28, :cond_1d

    :cond_5
    const/4 v2, 0x1

    move/from16 v27, v2

    .line 415
    :goto_6
    if-eqz v29, :cond_1e

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/location/f/g;->i()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v2

    sub-long v2, v12, v2

    const-wide/32 v4, 0xafc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    const/4 v2, 0x1

    move v3, v2

    .line 418
    :goto_7
    const-wide/32 v4, 0xafc8

    cmp-long v2, v14, v4

    if-gez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/am;->B:Lcom/google/android/location/f/bh;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->i:Lcom/google/android/location/f/af;

    iget-object v5, v2, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-nez v5, :cond_1f

    const/4 v2, 0x0

    :goto_8
    if-eq v4, v2, :cond_20

    const/4 v2, 0x1

    move/from16 v26, v2

    .line 424
    :goto_9
    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->J:Lcom/google/android/location/f/f;

    invoke-virtual {v2}, Lcom/google/android/location/f/f;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->i:Lcom/google/android/location/f/af;

    iget-object v4, v2, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-nez v4, :cond_21

    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, v29

    if-eq v0, v2, :cond_22

    const/4 v2, 0x1

    move/from16 v25, v2

    .line 432
    :goto_b
    if-eqz v27, :cond_23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/am;->u:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    move/from16 v24, v2

    .line 433
    :goto_c
    if-eqz v10, :cond_24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/am;->x:Z

    if-eqz v2, :cond_24

    if-eqz v26, :cond_6

    const-wide/32 v4, 0xafc8

    sub-long/2addr v4, v14

    const-wide/16 v6, 0xc8

    cmp-long v2, v4, v6

    if-gez v2, :cond_24

    :cond_6
    const/4 v2, 0x1

    move/from16 v23, v2

    .line 438
    :goto_d
    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/am;->s:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_25

    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/am;->s:J

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_25

    :cond_7
    const/4 v2, 0x1

    move/from16 v22, v2

    .line 442
    :goto_e
    if-nez v23, :cond_8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/am;->A:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/am;->x:Z

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/am;->A:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->B:Lcom/google/android/location/f/bh;

    iget-wide v6, v2, Lcom/google/android/location/f/bh;->a:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_26

    :cond_8
    const/4 v2, 0x1

    move/from16 v21, v2

    .line 446
    :goto_f
    if-eqz v22, :cond_27

    if-nez v24, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/am;->s:J

    sub-long v4, v12, v4

    const-wide/16 v6, 0x1388

    cmp-long v2, v4, v6

    if-gez v2, :cond_27

    :cond_9
    const/4 v2, 0x1

    move/from16 v20, v2

    .line 449
    :goto_10
    if-eqz v21, :cond_28

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/am;->A:J

    sub-long v4, v12, v4

    const-wide/16 v6, 0x1388

    cmp-long v2, v4, v6

    if-gez v2, :cond_28

    :cond_a
    const/4 v2, 0x1

    move/from16 v19, v2

    .line 452
    :goto_11
    if-nez v20, :cond_b

    if-eqz v19, :cond_29

    :cond_b
    const/4 v2, 0x1

    .line 458
    :goto_12
    if-nez v25, :cond_c

    if-eqz v26, :cond_d

    :cond_c
    if-eqz v2, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/am;->x:Z

    if-nez v2, :cond_2a

    if-eqz v3, :cond_2a

    if-nez v20, :cond_2a

    :cond_e
    const/4 v2, 0x1

    .line 460
    :goto_13
    if-nez p3, :cond_10

    if-nez v27, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/location/am;->j:Z

    if-eqz v3, :cond_2b

    :cond_f
    if-eqz v2, :cond_2b

    :cond_10
    const/4 v2, 0x1

    move/from16 v18, v2

    .line 462
    :goto_14
    const/4 v2, 0x0

    .line 466
    if-eqz v18, :cond_8e

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->M:Lcom/google/android/location/os/ah;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->i()Lcom/google/android/location/os/ah;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v3, :cond_8d

    invoke-interface {v3}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v6

    sub-long v6, v12, v6

    const-wide/32 v8, 0x15f90

    cmp-long v5, v6, v8

    if-gez v5, :cond_8d

    :goto_15
    if-eqz v2, :cond_11

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v4

    sub-long v4, v12, v4

    const-wide/32 v6, 0x15f90

    cmp-long v4, v4, v6

    if-gez v4, :cond_11

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->a()F

    move-result v4

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Lcom/google/android/location/os/ah;->a()F

    move-result v5

    float-to-double v6, v4

    float-to-double v4, v5

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_8c

    :goto_16
    move-object v3, v2

    :cond_11
    :goto_17
    if-nez v3, :cond_2d

    const/4 v8, 0x0

    .line 469
    :goto_18
    if-eqz v28, :cond_12

    if-eqz v27, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/am;->k:Z

    if-eqz v2, :cond_30

    :cond_13
    const/4 v9, 0x1

    .line 472
    :goto_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/location/am;->h:Lcom/google/android/location/h/f;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/am;->C:[Lcom/google/android/location/f/bh;

    if-nez v5, :cond_31

    const/4 v2, 0x0

    :cond_14
    :goto_1a
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/am;->C:[Lcom/google/android/location/f/bh;

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->h:Lcom/google/android/location/h/f;

    if-eqz v25, :cond_3a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/am;->r:Lcom/google/android/location/f/h;

    :goto_1b
    const-wide/32 v4, 0xafc8

    cmp-long v2, v14, v4

    if-gez v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/am;->C:[Lcom/google/android/location/f/bh;

    :goto_1c
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_15

    const-string v4, "LocatorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "batchMode is "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/google/android/location/h/f;->b:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", scans is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v7, :cond_3c

    const-string v2, "NONE"

    :goto_1d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "cellStatus is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", now is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", deadline is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v14, v3, Lcom/google/android/location/h/f;->c:J

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-nez v7, :cond_3d

    const/4 v15, 0x0

    :goto_1e
    iget-boolean v2, v3, Lcom/google/android/location/h/f;->b:Z

    if-eqz v2, :cond_3e

    move-wide v4, v12

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/h/f;->a(JLcom/google/android/location/f/h;[Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;Z)Ljava/util/List;

    move-result-object v2

    :goto_1f
    move-object v8, v2

    .line 481
    :goto_20
    if-nez v8, :cond_3f

    const/4 v2, 0x0

    move v4, v2

    .line 483
    :goto_21
    if-lez v4, :cond_40

    .line 484
    add-int/lit8 v2, v4, -0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/af;

    move-object v11, v2

    .line 489
    :goto_22
    const/4 v3, 0x0

    .line 490
    const/4 v2, 0x0

    .line 494
    if-lez v4, :cond_41

    .line 495
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move v3, v2

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/af;

    .line 496
    iget-object v6, v2, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-eqz v6, :cond_16

    iget-object v6, v2, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v6, v6, Lcom/google/android/location/f/be;->d:Lcom/google/android/location/f/aa;

    sget-object v7, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    if-ne v6, v7, :cond_16

    .line 497
    const/4 v3, 0x1

    .line 500
    :cond_16
    iget-object v6, v2, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-eqz v6, :cond_8a

    iget-object v2, v2, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v2, v2, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    sget-object v6, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    if-ne v2, v6, :cond_8a

    .line 501
    const/4 v4, 0x1

    move v2, v4

    :goto_24
    move v4, v2

    .line 503
    goto :goto_23

    .line 358
    :cond_17
    const/4 v2, 0x0

    aget-object v2, p2, v2

    goto/16 :goto_0

    .line 372
    :cond_18
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 374
    :cond_19
    const-wide/16 v6, 0x0

    goto/16 :goto_2

    .line 376
    :cond_1a
    const-wide/16 v6, 0x0

    goto/16 :goto_3

    .line 412
    :cond_1b
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_4

    .line 413
    :cond_1c
    const/4 v2, 0x0

    move/from16 v28, v2

    goto/16 :goto_5

    .line 414
    :cond_1d
    const/4 v2, 0x0

    move/from16 v27, v2

    goto/16 :goto_6

    .line 415
    :cond_1e
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_7

    .line 418
    :cond_1f
    iget-object v2, v2, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v2, v2, Lcom/google/android/location/f/be;->b:Lcom/google/android/location/f/bh;

    goto/16 :goto_8

    :cond_20
    const/4 v2, 0x0

    move/from16 v26, v2

    goto/16 :goto_9

    .line 424
    :cond_21
    iget-object v2, v2, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v2, v2, Lcom/google/android/location/f/e;->a:Lcom/google/android/location/f/g;

    goto/16 :goto_a

    :cond_22
    const/4 v2, 0x0

    move/from16 v25, v2

    goto/16 :goto_b

    .line 432
    :cond_23
    const/4 v2, 0x0

    move/from16 v24, v2

    goto/16 :goto_c

    .line 433
    :cond_24
    const/4 v2, 0x0

    move/from16 v23, v2

    goto/16 :goto_d

    .line 438
    :cond_25
    const/4 v2, 0x0

    move/from16 v22, v2

    goto/16 :goto_e

    .line 442
    :cond_26
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_f

    .line 446
    :cond_27
    const/4 v2, 0x0

    move/from16 v20, v2

    goto/16 :goto_10

    .line 449
    :cond_28
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_11

    .line 452
    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 458
    :cond_2a
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 460
    :cond_2b
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_14

    :cond_2c
    move-object v3, v2

    .line 467
    goto/16 :goto_17

    :cond_2d
    invoke-interface {v3}, Lcom/google/android/location/os/ah;->a()F

    move-result v2

    float-to-double v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2e

    const/high16 v2, 0x457a0000    # 4000.0f

    :goto_25
    new-instance v8, Lcom/google/android/location/f/ak;

    invoke-interface {v3}, Lcom/google/android/location/os/ah;->b()D

    move-result-wide v4

    const-wide v6, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-interface {v3}, Lcom/google/android/location/os/ah;->c()D

    move-result-wide v6

    const-wide v16, 0x416312d000000000L    # 1.0E7

    mul-double v6, v6, v16

    double-to-int v3, v6

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v8, v4, v3, v2}, Lcom/google/android/location/f/ak;-><init>(III)V

    goto/16 :goto_18

    :cond_2e
    float-to-double v4, v2

    const-wide v6, 0x40c3880000000000L    # 10000.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2f

    const v2, 0x47435000    # 50000.0f

    goto :goto_25

    :cond_2f
    const v2, 0x47c35000    # 100000.0f

    goto :goto_25

    .line 469
    :cond_30
    const/4 v9, 0x0

    goto/16 :goto_19

    .line 472
    :cond_31
    const/4 v3, 0x0

    const/4 v2, 0x0

    move/from16 v33, v2

    move-object v2, v3

    move/from16 v3, v33

    :goto_26
    array-length v4, v5

    if-ge v3, v4, :cond_39

    aget-object v6, v5, v3

    iget-object v0, v11, Lcom/google/android/location/h/f;->a:Lcom/google/android/location/h/ae;

    move-object/from16 v16, v0

    if-nez v6, :cond_34

    const/4 v4, 0x0

    :goto_27
    if-eq v4, v6, :cond_33

    if-nez v2, :cond_32

    array-length v2, v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/location/f/bh;

    :cond_32
    aput-object v4, v2, v3

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_34
    const/4 v7, 0x1

    const/4 v4, 0x0

    :goto_28
    invoke-virtual {v6}, Lcom/google/android/location/f/bh;->a()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_8b

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/location/h/ae;->a:Lcom/google/android/location/d/k;

    move-object/from16 v17, v0

    invoke-virtual {v6, v4}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/location/d/k;->a(Lcom/google/android/location/f/bb;)Z

    move-result v17

    if-nez v17, :cond_35

    const/4 v4, 0x0

    :goto_29
    if-eqz v4, :cond_36

    move-object v4, v6

    goto :goto_27

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_36
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/google/android/location/f/bh;->a()I

    move-result v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_2a
    invoke-virtual {v6}, Lcom/google/android/location/f/bh;->a()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_38

    invoke-virtual {v6, v4}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/location/h/ae;->a:Lcom/google/android/location/d/k;

    move-object/from16 v32, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/location/d/k;->a(Lcom/google/android/location/f/bb;)Z

    move-result v32

    if-eqz v32, :cond_37

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_38
    new-instance v4, Lcom/google/android/location/f/bh;

    iget-wide v0, v6, Lcom/google/android/location/f/bh;->a:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v4, v0, v1, v7}, Lcom/google/android/location/f/bh;-><init>(JLjava/util/ArrayList;)V

    goto :goto_27

    :cond_39
    if-nez v2, :cond_14

    move-object v2, v5

    goto/16 :goto_1a

    .line 477
    :cond_3a
    sget-object v6, Lcom/google/android/location/am;->L:Lcom/google/android/location/f/h;

    goto/16 :goto_1b

    :cond_3b
    const/4 v7, 0x0

    goto/16 :goto_1c

    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "length "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v7

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1d

    :cond_3d
    const/4 v2, 0x0

    aget-object v15, v7, v2

    goto/16 :goto_1e

    :cond_3e
    new-instance v11, Lcom/google/android/location/f/ao;

    move-object v14, v6

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/google/android/location/f/ao;-><init>(JLcom/google/android/location/f/h;Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;Z)V

    invoke-virtual {v3, v11}, Lcom/google/android/location/h/f;->a(Lcom/google/android/location/f/ao;)Lcom/google/android/location/f/af;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_1f

    .line 481
    :cond_3f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move v4, v2

    goto/16 :goto_21

    .line 486
    :cond_40
    const/4 v2, 0x0

    move-object v11, v2

    goto/16 :goto_22

    :cond_41
    move v4, v3

    move v3, v2

    .line 506
    :cond_42
    if-eqz v11, :cond_5d

    iget-object v2, v11, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    if-eqz v2, :cond_5d

    const/4 v2, 0x1

    .line 509
    :goto_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/am;->l:Lcom/google/g/a/b/b/a;

    if-nez v5, :cond_5e

    if-nez v27, :cond_43

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/location/am;->o:Z

    if-eqz v5, :cond_5e

    :cond_43
    if-eqz v4, :cond_44

    if-nez v25, :cond_45

    :cond_44
    if-eqz v3, :cond_5e

    if-eqz v26, :cond_5e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->B:Lcom/google/android/location/f/bh;

    invoke-virtual {v3}, Lcom/google/android/location/f/bh;->a()I

    move-result v3

    if-lez v3, :cond_5e

    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->K:Lcom/google/android/location/y;

    invoke-virtual {v3, v12, v13}, Lcom/google/android/location/y;->a(J)Z

    move-result v3

    if-eqz v3, :cond_5e

    const/4 v3, 0x1

    move v7, v3

    .line 513
    :goto_2c
    if-nez v7, :cond_46

    if-eqz v2, :cond_5f

    :cond_46
    const/4 v3, 0x1

    move v6, v3

    .line 515
    :goto_2d
    if-eqz v2, :cond_60

    if-nez v7, :cond_60

    const/4 v2, 0x1

    .line 517
    :goto_2e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/am;->b()Z

    move-result v5

    .line 518
    if-nez v5, :cond_61

    if-eqz v27, :cond_61

    const/4 v3, 0x1

    .line 522
    :goto_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/am;->l:Lcom/google/g/a/b/b/a;

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/location/am;->m:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/location/am;->p:J

    move-wide/from16 v16, v0

    cmp-long v4, v14, v16

    if-gez v4, :cond_48

    :cond_47
    if-eqz v7, :cond_62

    :cond_48
    const/4 v4, 0x1

    .line 524
    :goto_30
    if-nez v22, :cond_49

    if-nez v21, :cond_49

    if-eqz v4, :cond_63

    :cond_49
    const/4 v4, 0x1

    .line 525
    :goto_31
    if-eqz v5, :cond_64

    if-nez v27, :cond_64

    const-wide/16 v14, 0x1388

    cmp-long v9, v30, v14

    if-gez v9, :cond_4a

    if-nez v4, :cond_64

    :cond_4a
    const/4 v4, 0x1

    move v9, v4

    .line 529
    :goto_32
    if-eqz v5, :cond_65

    if-eqz v27, :cond_65

    if-nez v9, :cond_65

    const/4 v4, 0x1

    .line 566
    :goto_33
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/location/am;->j:Z

    if-nez v5, :cond_4b

    if-eqz v27, :cond_66

    :cond_4b
    if-nez v18, :cond_66

    const/4 v5, 0x1

    :goto_34
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/location/am;->j:Z

    .line 567
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/location/am;->k:Z

    if-nez v5, :cond_4c

    if-eqz v28, :cond_67

    :cond_4c
    if-nez v18, :cond_67

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/location/am;->k:Z

    .line 568
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/location/am;->o:Z

    if-nez v5, :cond_4d

    if-eqz v27, :cond_68

    :cond_4d
    if-nez v6, :cond_68

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/location/am;->o:Z

    .line 570
    if-eqz v3, :cond_4e

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v3

    sget-object v5, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-object v6, v6, Lcom/google/android/location/f/x;->c:Lcom/google/android/location/p/j;

    invoke-interface {v3, v5, v6}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->q:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->p:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/location/am;->p:J

    .line 573
    :cond_4e
    if-eqz v4, :cond_4f

    .line 574
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->p:J

    .line 576
    :cond_4f
    if-eqz v10, :cond_50

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->d:Lcom/google/android/location/f/v;

    sget-object v4, Lcom/google/android/location/f/w;->a:Lcom/google/android/location/f/w;

    invoke-virtual {v3, v4}, Lcom/google/android/location/f/v;->a(Lcom/google/android/location/f/w;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    invoke-virtual {v3, v12, v13}, Lcom/google/android/location/f/x;->a(J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/location/f/x;->e:J

    .line 580
    :cond_50
    if-eqz v28, :cond_51

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->d:Lcom/google/android/location/f/v;

    sget-object v4, Lcom/google/android/location/f/w;->a:Lcom/google/android/location/f/w;

    invoke-virtual {v3, v4}, Lcom/google/android/location/f/v;->a(Lcom/google/android/location/f/w;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    invoke-virtual {v3, v12, v13}, Lcom/google/android/location/f/x;->b(J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/location/f/x;->d:J

    .line 584
    :cond_51
    if-eqz v24, :cond_52

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->b()V

    .line 586
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->s:J

    .line 588
    :cond_52
    if-eqz v23, :cond_54

    .line 589
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/location/am;->D:Z

    if-nez v3, :cond_53

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->g()Lcom/google/android/location/os/ax;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-object v4, v4, Lcom/google/android/location/f/x;->c:Lcom/google/android/location/p/j;

    invoke-interface {v3, v4}, Lcom/google/android/location/os/ax;->a(Lcom/google/android/location/p/j;)V

    .line 592
    :cond_53
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->A:J

    .line 594
    :cond_54
    if-eqz v7, :cond_55

    .line 595
    invoke-static {v8, v12, v13}, Lcom/google/android/location/am;->a(Ljava/util/List;J)Lcom/google/g/a/b/b/a;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/location/am;->l:Lcom/google/g/a/b/b/a;

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->c:Lcom/google/android/location/bd;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/am;->l:Lcom/google/g/a/b/b/a;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/location/bd;->a(Lcom/google/android/location/os/at;Lcom/google/g/a/b/b/a;)V

    .line 597
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->m:J

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->B()Lcom/google/android/location/k/f;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/am;->l:Lcom/google/g/a/b/b/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-object v5, v5, Lcom/google/android/location/f/x;->c:Lcom/google/android/location/p/j;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/am;->E:Lcom/google/android/location/k/g;

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V

    .line 601
    :cond_55
    if-eqz v18, :cond_56

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->F:Lcom/google/android/location/h/w;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-object v4, v4, Lcom/google/android/location/f/x;->c:Lcom/google/android/location/p/j;

    invoke-virtual {v3, v4}, Lcom/google/android/location/h/w;->a(Lcom/google/android/location/p/j;)V

    .line 605
    :cond_56
    if-eqz v2, :cond_6d

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->f:Lcom/google/android/location/activity/bh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->B:Lcom/google/android/location/f/bh;

    invoke-virtual {v2, v11, v3}, Lcom/google/android/location/activity/bh;->a(Lcom/google/android/location/f/af;Lcom/google/android/location/f/bh;)Lcom/google/android/location/activity/bj;

    move-result-object v4

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2, v4}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/activity/bj;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->i()Lcom/google/android/location/os/ah;

    move-result-object v2

    .line 618
    if-eqz v2, :cond_57

    .line 619
    invoke-interface {v2}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v2

    .line 621
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/am;->n:J

    cmp-long v5, v6, v2

    if-lez v5, :cond_69

    .line 622
    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_57

    const-string v5, "NetworkLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "This location used GLS-fetched data: lastLocTime "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", glsQueryTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/am;->m:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_57
    :goto_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->i:Lcom/google/android/location/f/af;

    iget-object v2, v2, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    if-eqz v2, :cond_5b

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->i:Lcom/google/android/location/f/af;

    iget-object v2, v2, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v3, v11, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v5, v2, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    iget-object v6, v3, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    invoke-static {v5, v6}, Lcom/google/android/location/h/d;->b(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    iget v5, v5, Lcom/google/android/location/f/ak;->f:I

    int-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    iget v5, v6, Lcom/google/android/location/f/ak;->f:I

    int-to-double v6, v5

    sub-double v6, v14, v6

    iget-wide v14, v2, Lcom/google/android/location/f/y;->e:J

    iget-wide v2, v3, Lcom/google/android/location/f/y;->e:J

    sub-long v2, v14, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v6, v14

    if-ltz v5, :cond_58

    const-wide/16 v14, 0x0

    cmp-long v5, v2, v14

    if-nez v5, :cond_6a

    :cond_58
    const-wide/16 v2, 0x0

    .line 634
    :goto_38
    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_59

    const-string v5, "NetworkLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Speed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_59
    const-wide v6, 0x407544a3d70a3d71L    # 340.29

    cmpl-double v5, v2, v6

    if-lez v5, :cond_5b

    .line 638
    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_5a

    const-string v5, "NetworkLocator"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Speed > Mach1: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->d:Lcom/google/android/location/f/v;

    sget-object v3, Lcom/google/android/location/f/w;->d:Lcom/google/android/location/f/w;

    invoke-virtual {v2, v3}, Lcom/google/android/location/f/v;->a(Lcom/google/android/location/f/w;)V

    .line 643
    :cond_5b
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/location/am;->i:Lcom/google/android/location/f/af;

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->b:Lcom/google/android/location/b/w;

    iget-object v3, v11, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iput-object v3, v2, Lcom/google/android/location/b/w;->b:Lcom/google/android/location/f/y;

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->d:Lcom/google/android/location/f/v;

    sget-object v3, Lcom/google/android/location/f/w;->b:Lcom/google/android/location/f/w;

    invoke-virtual {v2, v3}, Lcom/google/android/location/f/v;->a(Lcom/google/android/location/f/w;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->h:Lcom/google/android/location/h/f;

    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_5c

    const-string v3, "LocatorManager"

    const-string v5, "Clearing batch readings"

    invoke-static {v3, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    iget-object v3, v2, Lcom/google/android/location/h/f;->e:Lcom/google/android/location/f/c;

    iget-object v3, v3, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-wide v6, v2, Lcom/google/android/location/h/f;->c:J

    iget-wide v14, v2, Lcom/google/android/location/h/f;->d:J

    add-long/2addr v6, v14

    iput-wide v6, v2, Lcom/google/android/location/h/f;->c:J

    .line 648
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/af;

    .line 649
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    if-nez v4, :cond_6b

    const/4 v3, 0x0

    :goto_3a
    invoke-interface {v6, v2, v3}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)V

    goto :goto_39

    .line 506
    :cond_5d
    const/4 v2, 0x0

    goto/16 :goto_2b

    .line 509
    :cond_5e
    const/4 v3, 0x0

    move v7, v3

    goto/16 :goto_2c

    .line 513
    :cond_5f
    const/4 v3, 0x0

    move v6, v3

    goto/16 :goto_2d

    .line 515
    :cond_60
    const/4 v2, 0x0

    goto/16 :goto_2e

    .line 518
    :cond_61
    const/4 v3, 0x0

    goto/16 :goto_2f

    .line 522
    :cond_62
    const/4 v4, 0x0

    goto/16 :goto_30

    .line 524
    :cond_63
    const/4 v4, 0x0

    goto/16 :goto_31

    .line 525
    :cond_64
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_32

    .line 529
    :cond_65
    const/4 v4, 0x0

    goto/16 :goto_33

    .line 566
    :cond_66
    const/4 v5, 0x0

    goto/16 :goto_34

    .line 567
    :cond_67
    const/4 v5, 0x0

    goto/16 :goto_35

    .line 568
    :cond_68
    const/4 v5, 0x0

    goto/16 :goto_36

    .line 625
    :cond_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->d:Lcom/google/android/location/f/v;

    sget-object v3, Lcom/google/android/location/f/w;->c:Lcom/google/android/location/f/w;

    invoke-virtual {v2, v3}, Lcom/google/android/location/f/v;->a(Lcom/google/android/location/f/w;)V

    goto/16 :goto_37

    .line 632
    :cond_6a
    long-to-double v2, v2

    div-double v2, v6, v2

    goto/16 :goto_38

    .line 649
    :cond_6b
    iget-object v3, v4, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    goto :goto_3a

    .line 654
    :cond_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2, v12, v13}, Lcom/google/android/location/os/at;->a(J)V

    .line 658
    :cond_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-wide v4, v2, Lcom/google/android/location/f/x;->e:J

    iget-wide v2, v2, Lcom/google/android/location/f/x;->d:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 659
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/am;->b()Z

    move-result v2

    if-eqz v2, :cond_6e

    if-nez v9, :cond_6e

    .line 660
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/am;->p:J

    const-wide/16 v6, 0x1388

    add-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 662
    :cond_6e
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v4, v2

    if-gez v2, :cond_6f

    .line 667
    sub-long v2, v4, v12

    const/4 v6, 0x3

    shr-long v6, v2, v6

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-object v8, v8, Lcom/google/android/location/f/x;->c:Lcom/google/android/location/p/j;

    invoke-interface/range {v2 .. v8}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JJLcom/google/android/location/p/j;)V

    .line 675
    :cond_6f
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/am;->G:J

    sub-long v2, v12, v2

    .line 676
    const-wide/32 v6, 0x5265c0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_70

    const-wide/32 v6, 0x2932e0

    cmp-long v2, v2, v6

    if-lez v2, :cond_73

    sub-long v2, v4, v12

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_73

    if-nez v22, :cond_73

    if-nez v21, :cond_73

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->l:Lcom/google/g/a/b/b/a;

    if-nez v2, :cond_73

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/am;->b()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 680
    :cond_70
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_71

    const-string v2, "NetworkLocator"

    const-string v3, "NlpState checkpointing..."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->b:Lcom/google/android/location/b/w;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->e()Lcom/google/android/location/k/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/b/w;->a(Lcom/google/android/location/k/e;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->F:Lcom/google/android/location/h/w;

    iget-object v2, v2, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    invoke-virtual {v2}, Lcom/google/android/location/b/p;->b()V

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->e:Lcom/google/android/location/b/aa;

    if-eqz v2, :cond_72

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->e:Lcom/google/android/location/b/aa;

    invoke-virtual {v2}, Lcom/google/android/location/b/aa;->c()V

    :try_start_0
    iget-object v3, v2, Lcom/google/android/location/b/aa;->g:Lcom/google/android/location/f/at;

    invoke-virtual {v2}, Lcom/google/android/location/b/aa;->a()Lcom/google/g/a/b/b/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/location/f/at;->b(Lcom/google/g/a/b/b/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_72
    :goto_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/am;->I:Lcom/google/android/location/v;

    invoke-virtual {v2}, Lcom/google/android/location/v;->a()V

    .line 687
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/location/am;->G:J

    .line 690
    :cond_73
    if-eqz v9, :cond_74

    .line 691
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/android/location/am;->a(J)V

    .line 696
    :cond_74
    if-eqz v11, :cond_7b

    iget-object v2, v11, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-eqz v2, :cond_7b

    const/4 v2, 0x1

    move v3, v2

    .line 697
    :goto_3c
    const/4 v2, 0x1

    .line 698
    if-eqz v22, :cond_7c

    if-nez v20, :cond_7c

    .line 699
    const/4 v2, 0x2

    .line 715
    :cond_75
    :goto_3d
    const/4 v3, 0x1

    if-eq v2, v3, :cond_76

    .line 716
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/location/am;->a(I)V

    .line 720
    :cond_76
    if-eqz v11, :cond_83

    iget-object v2, v11, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-eqz v2, :cond_83

    const/4 v2, 0x1

    move v3, v2

    .line 721
    :goto_3e
    const/4 v2, 0x1

    .line 722
    if-eqz v21, :cond_84

    if-nez v19, :cond_84

    .line 723
    const/4 v2, 0x2

    .line 737
    :cond_77
    :goto_3f
    const/4 v3, 0x1

    if-eq v2, v3, :cond_78

    .line 738
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/location/am;->b(I)V

    .line 742
    :cond_78
    if-eqz v11, :cond_7a

    .line 743
    iget-object v2, v11, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-eqz v2, :cond_79

    iget-object v2, v11, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v2, v2, Lcom/google/android/location/f/be;->d:Lcom/google/android/location/f/aa;

    sget-object v3, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v2, v3, :cond_79

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/am;->x:Z

    if-eqz v2, :cond_79

    .line 745
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/location/am;->b(I)V

    .line 748
    :cond_79
    iget-object v2, v11, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-eqz v2, :cond_7a

    iget-object v2, v11, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v2, v2, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    sget-object v3, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne v2, v3, :cond_7a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/am;->u:Z

    if-eqz v2, :cond_7a

    .line 750
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/location/am;->a(I)V

    .line 753
    :cond_7a
    return-void

    .line 684
    :catch_0
    move-exception v2

    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_72

    const-string v2, "SeenDevicesCache"

    const-string v3, "Unable to save data to disk."

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 696
    :cond_7b
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3c

    .line 700
    :cond_7c
    if-eqz v18, :cond_7d

    if-eqz v25, :cond_7d

    if-eqz v3, :cond_7e

    iget-object v4, v11, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v4, v4, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    sget-object v5, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    if-eq v4, v5, :cond_7e

    :cond_7d
    if-eqz v29, :cond_7f

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/am;->s:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_7f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/location/am;->t:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_7f

    .line 704
    :cond_7e
    const/4 v2, 0x4

    goto/16 :goto_3d

    .line 705
    :cond_7f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/am;->u:Z

    if-nez v4, :cond_80

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/am;->v:Z

    if-eqz v4, :cond_80

    .line 706
    const/4 v2, 0x6

    goto/16 :goto_3d

    .line 707
    :cond_80
    if-eqz v18, :cond_82

    if-eqz p3, :cond_82

    if-eqz v3, :cond_81

    iget-object v4, v11, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v4, v4, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    sget-object v5, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-eq v4, v5, :cond_82

    .line 709
    :cond_81
    const/4 v2, 0x3

    goto/16 :goto_3d

    .line 710
    :cond_82
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/am;->K:Lcom/google/android/location/y;

    invoke-virtual {v4, v12, v13}, Lcom/google/android/location/y;->a(J)Z

    move-result v4

    if-nez v4, :cond_75

    if-eqz v3, :cond_75

    iget-object v3, v11, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    iget-object v3, v3, Lcom/google/android/location/f/e;->d:Lcom/google/android/location/f/aa;

    sget-object v4, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    if-ne v3, v4, :cond_75

    .line 712
    const/4 v2, 0x5

    goto/16 :goto_3d

    .line 720
    :cond_83
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_3e

    .line 724
    :cond_84
    if-eqz v18, :cond_86

    if-eqz v26, :cond_86

    if-eqz v3, :cond_85

    iget-object v4, v11, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v4, v4, Lcom/google/android/location/f/be;->d:Lcom/google/android/location/f/aa;

    sget-object v5, Lcom/google/android/location/f/aa;->b:Lcom/google/android/location/f/aa;

    if-ne v4, v5, :cond_86

    .line 726
    :cond_85
    const/4 v2, 0x4

    goto/16 :goto_3f

    .line 727
    :cond_86
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/am;->x:Z

    if-nez v4, :cond_87

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/am;->y:Z

    if-eqz v4, :cond_87

    .line 728
    const/4 v2, 0x6

    goto/16 :goto_3f

    .line 729
    :cond_87
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/am;->K:Lcom/google/android/location/y;

    invoke-virtual {v4, v12, v13}, Lcom/google/android/location/y;->a(J)Z

    move-result v4

    if-nez v4, :cond_88

    if-eqz v3, :cond_88

    iget-object v4, v11, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v4, v4, Lcom/google/android/location/f/be;->d:Lcom/google/android/location/f/aa;

    sget-object v5, Lcom/google/android/location/f/aa;->c:Lcom/google/android/location/f/aa;

    if-ne v4, v5, :cond_88

    .line 731
    const/4 v2, 0x5

    goto/16 :goto_3f

    .line 732
    :cond_88
    if-eqz v18, :cond_77

    if-eqz p3, :cond_77

    if-eqz v3, :cond_89

    iget-object v3, v11, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    iget-object v3, v3, Lcom/google/android/location/f/be;->d:Lcom/google/android/location/f/aa;

    sget-object v4, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-eq v3, v4, :cond_77

    .line 734
    :cond_89
    const/4 v2, 0x3

    goto/16 :goto_3f

    :cond_8a
    move v2, v4

    goto/16 :goto_24

    :cond_8b
    move v4, v7

    goto/16 :goto_29

    :cond_8c
    move-object v2, v3

    goto/16 :goto_16

    :cond_8d
    move-object v3, v4

    goto/16 :goto_15

    :cond_8e
    move-object v8, v2

    goto/16 :goto_20
.end method

.method static synthetic a(Lcom/google/android/location/am;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/location/am;->N:Z

    return v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 1030
    iget v0, p0, Lcom/google/android/location/am;->z:I

    if-eq v0, p1, :cond_0

    .line 1031
    iput p1, p0, Lcom/google/android/location/am;->z:I

    .line 1032
    iget-object v0, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    iget v1, p0, Lcom/google/android/location/am;->z:I

    iget v2, p0, Lcom/google/android/location/am;->w:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/os/at;->a(II)V

    .line 1034
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/google/android/location/am;->p:J

    iget-wide v2, p0, Lcom/google/android/location/am;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1041
    iget-object v0, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 1042
    invoke-direct {p0}, Lcom/google/android/location/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    .line 1044
    invoke-direct {p0, v0, v1}, Lcom/google/android/location/am;->a(J)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/am;->F:Lcom/google/android/location/h/w;

    iput-boolean v2, v0, Lcom/google/android/location/h/w;->f:Z

    .line 1047
    iput-boolean v2, p0, Lcom/google/android/location/am;->N:Z

    .line 1048
    return-void
.end method

.method public final a(Lcom/google/android/location/k/b;)V
    .locals 2

    .prologue
    .line 935
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;Z)V

    .line 936
    return-void
.end method

.method public final a(Lcom/google/android/location/k/b;Lcom/google/android/location/f/g;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 946
    if-nez p2, :cond_1

    .line 947
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkLocator"

    const-string v2, "null cell state delivered"

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/am;->s:J

    .line 958
    :goto_0
    invoke-direct {p0, p1, v1, v8}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;Z)V

    .line 959
    return-void

    .line 951
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/am;->r:Lcom/google/android/location/f/h;

    if-eqz p2, :cond_6

    iget-object v0, v2, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/google/android/location/f/h;->c:J

    sub-long/2addr v4, v6

    iget-object v0, v2, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/g;

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_3

    iget-object v0, v2, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v2, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v2, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/g;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    invoke-virtual {v0}, Lcom/google/android/location/f/g;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    invoke-virtual {v0, p2}, Lcom/google/android/location/f/g;->b(Lcom/google/android/location/f/g;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    iget-object v0, v2, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v0, v2, Lcom/google/android/location/f/h;->b:Ljava/util/List;

    iget-object v3, v2, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object p2, v2, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    .line 952
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/location/f/g;->i()Z

    move-result v0

    if-nez v0, :cond_7

    .line 953
    iget v0, p0, Lcom/google/android/location/am;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/am;->t:I

    goto :goto_0

    .line 955
    :cond_7
    iput v8, p0, Lcom/google/android/location/am;->t:I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/k/b;Lcom/google/android/location/f/x;Z)V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 885
    invoke-interface {p1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    .line 891
    iget-object v8, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-boolean v9, p0, Lcom/google/android/location/am;->u:Z

    iget-boolean v0, p0, Lcom/google/android/location/am;->x:Z

    if-nez v9, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/google/android/location/f/x;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_6

    move-wide v0, v2

    :goto_1
    iget-wide v10, v8, Lcom/google/android/location/f/x;->e:J

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/location/f/x;->e:J

    :goto_2
    if-eqz v9, :cond_9

    invoke-virtual {p2}, Lcom/google/android/location/f/x;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p3, :cond_8

    :goto_3
    iget-wide v0, p2, Lcom/google/android/location/f/x;->d:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/location/f/x;->d:J

    .line 895
    :goto_4
    iget-object v1, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    .line 896
    iput-object p2, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    .line 898
    iget-object v2, p0, Lcom/google/android/location/am;->F:Lcom/google/android/location/h/w;

    iget-object v0, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget v0, v0, Lcom/google/android/location/f/x;->a:I

    int-to-long v8, v0

    const-wide/16 v10, 0x14

    cmp-long v0, v8, v10

    if-gtz v0, :cond_a

    move v0, v4

    :goto_5
    iput-boolean v0, v2, Lcom/google/android/location/h/w;->e:Z

    .line 901
    iget-object v0, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget v2, v0, Lcom/google/android/location/f/x;->b:I

    if-eqz v2, :cond_b

    iget v0, v0, Lcom/google/android/location/f/x;->b:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_b

    move v0, v4

    .line 904
    :goto_6
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->g()Lcom/google/android/location/os/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/os/ax;->a()Z

    :cond_1
    iput-boolean v5, p0, Lcom/google/android/location/am;->D:Z

    .line 905
    iget-object v0, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    invoke-virtual {v0}, Lcom/google/android/location/f/x;->a()J

    move-result-wide v2

    .line 906
    iget-object v0, p0, Lcom/google/android/location/am;->h:Lcom/google/android/location/h/f;

    iget-boolean v8, p0, Lcom/google/android/location/am;->D:Z

    add-long/2addr v6, v2

    sget-boolean v9, Lcom/google/android/location/j/a;->b:Z

    if-eqz v9, :cond_2

    const-string v9, "LocatorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setBatchMode: newBatchMode is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", deadline is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", batchPeriod is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v8, v0, Lcom/google/android/location/h/f;->b:Z

    iput-wide v6, v0, Lcom/google/android/location/h/f;->c:J

    iput-wide v2, v0, Lcom/google/android/location/h/f;->d:J

    .line 909
    iget-boolean v0, p0, Lcom/google/android/location/am;->D:Z

    if-eqz v0, :cond_4

    .line 910
    if-eqz v1, :cond_3

    .line 912
    iget-object v0, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->g()Lcom/google/android/location/os/ax;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/location/f/x;->a()J

    move-result-wide v6

    iget-object v1, v1, Lcom/google/android/location/f/x;->c:Lcom/google/android/location/p/j;

    invoke-interface {v0, v5, v6, v7}, Lcom/google/android/location/os/ax;->a(ZJ)Z

    .line 917
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/am;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->g()Lcom/google/android/location/os/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/am;->g:Lcom/google/android/location/f/x;

    iget-object v1, v1, Lcom/google/android/location/f/x;->c:Lcom/google/android/location/p/j;

    invoke-interface {v0, v4, v2, v3}, Lcom/google/android/location/os/ax;->a(ZJ)Z

    .line 926
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v5}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;Z)V

    .line 927
    return-void

    :cond_5
    move v0, v5

    .line 891
    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2, v6, v7}, Lcom/google/android/location/f/x;->a(J)J

    move-result-wide v0

    goto/16 :goto_1

    :cond_7
    iget-wide v0, v8, Lcom/google/android/location/f/x;->e:J

    iput-wide v0, p2, Lcom/google/android/location/f/x;->e:J

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p2, v6, v7}, Lcom/google/android/location/f/x;->b(J)J

    move-result-wide v2

    goto/16 :goto_3

    :cond_9
    iget-wide v0, v8, Lcom/google/android/location/f/x;->d:J

    iput-wide v0, p2, Lcom/google/android/location/f/x;->d:J

    goto/16 :goto_4

    :cond_a
    move v0, v5

    .line 898
    goto/16 :goto_5

    :cond_b
    move v0, v5

    .line 901
    goto/16 :goto_6
.end method

.method public final a(Lcom/google/android/location/k/b;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 930
    iput-boolean v0, p0, Lcom/google/android/location/am;->v:Z

    .line 931
    if-nez p2, :cond_0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/location/am;->x:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;ZZ)V

    .line 932
    return-void

    .line 931
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 978
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    if-nez v0, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/os/ah;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/google/android/location/am;->M:Lcom/google/android/location/os/ah;

    .line 940
    return-void
.end method

.method public final a(ZZI)V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/android/location/am;->K:Lcom/google/android/location/y;

    iget-boolean v1, v0, Lcom/google/android/location/y;->e:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/location/y;->f:I

    if-eq v1, p3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/location/y;->a()V

    :cond_1
    iput-boolean p1, v0, Lcom/google/android/location/y;->e:Z

    iput-boolean p2, v0, Lcom/google/android/location/y;->d:Z

    if-eqz p1, :cond_2

    iput p3, v0, Lcom/google/android/location/y;->f:I

    :cond_2
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_3

    const-string v1, "GlsFailureTracker"

    invoke-virtual {v0}, Lcom/google/android/location/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_3
    return-void
.end method

.method public final b(Lcom/google/android/location/k/b;)V
    .locals 2

    .prologue
    .line 967
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;[Lcom/google/android/location/f/bh;Z)V

    .line 968
    return-void
.end method

.method public final b(Lcom/google/android/location/k/b;Z)V
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/am;->y:Z

    .line 997
    iget-boolean v0, p0, Lcom/google/android/location/am;->u:Z

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/location/am;->a(Lcom/google/android/location/k/b;ZZ)V

    .line 998
    return-void
.end method
