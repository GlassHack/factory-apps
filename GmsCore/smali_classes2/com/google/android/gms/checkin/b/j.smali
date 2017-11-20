.class public final Lcom/google/android/gms/checkin/b/j;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/checkin/b/i;

.field private b:Z

.field private c:Z

.field private d:Lcom/google/android/gms/checkin/b/o;

.field private e:Z

.field private f:Lcom/google/android/gms/checkin/b/p;

.field private g:Z

.field private h:J

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I

.field private t:Z

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1098
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1103
    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->a:Lcom/google/android/gms/checkin/b/i;

    .line 1123
    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->d:Lcom/google/android/gms/checkin/b/o;

    .line 1143
    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->f:Lcom/google/android/gms/checkin/b/p;

    .line 1163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/checkin/b/j;->h:J

    .line 1179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->i:Ljava/util/List;

    .line 1212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->j:Ljava/util/List;

    .line 1245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->k:Ljava/util/List;

    .line 1279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->m:Ljava/lang/String;

    .line 1296
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->o:Ljava/lang/String;

    .line 1313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->q:Ljava/lang/String;

    .line 1330
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/checkin/b/j;->s:I

    .line 1347
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/j;->u:I

    .line 1429
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/j;->v:I

    .line 1098
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1432
    iget v0, p0, Lcom/google/android/gms/checkin/b/j;->v:I

    if-gez v0, :cond_0

    .line 1434
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/j;->b()I

    .line 1436
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/j;->v:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/checkin/b/j;
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->r:Z

    .line 1335
    iput p1, p0, Lcom/google/android/gms/checkin/b/j;->s:I

    .line 1336
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/checkin/b/j;
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->g:Z

    .line 1168
    iput-wide p1, p0, Lcom/google/android/gms/checkin/b/j;->h:J

    .line 1169
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/checkin/b/i;)Lcom/google/android/gms/checkin/b/j;
    .locals 1

    .prologue
    .line 1107
    if-nez p1, :cond_0

    .line 1108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->b:Z

    .line 1111
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/j;->a:Lcom/google/android/gms/checkin/b/i;

    .line 1112
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/checkin/b/k;)Lcom/google/android/gms/checkin/b/j;
    .locals 1

    .prologue
    .line 1229
    if-nez p1, :cond_0

    .line 1230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->j:Ljava/util/List;

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;
    .locals 1

    .prologue
    .line 1196
    if-nez p1, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->i:Ljava/util/List;

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1095
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
    new-instance v0, Lcom/google/android/gms/checkin/b/i;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/j;->a(Lcom/google/android/gms/checkin/b/i;)Lcom/google/android/gms/checkin/b/j;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/checkin/b/j;->a(J)Lcom/google/android/gms/checkin/b/j;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/android/gms/checkin/b/k;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/j;->a(Lcom/google/android/gms/checkin/b/k;)Lcom/google/android/gms/checkin/b/j;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/android/gms/checkin/b/n;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/n;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/checkin/b/j;->k:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/j;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/j;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/j;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/j;->d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/j;->a(I)Lcom/google/android/gms/checkin/b/j;

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/google/android/gms/checkin/b/p;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/p;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/j;->e:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->f:Lcom/google/android/gms/checkin/b/p;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/j;->t:Z

    iput v0, p0, Lcom/google/android/gms/checkin/b/j;->u:I

    goto/16 :goto_0

    :sswitch_c
    new-instance v0, Lcom/google/android/gms/checkin/b/o;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/o;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/j;->c:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/j;->d:Lcom/google/android/gms/checkin/b/o;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x5a -> :sswitch_a
        0x60 -> :sswitch_b
        0x6a -> :sswitch_c
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->b:Z

    if-eqz v0, :cond_0

    .line 1392
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->a:Lcom/google/android/gms/checkin/b/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1394
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->g:Z

    if-eqz v0, :cond_1

    .line 1395
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/j;->h:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/k;

    .line 1398
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 1400
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/n;

    .line 1401
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_1

    .line 1403
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1404
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 1406
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->l:Z

    if-eqz v0, :cond_5

    .line 1407
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1409
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->n:Z

    if-eqz v0, :cond_6

    .line 1410
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1412
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->p:Z

    if-eqz v0, :cond_7

    .line 1413
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1415
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->r:Z

    if-eqz v0, :cond_8

    .line 1416
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/gms/checkin/b/j;->s:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1418
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->e:Z

    if-eqz v0, :cond_9

    .line 1419
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->f:Lcom/google/android/gms/checkin/b/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1421
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->t:Z

    if-eqz v0, :cond_a

    .line 1422
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/checkin/b/j;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1424
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->c:Z

    if-eqz v0, :cond_b

    .line 1425
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->d:Lcom/google/android/gms/checkin/b/o;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1427
    :cond_b
    return-void
.end method

.method public final b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1441
    .line 1442
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->b:Z

    if-eqz v0, :cond_b

    .line 1443
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/j;->a:Lcom/google/android/gms/checkin/b/i;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1446
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/j;->g:Z

    if-eqz v2, :cond_0

    .line 1447
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/checkin/b/j;->h:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1450
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/j;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/k;

    .line 1451
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 1453
    goto :goto_1

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/n;

    .line 1455
    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1457
    goto :goto_2

    .line 1460
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/j;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1461
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1463
    goto :goto_3

    .line 1464
    :cond_3
    add-int v0, v2, v1

    .line 1465
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/j;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1467
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/j;->l:Z

    if-eqz v1, :cond_4

    .line 1468
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/j;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1471
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/j;->n:Z

    if-eqz v1, :cond_5

    .line 1472
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/j;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1475
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/j;->p:Z

    if-eqz v1, :cond_6

    .line 1476
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/j;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1479
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/j;->r:Z

    if-eqz v1, :cond_7

    .line 1480
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/checkin/b/j;->s:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1483
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/j;->e:Z

    if-eqz v1, :cond_8

    .line 1484
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/j;->f:Lcom/google/android/gms/checkin/b/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1487
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/j;->t:Z

    if-eqz v1, :cond_9

    .line 1488
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/checkin/b/j;->u:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1491
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/j;->c:Z

    if-eqz v1, :cond_a

    .line 1492
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/j;->d:Lcom/google/android/gms/checkin/b/o;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1495
    :cond_a
    iput v0, p0, Lcom/google/android/gms/checkin/b/j;->v:I

    .line 1496
    return v0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;
    .locals 1

    .prologue
    .line 1283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->l:Z

    .line 1284
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/j;->m:Ljava/lang/String;

    .line 1285
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;
    .locals 1

    .prologue
    .line 1300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->n:Z

    .line 1301
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/j;->o:Ljava/lang/String;

    .line 1302
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/j;
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/j;->p:Z

    .line 1318
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/j;->q:Ljava/lang/String;

    .line 1319
    return-object p0
.end method
