.class public final Lcom/google/m/b/a/a/j;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private A:Lcom/google/m/b/a/a/l;

.field private B:Z

.field private C:Lcom/google/m/b/a/a/l;

.field private D:Z

.field private E:Lcom/google/m/b/a/a/l;

.field private F:Z

.field private G:Lcom/google/m/b/a/a/l;

.field private H:Z

.field private I:Lcom/google/m/b/a/a/l;

.field private J:Z

.field private K:Lcom/google/m/b/a/a/l;

.field private L:Z

.field private M:Lcom/google/m/b/a/a/l;

.field private N:Z

.field private O:Lcom/google/protobuf/a/a;

.field private P:I

.field public a:Z

.field public b:I

.field public c:Ljava/util/List;

.field private d:Z

.field private e:Lcom/google/m/b/a/a/l;

.field private f:Z

.field private g:Lcom/google/m/b/a/a/l;

.field private h:Z

.field private i:Lcom/google/m/b/a/a/l;

.field private j:Z

.field private k:Lcom/google/m/b/a/a/l;

.field private l:Z

.field private m:Lcom/google/m/b/a/a/l;

.field private n:Z

.field private o:Lcom/google/m/b/a/a/l;

.field private p:Z

.field private q:Lcom/google/m/b/a/a/l;

.field private r:Z

.field private s:Lcom/google/m/b/a/a/l;

.field private t:Z

.field private u:Lcom/google/m/b/a/a/l;

.field private v:Z

.field private w:Lcom/google/m/b/a/a/l;

.field private x:Z

.field private y:Lcom/google/m/b/a/a/l;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 907
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 912
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->e:Lcom/google/m/b/a/a/l;

    .line 932
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/m/b/a/a/j;->b:I

    .line 948
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    .line 976
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->g:Lcom/google/m/b/a/a/l;

    .line 996
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->i:Lcom/google/m/b/a/a/l;

    .line 1016
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->k:Lcom/google/m/b/a/a/l;

    .line 1036
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->m:Lcom/google/m/b/a/a/l;

    .line 1056
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->o:Lcom/google/m/b/a/a/l;

    .line 1076
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->q:Lcom/google/m/b/a/a/l;

    .line 1096
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->s:Lcom/google/m/b/a/a/l;

    .line 1116
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->u:Lcom/google/m/b/a/a/l;

    .line 1136
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->w:Lcom/google/m/b/a/a/l;

    .line 1156
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->y:Lcom/google/m/b/a/a/l;

    .line 1176
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->A:Lcom/google/m/b/a/a/l;

    .line 1196
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->C:Lcom/google/m/b/a/a/l;

    .line 1216
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->E:Lcom/google/m/b/a/a/l;

    .line 1236
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->G:Lcom/google/m/b/a/a/l;

    .line 1256
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->I:Lcom/google/m/b/a/a/l;

    .line 1276
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->K:Lcom/google/m/b/a/a/l;

    .line 1296
    iput-object v1, p0, Lcom/google/m/b/a/a/j;->M:Lcom/google/m/b/a/a/l;

    .line 1316
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->O:Lcom/google/protobuf/a/a;

    .line 1428
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/j;->P:I

    .line 907
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1431
    iget v0, p0, Lcom/google/m/b/a/a/j;->P:I

    if-gez v0, :cond_0

    .line 1433
    invoke-virtual {p0}, Lcom/google/m/b/a/a/j;->b()I

    .line 1435
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/j;->P:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 904
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
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->d:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->e:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->a:Z

    iput v0, p0, Lcom/google/m/b/a/a/j;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->f:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->g:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->h:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->i:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->j:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->k:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->l:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->m:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->n:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->o:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->p:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->q:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->r:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->s:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_b
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->t:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->u:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_c
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->v:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->w:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->x:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->y:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_e
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->z:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->A:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->B:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->C:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->D:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->E:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->F:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->G:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->H:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->I:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_13
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->J:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->K:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->L:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->M:Lcom/google/m/b/a/a/l;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/j;->N:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/j;->O:Lcom/google/protobuf/a/a;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0x1f42 -> :sswitch_15
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->d:Z

    if-eqz v0, :cond_0

    .line 1364
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->e:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1366
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->a:Z

    if-eqz v0, :cond_1

    .line 1367
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/m/b/a/a/j;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1370
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(II)V

    goto :goto_0

    .line 1372
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->f:Z

    if-eqz v0, :cond_3

    .line 1373
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->g:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1375
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->h:Z

    if-eqz v0, :cond_4

    .line 1376
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->i:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1378
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->j:Z

    if-eqz v0, :cond_5

    .line 1379
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->k:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1381
    :cond_5
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->l:Z

    if-eqz v0, :cond_6

    .line 1382
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->m:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1384
    :cond_6
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->n:Z

    if-eqz v0, :cond_7

    .line 1385
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->o:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1387
    :cond_7
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->p:Z

    if-eqz v0, :cond_8

    .line 1388
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->q:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1390
    :cond_8
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->r:Z

    if-eqz v0, :cond_9

    .line 1391
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->s:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1393
    :cond_9
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->t:Z

    if-eqz v0, :cond_a

    .line 1394
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->u:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1396
    :cond_a
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->v:Z

    if-eqz v0, :cond_b

    .line 1397
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->w:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1399
    :cond_b
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->x:Z

    if-eqz v0, :cond_c

    .line 1400
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->y:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1402
    :cond_c
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->z:Z

    if-eqz v0, :cond_d

    .line 1403
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->A:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1405
    :cond_d
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->B:Z

    if-eqz v0, :cond_e

    .line 1406
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->C:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1408
    :cond_e
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->D:Z

    if-eqz v0, :cond_f

    .line 1409
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->E:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1411
    :cond_f
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->F:Z

    if-eqz v0, :cond_10

    .line 1412
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->G:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1414
    :cond_10
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->H:Z

    if-eqz v0, :cond_11

    .line 1415
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->I:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1417
    :cond_11
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->J:Z

    if-eqz v0, :cond_12

    .line 1418
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->K:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1420
    :cond_12
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->L:Z

    if-eqz v0, :cond_13

    .line 1421
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->M:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1423
    :cond_13
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->N:Z

    if-eqz v0, :cond_14

    .line 1424
    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/google/m/b/a/a/j;->O:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 1426
    :cond_14
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1440
    .line 1441
    iget-boolean v0, p0, Lcom/google/m/b/a/a/j;->d:Z

    if-eqz v0, :cond_14

    .line 1442
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->e:Lcom/google/m/b/a/a/l;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1445
    :goto_0
    iget-boolean v2, p0, Lcom/google/m/b/a/a/j;->a:Z

    if-eqz v2, :cond_13

    .line 1446
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/m/b/a/a/j;->b:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 1451
    :goto_1
    iget-object v0, p0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1452
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 1454
    goto :goto_2

    .line 1455
    :cond_0
    add-int v0, v2, v1

    .line 1456
    iget-object v1, p0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1458
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->f:Z

    if-eqz v1, :cond_1

    .line 1459
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->g:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1462
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->h:Z

    if-eqz v1, :cond_2

    .line 1463
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->i:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1466
    :cond_2
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->j:Z

    if-eqz v1, :cond_3

    .line 1467
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->k:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1470
    :cond_3
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->l:Z

    if-eqz v1, :cond_4

    .line 1471
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->m:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_4
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->n:Z

    if-eqz v1, :cond_5

    .line 1475
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->o:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_5
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->p:Z

    if-eqz v1, :cond_6

    .line 1479
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->q:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1482
    :cond_6
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->r:Z

    if-eqz v1, :cond_7

    .line 1483
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->s:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1486
    :cond_7
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->t:Z

    if-eqz v1, :cond_8

    .line 1487
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->u:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1490
    :cond_8
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->v:Z

    if-eqz v1, :cond_9

    .line 1491
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->w:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1494
    :cond_9
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->x:Z

    if-eqz v1, :cond_a

    .line 1495
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->y:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1498
    :cond_a
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->z:Z

    if-eqz v1, :cond_b

    .line 1499
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->A:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1502
    :cond_b
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->B:Z

    if-eqz v1, :cond_c

    .line 1503
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->C:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1506
    :cond_c
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->D:Z

    if-eqz v1, :cond_d

    .line 1507
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->E:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1510
    :cond_d
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->F:Z

    if-eqz v1, :cond_e

    .line 1511
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->G:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1514
    :cond_e
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->H:Z

    if-eqz v1, :cond_f

    .line 1515
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->I:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1518
    :cond_f
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->J:Z

    if-eqz v1, :cond_10

    .line 1519
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->K:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1522
    :cond_10
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->L:Z

    if-eqz v1, :cond_11

    .line 1523
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->M:Lcom/google/m/b/a/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1526
    :cond_11
    iget-boolean v1, p0, Lcom/google/m/b/a/a/j;->N:Z

    if-eqz v1, :cond_12

    .line 1527
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/google/m/b/a/a/j;->O:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1530
    :cond_12
    iput v0, p0, Lcom/google/m/b/a/a/j;->P:I

    .line 1531
    return v0

    :cond_13
    move v2, v0

    goto/16 :goto_1

    :cond_14
    move v0, v1

    goto/16 :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
