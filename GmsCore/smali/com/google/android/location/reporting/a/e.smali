.class public final Lcom/google/android/location/reporting/a/e;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:I

.field public a:Z

.field public b:Lcom/google/android/location/reporting/a/f;

.field public c:Z

.field public d:I

.field public e:Z

.field public f:J

.field public g:Z

.field public h:F

.field public i:Z

.field public j:F

.field public k:Z

.field public l:D

.field public m:Z

.field public n:F

.field public o:I

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:I

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    .line 40
    iput v2, p0, Lcom/google/android/location/reporting/a/e;->d:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/reporting/a/e;->f:J

    .line 74
    iput v3, p0, Lcom/google/android/location/reporting/a/e;->h:F

    .line 91
    iput v3, p0, Lcom/google/android/location/reporting/a/e;->j:F

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/reporting/a/e;->l:D

    .line 125
    iput v3, p0, Lcom/google/android/location/reporting/a/e;->n:F

    .line 142
    iput v2, p0, Lcom/google/android/location/reporting/a/e;->o:I

    .line 159
    iput v4, p0, Lcom/google/android/location/reporting/a/e;->q:I

    .line 176
    iput-boolean v2, p0, Lcom/google/android/location/reporting/a/e;->s:Z

    .line 193
    iput-boolean v2, p0, Lcom/google/android/location/reporting/a/e;->u:Z

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    .line 227
    iput v2, p0, Lcom/google/android/location/reporting/a/e;->y:I

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/e;->z:Ljava/util/List;

    .line 347
    iput v4, p0, Lcom/google/android/location/reporting/a/e;->B:I

    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/google/android/location/reporting/a/e;->B:I

    if-gez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/google/android/location/reporting/a/e;->b()I

    .line 354
    :cond_0
    iget v0, p0, Lcom/google/android/location/reporting/a/e;->B:I

    return v0
.end method

.method public final a(D)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->k:Z

    .line 113
    iput-wide p1, p0, Lcom/google/android/location/reporting/a/e;->l:D

    .line 114
    return-object p0
.end method

.method public final a(F)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->g:Z

    .line 79
    iput p1, p0, Lcom/google/android/location/reporting/a/e;->h:F

    .line 80
    return-object p0
.end method

.method public final a(I)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->c:Z

    .line 45
    iput p1, p0, Lcom/google/android/location/reporting/a/e;->d:I

    .line 46
    return-object p0
.end method

.method public final a(J)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->e:Z

    .line 62
    iput-wide p1, p0, Lcom/google/android/location/reporting/a/e;->f:J

    .line 63
    return-object p0
.end method

.method public final a(Lcom/google/android/location/reporting/a/f;)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->a:Z

    .line 28
    iput-object p1, p0, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    .line 29
    return-object p0
.end method

.method public final a(Lcom/google/android/location/reporting/a/i;)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/e;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/a/e;->z:Ljava/util/List;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/e;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->v:Z

    .line 215
    iput-object p1, p0, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->r:Z

    .line 181
    iput-boolean p1, p0, Lcom/google/android/location/reporting/a/e;->s:Z

    .line 182
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 5
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
    new-instance v0, Lcom/google/android/location/reporting/a/f;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->a(Lcom/google/android/location/reporting/a/f;)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->a(I)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/reporting/a/e;->a(J)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->a(F)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->b(F)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/reporting/a/e;->a(D)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->c(F)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->b(I)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->c(I)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->a(Z)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->b(Z)Lcom/google/android/location/reporting/a/e;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->a(Ljava/lang/String;)Lcom/google/android/location/reporting/a/e;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->d(I)Lcom/google/android/location/reporting/a/e;

    goto/16 :goto_0

    :sswitch_e
    new-instance v0, Lcom/google/android/location/reporting/a/i;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/e;->a(Lcom/google/android/location/reporting/a/i;)Lcom/google/android/location/reporting/a/e;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x31 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->a:Z

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 306
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->c:Z

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/location/reporting/a/e;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 309
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->e:Z

    if-eqz v0, :cond_2

    .line 310
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/location/reporting/a/e;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 312
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->g:Z

    if-eqz v0, :cond_3

    .line 313
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/location/reporting/a/e;->h:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IF)V

    .line 315
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->i:Z

    if-eqz v0, :cond_4

    .line 316
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/location/reporting/a/e;->j:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IF)V

    .line 318
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->k:Z

    if-eqz v0, :cond_5

    .line 319
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/android/location/reporting/a/e;->l:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(ID)V

    .line 321
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->m:Z

    if-eqz v0, :cond_6

    .line 322
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/location/reporting/a/e;->n:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IF)V

    .line 324
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->A:Z

    if-eqz v0, :cond_7

    .line 325
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/location/reporting/a/e;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 327
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->p:Z

    if-eqz v0, :cond_8

    .line 328
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/location/reporting/a/e;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 330
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->r:Z

    if-eqz v0, :cond_9

    .line 331
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->s:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 333
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->t:Z

    if-eqz v0, :cond_a

    .line 334
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->u:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 336
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->v:Z

    if-eqz v0, :cond_b

    .line 337
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 339
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->x:Z

    if-eqz v0, :cond_c

    .line 340
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/android/location/reporting/a/e;->y:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 342
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/reporting/a/e;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a/i;

    .line 343
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 345
    :cond_d
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->a:Z

    if-eqz v1, :cond_0

    .line 361
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 364
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->c:Z

    if-eqz v1, :cond_1

    .line 365
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/location/reporting/a/e;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->e:Z

    if-eqz v1, :cond_2

    .line 369
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/location/reporting/a/e;->f:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->g:Z

    if-eqz v1, :cond_3

    .line 373
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/location/reporting/a/e;->h:F

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 376
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->i:Z

    if-eqz v1, :cond_4

    .line 377
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/location/reporting/a/e;->j:F

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 380
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->k:Z

    if-eqz v1, :cond_5

    .line 381
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/location/reporting/a/e;->l:D

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 384
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->m:Z

    if-eqz v1, :cond_6

    .line 385
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/location/reporting/a/e;->n:F

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 388
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->A:Z

    if-eqz v1, :cond_7

    .line 389
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/location/reporting/a/e;->o:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->p:Z

    if-eqz v1, :cond_8

    .line 393
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/location/reporting/a/e;->q:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->r:Z

    if-eqz v1, :cond_9

    .line 397
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/location/reporting/a/e;->s:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 400
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->t:Z

    if-eqz v1, :cond_a

    .line 401
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/android/location/reporting/a/e;->u:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 404
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->v:Z

    if-eqz v1, :cond_b

    .line 405
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 408
    :cond_b
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/e;->x:Z

    if-eqz v1, :cond_c

    .line 409
    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/location/reporting/a/e;->y:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/reporting/a/e;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a/i;

    .line 413
    const/16 v3, 0xe

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 415
    goto :goto_0

    .line 416
    :cond_d
    iput v1, p0, Lcom/google/android/location/reporting/a/e;->B:I

    .line 417
    return v1
.end method

.method public final b(F)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->i:Z

    .line 96
    iput p1, p0, Lcom/google/android/location/reporting/a/e;->j:F

    .line 97
    return-object p0
.end method

.method public final b(I)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->A:Z

    .line 147
    iput p1, p0, Lcom/google/android/location/reporting/a/e;->o:I

    .line 148
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->t:Z

    .line 198
    iput-boolean p1, p0, Lcom/google/android/location/reporting/a/e;->u:Z

    .line 199
    return-object p0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/location/reporting/a/e;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c(F)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->m:Z

    .line 130
    iput p1, p0, Lcom/google/android/location/reporting/a/e;->n:F

    .line 131
    return-object p0
.end method

.method public final c(I)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->p:Z

    .line 164
    iput p1, p0, Lcom/google/android/location/reporting/a/e;->q:I

    .line 165
    return-object p0
.end method

.method public final d(I)Lcom/google/android/location/reporting/a/e;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/e;->x:Z

    .line 232
    iput p1, p0, Lcom/google/android/location/reporting/a/e;->y:I

    .line 233
    return-object p0
.end method
