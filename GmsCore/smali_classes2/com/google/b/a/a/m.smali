.class public final Lcom/google/b/a/a/m;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:J

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Lcom/google/b/a/a/c;

.field private I:I

.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

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

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/google/b/a/a/k;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:J

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 992
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/m;->d:Ljava/lang/String;

    .line 1017
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/m;->f:Ljava/lang/String;

    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/m;->h:Ljava/lang/String;

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/m;->j:Ljava/lang/String;

    .line 1068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/m;->l:Ljava/lang/String;

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/m;->n:Ljava/lang/String;

    .line 1102
    iput-wide v2, p0, Lcom/google/b/a/a/m;->p:J

    .line 1118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/a/m;->a:Ljava/util/List;

    .line 1151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/a/m;->b:Ljava/util/List;

    .line 1185
    iput-boolean v1, p0, Lcom/google/b/a/a/m;->r:Z

    .line 1202
    iput-object v4, p0, Lcom/google/b/a/a/m;->t:Lcom/google/b/a/a/k;

    .line 1222
    iput-boolean v1, p0, Lcom/google/b/a/a/m;->v:Z

    .line 1239
    iput-wide v2, p0, Lcom/google/b/a/a/m;->x:J

    .line 1256
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/b/a/a/m;->z:I

    .line 1273
    iput v1, p0, Lcom/google/b/a/a/m;->B:I

    .line 1290
    iput-wide v2, p0, Lcom/google/b/a/a/m;->D:J

    .line 1307
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/m;->F:Ljava/lang/String;

    .line 1324
    iput-object v4, p0, Lcom/google/b/a/a/m;->H:Lcom/google/b/a/a/c;

    .line 1438
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/m;->I:I

    .line 992
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1441
    iget v0, p0, Lcom/google/b/a/a/m;->I:I

    if-gez v0, :cond_0

    .line 1443
    invoke-virtual {p0}, Lcom/google/b/a/a/m;->b()I

    .line 1445
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/m;->I:I

    return v0
.end method

.method public final a(I)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->y:Z

    .line 1261
    iput p1, p0, Lcom/google/b/a/a/m;->z:I

    .line 1262
    return-object p0
.end method

.method public final a(J)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->w:Z

    .line 1244
    iput-wide p1, p0, Lcom/google/b/a/a/m;->x:J

    .line 1245
    return-object p0
.end method

.method public final a(Lcom/google/b/a/a/c;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1328
    if-nez p1, :cond_0

    .line 1329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1331
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->G:Z

    .line 1332
    iput-object p1, p0, Lcom/google/b/a/a/m;->H:Lcom/google/b/a/a/c;

    .line 1333
    return-object p0
.end method

.method public final a(Lcom/google/b/a/a/r;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1135
    if-nez p1, :cond_0

    .line 1136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a/m;->a:Ljava/util/List;

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->c:Z

    .line 1005
    iput-object p1, p0, Lcom/google/b/a/a/m;->d:Ljava/lang/String;

    .line 1006
    return-object p0
.end method

.method public final a(Z)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->u:Z

    .line 1227
    iput-boolean p1, p0, Lcom/google/b/a/a/m;->v:Z

    .line 1228
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 989
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

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->a(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->b(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->c(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->d(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->e(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->f(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/b/a/a/m;->o:Z

    iput-wide v0, p0, Lcom/google/b/a/a/m;->p:J

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/google/b/a/a/r;

    invoke-direct {v0}, Lcom/google/b/a/a/r;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->a(Lcom/google/b/a/a/r;)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->g(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v2, p0, Lcom/google/b/a/a/m;->q:Z

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->r:Z

    goto :goto_0

    :sswitch_b
    new-instance v0, Lcom/google/b/a/a/k;

    invoke-direct {v0}, Lcom/google/b/a/a/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/b/a/a/m;->s:Z

    iput-object v0, p0, Lcom/google/b/a/a/m;->t:Lcom/google/b/a/a/k;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->a(Z)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/b/a/a/m;->a(J)Lcom/google/b/a/a/m;

    goto :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->a(I)Lcom/google/b/a/a/m;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->b(I)Lcom/google/b/a/a/m;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/b/a/a/m;->b(J)Lcom/google/b/a/a/m;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->h(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lcom/google/b/a/a/c;

    invoke-direct {v0}, Lcom/google/b/a/a/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/m;->a(Lcom/google/b/a/a/c;)Lcom/google/b/a/a/m;

    goto/16 :goto_0

    nop

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
        0x42 -> :sswitch_8
        0x52 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x70 -> :sswitch_c
        0x78 -> :sswitch_d
        0x80 -> :sswitch_e
        0x88 -> :sswitch_f
        0x90 -> :sswitch_10
        0x9a -> :sswitch_11
        0xa2 -> :sswitch_12
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 1382
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->c:Z

    if-eqz v0, :cond_0

    .line 1383
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1385
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->e:Z

    if-eqz v0, :cond_1

    .line 1386
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/m;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1388
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->g:Z

    if-eqz v0, :cond_2

    .line 1389
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/a/m;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1391
    :cond_2
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->i:Z

    if-eqz v0, :cond_3

    .line 1392
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/a/m;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1394
    :cond_3
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->k:Z

    if-eqz v0, :cond_4

    .line 1395
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/a/m;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1397
    :cond_4
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->m:Z

    if-eqz v0, :cond_5

    .line 1398
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/a/m;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1400
    :cond_5
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->o:Z

    if-eqz v0, :cond_6

    .line 1401
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/b/a/a/m;->p:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1403
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/r;

    .line 1404
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 1406
    :cond_7
    iget-object v0, p0, Lcom/google/b/a/a/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1407
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 1409
    :cond_8
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->q:Z

    if-eqz v0, :cond_9

    .line 1410
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/b/a/a/m;->r:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1412
    :cond_9
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->s:Z

    if-eqz v0, :cond_a

    .line 1413
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/b/a/a/m;->t:Lcom/google/b/a/a/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1415
    :cond_a
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->u:Z

    if-eqz v0, :cond_b

    .line 1416
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/google/b/a/a/m;->v:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1418
    :cond_b
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->w:Z

    if-eqz v0, :cond_c

    .line 1419
    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/b/a/a/m;->x:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1421
    :cond_c
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->y:Z

    if-eqz v0, :cond_d

    .line 1422
    const/16 v0, 0x10

    iget v1, p0, Lcom/google/b/a/a/m;->z:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1424
    :cond_d
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->A:Z

    if-eqz v0, :cond_e

    .line 1425
    const/16 v0, 0x11

    iget v1, p0, Lcom/google/b/a/a/m;->B:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1427
    :cond_e
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->C:Z

    if-eqz v0, :cond_f

    .line 1428
    const/16 v0, 0x12

    iget-wide v2, p0, Lcom/google/b/a/a/m;->D:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1430
    :cond_f
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->E:Z

    if-eqz v0, :cond_10

    .line 1431
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/b/a/a/m;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1433
    :cond_10
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->G:Z

    if-eqz v0, :cond_11

    .line 1434
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/b/a/a/m;->H:Lcom/google/b/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1436
    :cond_11
    return-void
.end method

.method public final b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1450
    .line 1451
    iget-boolean v0, p0, Lcom/google/b/a/a/m;->c:Z

    if-eqz v0, :cond_11

    .line 1452
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/b/a/a/m;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1455
    :goto_0
    iget-boolean v2, p0, Lcom/google/b/a/a/m;->e:Z

    if-eqz v2, :cond_0

    .line 1456
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/b/a/a/m;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1459
    :cond_0
    iget-boolean v2, p0, Lcom/google/b/a/a/m;->g:Z

    if-eqz v2, :cond_1

    .line 1460
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/b/a/a/m;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1463
    :cond_1
    iget-boolean v2, p0, Lcom/google/b/a/a/m;->i:Z

    if-eqz v2, :cond_2

    .line 1464
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/b/a/a/m;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1467
    :cond_2
    iget-boolean v2, p0, Lcom/google/b/a/a/m;->k:Z

    if-eqz v2, :cond_3

    .line 1468
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/b/a/a/m;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1471
    :cond_3
    iget-boolean v2, p0, Lcom/google/b/a/a/m;->m:Z

    if-eqz v2, :cond_4

    .line 1472
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/b/a/a/m;->n:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1475
    :cond_4
    iget-boolean v2, p0, Lcom/google/b/a/a/m;->o:Z

    if-eqz v2, :cond_5

    .line 1476
    const/4 v2, 0x7

    iget-wide v4, p0, Lcom/google/b/a/a/m;->p:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1479
    :cond_5
    iget-object v2, p0, Lcom/google/b/a/a/m;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/r;

    .line 1480
    const/16 v4, 0x8

    invoke-static {v4, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 1482
    goto :goto_1

    .line 1485
    :cond_6
    iget-object v0, p0, Lcom/google/b/a/a/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1486
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1488
    goto :goto_2

    .line 1489
    :cond_7
    add-int v0, v2, v1

    .line 1490
    iget-object v1, p0, Lcom/google/b/a/a/m;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1492
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->q:Z

    if-eqz v1, :cond_8

    .line 1493
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/b/a/a/m;->r:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1496
    :cond_8
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->s:Z

    if-eqz v1, :cond_9

    .line 1497
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/b/a/a/m;->t:Lcom/google/b/a/a/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1500
    :cond_9
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->u:Z

    if-eqz v1, :cond_a

    .line 1501
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/b/a/a/m;->v:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1504
    :cond_a
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->w:Z

    if-eqz v1, :cond_b

    .line 1505
    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/google/b/a/a/m;->x:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1508
    :cond_b
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->y:Z

    if-eqz v1, :cond_c

    .line 1509
    const/16 v1, 0x10

    iget v2, p0, Lcom/google/b/a/a/m;->z:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1512
    :cond_c
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->A:Z

    if-eqz v1, :cond_d

    .line 1513
    const/16 v1, 0x11

    iget v2, p0, Lcom/google/b/a/a/m;->B:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1516
    :cond_d
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->C:Z

    if-eqz v1, :cond_e

    .line 1517
    const/16 v1, 0x12

    iget-wide v2, p0, Lcom/google/b/a/a/m;->D:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1520
    :cond_e
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->E:Z

    if-eqz v1, :cond_f

    .line 1521
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/b/a/a/m;->F:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1524
    :cond_f
    iget-boolean v1, p0, Lcom/google/b/a/a/m;->G:Z

    if-eqz v1, :cond_10

    .line 1525
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/b/a/a/m;->H:Lcom/google/b/a/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1528
    :cond_10
    iput v0, p0, Lcom/google/b/a/a/m;->I:I

    .line 1529
    return v0

    :cond_11
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b(I)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->A:Z

    .line 1278
    iput p1, p0, Lcom/google/b/a/a/m;->B:I

    .line 1279
    return-object p0
.end method

.method public final b(J)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->C:Z

    .line 1295
    iput-wide p1, p0, Lcom/google/b/a/a/m;->D:J

    .line 1296
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->e:Z

    .line 1022
    iput-object p1, p0, Lcom/google/b/a/a/m;->f:Ljava/lang/String;

    .line 1023
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->g:Z

    .line 1039
    iput-object p1, p0, Lcom/google/b/a/a/m;->h:Ljava/lang/String;

    .line 1040
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->i:Z

    .line 1056
    iput-object p1, p0, Lcom/google/b/a/a/m;->j:Ljava/lang/String;

    .line 1057
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->k:Z

    .line 1073
    iput-object p1, p0, Lcom/google/b/a/a/m;->l:Ljava/lang/String;

    .line 1074
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->m:Z

    .line 1090
    iput-object p1, p0, Lcom/google/b/a/a/m;->n:Ljava/lang/String;

    .line 1091
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1168
    if-nez p1, :cond_0

    .line 1169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/google/b/a/a/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a/m;->b:Ljava/util/List;

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/a/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/b/a/a/m;
    .locals 1

    .prologue
    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/m;->E:Z

    .line 1312
    iput-object p1, p0, Lcom/google/b/a/a/m;->F:Ljava/lang/String;

    .line 1313
    return-object p0
.end method
