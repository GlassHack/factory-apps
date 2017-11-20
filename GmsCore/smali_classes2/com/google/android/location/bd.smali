.class public final Lcom/google/android/location/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private final b:Lcom/google/android/location/os/at;

.field private final c:Lcom/google/android/location/b/w;

.field private final d:Lcom/google/android/location/b/aa;

.field private final e:Lcom/google/android/location/v;

.field private final f:Lcom/google/android/location/l/a;

.field private final g:Lcom/google/android/location/f/v;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/b/aa;Lcom/google/android/location/v;Lcom/google/android/location/f/v;Lcom/google/android/location/l/a;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/bd;->a:J

    .line 47
    iput-object p1, p0, Lcom/google/android/location/bd;->b:Lcom/google/android/location/os/at;

    .line 48
    iput-object p2, p0, Lcom/google/android/location/bd;->c:Lcom/google/android/location/b/w;

    .line 49
    iput-object p3, p0, Lcom/google/android/location/bd;->d:Lcom/google/android/location/b/aa;

    .line 50
    iput-object p4, p0, Lcom/google/android/location/bd;->e:Lcom/google/android/location/v;

    .line 51
    iput-object p5, p0, Lcom/google/android/location/bd;->g:Lcom/google/android/location/f/v;

    .line 52
    iput-object p6, p0, Lcom/google/android/location/bd;->f:Lcom/google/android/location/l/a;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/location/bd;->c:Lcom/google/android/location/b/w;

    iget-object v0, v0, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    invoke-virtual {v0}, Lcom/google/android/location/b/am;->a()Lcom/google/g/a/b/b/a;

    .line 62
    iget-object v0, p0, Lcom/google/android/location/bd;->c:Lcom/google/android/location/b/w;

    iget-object v0, v0, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    invoke-virtual {v0}, Lcom/google/android/location/b/am;->a()Lcom/google/g/a/b/b/a;

    .line 63
    iget-object v0, p0, Lcom/google/android/location/bd;->g:Lcom/google/android/location/f/v;

    invoke-virtual {v0}, Lcom/google/android/location/f/v;->a()V

    .line 64
    iput-wide p1, p0, Lcom/google/android/location/bd;->a:J

    .line 65
    return-void
.end method

.method public final a(Lcom/google/android/location/os/at;Lcom/google/g/a/b/b/a;)V
    .locals 17

    .prologue
    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    .line 74
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/bd;->a:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 75
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/location/bd;->a(J)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/bd;->a:J

    sub-long v2, v4, v2

    const-wide/32 v6, 0x6ddd00

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 77
    const/4 v3, 0x5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v6

    new-instance v8, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->ab:Lcom/google/g/a/b/b/c;

    invoke-direct {v8, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v2, 0x1

    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    invoke-virtual {v8, v2, v10, v11}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/location/bd;->a:J

    sub-long v10, v4, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v9, v10

    invoke-virtual {v8, v2, v9}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/location/bd;->c:Lcom/google/android/location/b/w;

    iget-object v9, v9, Lcom/google/android/location/b/w;->d:Lcom/google/android/location/b/am;

    invoke-virtual {v9}, Lcom/google/android/location/b/am;->a()Lcom/google/g/a/b/b/a;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/location/bd;->c:Lcom/google/android/location/b/w;

    iget-object v9, v9, Lcom/google/android/location/b/w;->e:Lcom/google/android/location/b/am;

    invoke-virtual {v9}, Lcom/google/android/location/b/am;->a()Lcom/google/g/a/b/b/a;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    const/16 v9, 0x10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/bd;->g:Lcom/google/android/location/f/v;

    new-instance v11, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aa:Lcom/google/g/a/b/b/c;

    invoke-direct {v11, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    invoke-static {}, Lcom/google/android/location/f/w;->values()[Lcom/google/android/location/f/w;

    move-result-object v12

    array-length v13, v12

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v13, :cond_3

    aget-object v14, v12, v2

    iget-object v15, v10, Lcom/google/android/location/f/v;->a:[I

    invoke-virtual {v14}, Lcom/google/android/location/f/w;->ordinal()I

    move-result v16

    aget v15, v15, v16

    if-lez v15, :cond_2

    iget v14, v14, Lcom/google/android/location/f/w;->e:I

    invoke-virtual {v11, v14, v15}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Lcom/google/android/location/f/v;->a()V

    invoke-virtual {v8, v9, v11}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    sub-long/2addr v6, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/bd;->e:Lcom/google/android/location/v;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/location/bd;->a:J

    add-long/2addr v6, v10

    invoke-virtual {v2, v6, v7}, Lcom/google/android/location/v;->a(J)Lcom/google/g/a/b/b/a;

    move-result-object v2

    if-eqz v2, :cond_4

    const/16 v6, 0xc

    invoke-virtual {v8, v6, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/bd;->f:Lcom/google/android/location/l/a;

    iget-object v6, v2, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    invoke-virtual {v6}, Lcom/google/android/location/l/d;->a()Lcom/google/g/a/b/b/a;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/location/l/a;->c:Lcom/google/android/location/l/d;

    invoke-virtual {v7}, Lcom/google/android/location/l/d;->a()Lcom/google/g/a/b/b/a;

    move-result-object v7

    iget-object v2, v2, Lcom/google/android/location/l/a;->d:Lcom/google/android/location/l/d;

    invoke-virtual {v2}, Lcom/google/android/location/l/d;->a()Lcom/google/g/a/b/b/a;

    move-result-object v9

    if-nez v6, :cond_8

    if-nez v7, :cond_8

    if-nez v9, :cond_8

    const/4 v2, 0x0

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    const/16 v6, 0xd

    invoke-virtual {v8, v6, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/bd;->d:Lcom/google/android/location/b/aa;

    if-eqz v2, :cond_7

    const/16 v2, 0xb

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/bd;->d:Lcom/google/android/location/b/aa;

    iget-object v7, v6, Lcom/google/android/location/b/aa;->a:Lcom/google/android/location/b/ae;

    iget-object v9, v6, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-static {v9}, Lcom/google/android/location/b/ab;->a(Lcom/google/android/location/b/ab;)I

    move-result v9

    iget-object v6, v6, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v6}, Lcom/google/android/location/b/ab;->size()I

    move-result v6

    invoke-virtual {v7, v9, v6}, Lcom/google/android/location/b/ae;->a(II)Lcom/google/g/a/b/b/a;

    move-result-object v6

    invoke-virtual {v8, v2, v6}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_7
    const/16 v2, 0xe

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/bd;->b:Lcom/google/android/location/os/at;

    invoke-interface {v6}, Lcom/google/android/location/os/at;->q()I

    move-result v6

    invoke-virtual {v8, v2, v6}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/16 v2, 0xf

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/bd;->b:Lcom/google/android/location/os/at;

    invoke-interface {v6}, Lcom/google/android/location/os/at;->r()I

    move-result v6

    invoke-virtual {v8, v2, v6}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 79
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/location/bd;->a:J

    goto/16 :goto_0

    .line 77
    :cond_8
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v10, Lcom/google/android/location/n/a;->Z:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v10}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    if-eqz v6, :cond_9

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v6}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_9
    if-eqz v7, :cond_a

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    :cond_a
    if-eqz v9, :cond_5

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v9}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    goto :goto_2
.end method
