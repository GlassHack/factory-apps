.class public abstract Lcom/google/android/location/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field final b:Lcom/google/android/location/os/at;

.field final c:Lcom/google/android/location/b/w;

.field final d:Lcom/google/android/location/bd;

.field final e:Lcom/google/android/location/l/a;

.field protected f:Z

.field public final g:Lcom/google/android/location/d;

.field public h:Lcom/google/android/location/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/a;->f:Z

    .line 98
    iput-object p2, p0, Lcom/google/android/location/a;->b:Lcom/google/android/location/os/at;

    .line 99
    iput-object p3, p0, Lcom/google/android/location/a;->c:Lcom/google/android/location/b/w;

    .line 100
    iput-object p4, p0, Lcom/google/android/location/a;->e:Lcom/google/android/location/l/a;

    .line 101
    iput-object p5, p0, Lcom/google/android/location/a;->d:Lcom/google/android/location/bd;

    .line 102
    iput-object p6, p0, Lcom/google/android/location/a;->g:Lcom/google/android/location/d;

    .line 103
    iput-object p7, p0, Lcom/google/android/location/a;->h:Lcom/google/android/location/e;

    .line 104
    iput-object p1, p0, Lcom/google/android/location/a;->a:Ljava/lang/String;

    .line 107
    return-void
.end method

.method protected static a(JLcom/google/android/location/os/ah;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;ZI)Lcom/google/g/a/b/b/a;
    .locals 12

    .prologue
    .line 119
    new-instance v3, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v3, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 120
    if-eqz p2, :cond_4

    .line 123
    if-nez p3, :cond_0

    if-eqz p4, :cond_8

    :cond_0
    const/4 v2, 0x1

    .line 124
    :goto_0
    const/4 v4, 0x3

    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v6, Lcom/google/android/location/n/a;->i:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v6, 0x1

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->b()D

    move-result-wide v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v6, 0x2

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->c()D

    move-result-wide v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v8, v10

    double-to-int v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    new-instance v6, Lcom/google/g/a/b/b/a;

    sget-object v7, Lcom/google/android/location/n/a;->r:Lcom/google/g/a/b/b/c;

    invoke-direct {v6, v7}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    const/16 v5, 0x8

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v5, 0x6

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->g()J

    move-result-wide v8

    invoke-virtual {v6, v5, v8, v9}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/16 v5, 0x11

    move/from16 v0, p5

    invoke-virtual {v6, v5, v0}, Lcom/google/g/a/b/b/a;->a(IZ)Lcom/google/g/a/b/b/a;

    const/4 v5, 0x3

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->a()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v5, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x10

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->e()F

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/google/g/a/b/b/a;->a(IF)Lcom/google/g/a/b/b/a;

    :cond_1
    invoke-interface {p2}, Lcom/google/android/location/os/ah;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xd

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->k()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v5, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->m()D

    move-result-wide v8

    double-to-int v5, v8

    invoke-virtual {v6, v2, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    :cond_3
    invoke-virtual {v3, v4, v6}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 126
    invoke-interface {p2}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v4

    add-long/2addr v4, p0

    .line 127
    invoke-interface {p2}, Lcom/google/android/location/os/ah;->g()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 128
    const/16 v2, 0xe

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 130
    :cond_4
    if-eqz p3, :cond_5

    .line 131
    const/4 v2, 0x1

    invoke-virtual {p3, p0, p1}, Lcom/google/android/location/f/g;->a(J)Lcom/google/g/a/b/b/a;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 134
    :cond_5
    if-eqz p4, :cond_6

    .line 135
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, p0, p1, v2}, Lcom/google/android/location/f/bh;->a(JZ)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 136
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 138
    :cond_6
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->o:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v4}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 139
    const/4 v4, 0x1

    move/from16 v0, p6

    invoke-virtual {v2, v4, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 140
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 141
    const/4 v4, 0x7

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 143
    :cond_7
    const/16 v4, 0x63

    invoke-virtual {v3, v4, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 144
    return-object v3

    .line 123
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected static a(Lcom/google/android/location/f/bh;Lcom/google/android/location/os/ah;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 178
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-wide v2, p0, Lcom/google/android/location/f/bh;->a:J

    invoke-interface {p1}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xafc80

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/location/os/ah;Lcom/google/android/location/os/ah;I)Z
    .locals 8

    .prologue
    .line 111
    invoke-interface {p0}, Lcom/google/android/location/os/ah;->b()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/location/os/ah;->c()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/location/os/ah;->b()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/android/location/os/ah;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->c(DDDD)D

    move-result-wide v0

    .line 113
    int-to-double v2, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fault from instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 193
    move v0, v1

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/a;->h:Lcom/google/android/location/e;

    .line 196
    iget-object v3, p0, Lcom/google/android/location/a;->b:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    .line 197
    sget-object v3, Lcom/google/android/location/b;->a:[I

    iget-object v6, p0, Lcom/google/android/location/a;->h:Lcom/google/android/location/e;

    invoke-virtual {v6}, Lcom/google/android/location/e;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 229
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/a;->h:Lcom/google/android/location/e;

    if-eq v2, v3, :cond_1

    .line 230
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/location/a;->a:Ljava/lang/String;

    const-string v4, "collector state changed from %s to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/google/android/location/a;->h:Lcom/google/android/location/e;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    if-nez v0, :cond_0

    .line 233
    return-void

    .line 199
    :pswitch_0
    invoke-virtual {p0, v4, v5}, Lcom/google/android/location/a;->a(J)Z

    move-result v0

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {p0, v4, v5}, Lcom/google/android/location/a;->b(J)Z

    move-result v0

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-virtual {p0, v4, v5}, Lcom/google/android/location/a;->c(J)Z

    move-result v0

    goto :goto_0

    .line 208
    :pswitch_3
    invoke-virtual {p0, v4, v5}, Lcom/google/android/location/a;->d(J)Z

    move-result v0

    goto :goto_0

    .line 211
    :pswitch_4
    invoke-virtual {p0, v4, v5}, Lcom/google/android/location/a;->f(J)Z

    move-result v0

    goto :goto_0

    .line 214
    :pswitch_5
    invoke-virtual {p0, v4, v5}, Lcom/google/android/location/a;->g(J)Z

    move-result v0

    goto :goto_0

    .line 217
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/location/a;->b()Z

    move-result v0

    goto :goto_0

    .line 220
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/location/a;->c()Z

    move-result v0

    goto :goto_0

    .line 223
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/location/a;->d()Z

    move-result v0

    goto :goto_0

    .line 226
    :pswitch_9
    invoke-virtual {p0, v4, v5}, Lcom/google/android/location/a;->e(J)Z

    move-result v0

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method a(IIZ)V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method a(Lcom/google/android/location/f/ag;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method a(Lcom/google/android/location/f/bg;)V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method a(Lcom/google/android/location/f/bh;)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method a(Lcom/google/android/location/f/g;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method a(Lcom/google/android/location/k/k;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method a(Lcom/google/android/location/os/ah;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method a(Lcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method protected a(J)Z
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Lcom/google/android/location/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Lcom/google/android/location/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(J)Z
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Lcom/google/android/location/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected c(J)Z
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Lcom/google/android/location/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method protected d(J)Z
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Lcom/google/android/location/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/location/a;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/a;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(J)Z
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Lcom/google/android/location/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/a;->f:Z

    .line 375
    return-void
.end method

.method protected f(J)Z
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Lcom/google/android/location/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method protected g(J)Z
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Lcom/google/android/location/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method h()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method
