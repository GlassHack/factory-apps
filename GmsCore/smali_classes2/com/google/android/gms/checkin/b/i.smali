.class public final Lcom/google/android/gms/checkin/b/i;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:J

.field private o:Z

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->b:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->d:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->f:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->h:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->j:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->l:Ljava/lang/String;

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/checkin/b/i;->n:J

    .line 140
    iput v2, p0, Lcom/google/android/gms/checkin/b/i;->p:I

    .line 157
    iput v2, p0, Lcom/google/android/gms/checkin/b/i;->r:I

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->t:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->v:Ljava/lang/String;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->x:Ljava/lang/String;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/i;->z:Ljava/lang/String;

    .line 242
    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/i;->B:Z

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/i;->C:I

    .line 16
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/google/android/gms/checkin/b/i;->C:I

    if-gez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/i;->b()I

    .line 333
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/i;->C:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->o:Z

    .line 145
    iput p1, p0, Lcom/google/android/gms/checkin/b/i;->p:I

    .line 146
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->m:Z

    .line 128
    iput-wide p1, p0, Lcom/google/android/gms/checkin/b/i;->n:J

    .line 129
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->a:Z

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->b:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->A:Z

    .line 247
    iput-boolean p1, p0, Lcom/google/android/gms/checkin/b/i;->B:Z

    .line 248
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->f(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/checkin/b/i;->a(J)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->a(I)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->g(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->b(I)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->h(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->i(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/i;->a(Z)Lcom/google/android/gms/checkin/b/i;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->a:Z

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->g:Z

    if-eqz v0, :cond_1

    .line 286
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->i:Z

    if-eqz v0, :cond_2

    .line 289
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 291
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->c:Z

    if-eqz v0, :cond_3

    .line 292
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 294
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->e:Z

    if-eqz v0, :cond_4

    .line 295
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 297
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->k:Z

    if-eqz v0, :cond_5

    .line 298
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 300
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->m:Z

    if-eqz v0, :cond_6

    .line 301
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/i;->n:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 303
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->o:Z

    if-eqz v0, :cond_7

    .line 304
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/gms/checkin/b/i;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 306
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->s:Z

    if-eqz v0, :cond_8

    .line 307
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 309
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->q:Z

    if-eqz v0, :cond_9

    .line 310
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/gms/checkin/b/i;->r:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 312
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->u:Z

    if-eqz v0, :cond_a

    .line 313
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 315
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->w:Z

    if-eqz v0, :cond_b

    .line 316
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 318
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->y:Z

    if-eqz v0, :cond_c

    .line 319
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 321
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->A:Z

    if-eqz v0, :cond_d

    .line 322
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->B:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 324
    :cond_d
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->a:Z

    if-eqz v1, :cond_0

    .line 340
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/i;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 343
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->g:Z

    if-eqz v1, :cond_1

    .line 344
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->i:Z

    if-eqz v1, :cond_2

    .line 348
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->c:Z

    if-eqz v1, :cond_3

    .line 352
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->e:Z

    if-eqz v1, :cond_4

    .line 356
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->k:Z

    if-eqz v1, :cond_5

    .line 360
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->m:Z

    if-eqz v1, :cond_6

    .line 364
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/i;->n:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->o:Z

    if-eqz v1, :cond_7

    .line 368
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/checkin/b/i;->p:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->s:Z

    if-eqz v1, :cond_8

    .line 372
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->q:Z

    if-eqz v1, :cond_9

    .line 376
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/checkin/b/i;->r:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->u:Z

    if-eqz v1, :cond_a

    .line 380
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->w:Z

    if-eqz v1, :cond_b

    .line 384
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_b
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->y:Z

    if-eqz v1, :cond_c

    .line 388
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/i;->z:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/i;->A:Z

    if-eqz v1, :cond_d

    .line 392
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/i;->B:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 395
    :cond_d
    iput v0, p0, Lcom/google/android/gms/checkin/b/i;->C:I

    .line 396
    return v0
.end method

.method public final b(I)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->q:Z

    .line 162
    iput p1, p0, Lcom/google/android/gms/checkin/b/i;->r:I

    .line 163
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->c:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->d:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->e:Z

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->f:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->g:Z

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->h:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->i:Z

    .line 94
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->j:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->k:Z

    .line 111
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->l:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->s:Z

    .line 179
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->t:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->u:Z

    .line 196
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->v:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->w:Z

    .line 213
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->x:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/i;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/i;->y:Z

    .line 230
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/i;->z:Ljava/lang/String;

    .line 231
    return-object p0
.end method
