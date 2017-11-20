.class public final Lcom/google/android/gms/checkin/b/b;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:J

.field private F:Z

.field private G:I

.field private H:Ljava/util/List;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:I

.field private O:Z

.field private P:Lcom/google/android/gms/checkin/b/e;

.field private Q:Z

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:I

.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Lcom/google/android/gms/checkin/b/j;

.field public l:Ljava/util/List;

.field public m:Lcom/google/android/gms/checkin/b/g;

.field public n:I

.field private o:Z

.field private p:J

.field private q:Z

.field private r:J

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->b:Ljava/lang/String;

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->d:Ljava/lang/String;

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->f:Ljava/util/List;

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->h:Ljava/lang/String;

    .line 386
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->j:Ljava/lang/String;

    .line 403
    iput-wide v4, p0, Lcom/google/android/gms/checkin/b/b;->p:J

    .line 420
    iput-wide v4, p0, Lcom/google/android/gms/checkin/b/b;->r:J

    .line 437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->t:Ljava/lang/String;

    .line 454
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->v:Ljava/lang/String;

    .line 471
    iput-object v2, p0, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    .line 491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->y:Ljava/lang/String;

    .line 508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->A:Ljava/lang/String;

    .line 524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->l:Ljava/util/List;

    .line 558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->C:Ljava/lang/String;

    .line 575
    iput-wide v4, p0, Lcom/google/android/gms/checkin/b/b;->E:J

    .line 592
    iput v1, p0, Lcom/google/android/gms/checkin/b/b;->G:I

    .line 608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->H:Ljava/util/List;

    .line 642
    iput-object v2, p0, Lcom/google/android/gms/checkin/b/b;->m:Lcom/google/android/gms/checkin/b/g;

    .line 662
    iput v1, p0, Lcom/google/android/gms/checkin/b/b;->n:I

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->L:Ljava/lang/String;

    .line 696
    iput v1, p0, Lcom/google/android/gms/checkin/b/b;->N:I

    .line 713
    iput-object v2, p0, Lcom/google/android/gms/checkin/b/b;->P:Lcom/google/android/gms/checkin/b/e;

    .line 733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->R:Ljava/lang/String;

    .line 750
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->T:Ljava/lang/String;

    .line 883
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/b;->U:I

    .line 264
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lcom/google/android/gms/checkin/b/b;->U:I

    if-gez v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/b;->b()I

    .line 890
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/b;->U:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->F:Z

    .line 597
    iput p1, p0, Lcom/google/android/gms/checkin/b/b;->G:I

    .line 598
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->o:Z

    .line 408
    iput-wide p1, p0, Lcom/google/android/gms/checkin/b/b;->p:J

    .line 409
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/checkin/b/e;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 720
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->O:Z

    .line 721
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->P:Lcom/google/android/gms/checkin/b/e;

    .line 722
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/checkin/b/g;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 649
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->I:Z

    .line 650
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->m:Lcom/google/android/gms/checkin/b/g;

    .line 651
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/checkin/b/j;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->w:Z

    .line 479
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    .line 480
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->c:Z

    .line 291
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->d:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
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

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->a:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/checkin/b/b;->a(J)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->f(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/android/gms/checkin/b/j;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/j;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->a(Lcom/google/android/gms/checkin/b/j;)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->x:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->y:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->g(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/checkin/b/b;->b(J)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->z:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->A:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->h(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->i(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/checkin/b/b;->c(J)Lcom/google/android/gms/checkin/b/b;

    goto :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->a(I)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lcom/google/android/gms/checkin/b/g;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->a(Lcom/google/android/gms/checkin/b/g;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->b(I)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->K:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->L:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->c(I)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_17
    new-instance v0, Lcom/google/android/gms/checkin/b/e;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->a(Lcom/google/android/gms/checkin/b/e;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->k(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/b;->l(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;

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
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x69 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb0 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->a:Z

    if-eqz v0, :cond_0

    .line 807
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 809
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->o:Z

    if-eqz v0, :cond_1

    .line 810
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/b;->p:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 812
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->s:Z

    if-eqz v0, :cond_2

    .line 813
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 815
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->w:Z

    if-eqz v0, :cond_3

    .line 816
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 818
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->x:Z

    if-eqz v0, :cond_4

    .line 819
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 821
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->u:Z

    if-eqz v0, :cond_5

    .line 822
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 824
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->q:Z

    if-eqz v0, :cond_6

    .line 825
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/b;->r:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 827
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->z:Z

    if-eqz v0, :cond_7

    .line 828
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 830
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 831
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->c:Z

    if-eqz v0, :cond_9

    .line 834
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 836
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 837
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 839
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->B:Z

    if-eqz v0, :cond_b

    .line 840
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 842
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->D:Z

    if-eqz v0, :cond_c

    .line 843
    const/16 v0, 0xd

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/b;->E:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->b(IJ)V

    .line 845
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->F:Z

    if-eqz v0, :cond_d

    .line 846
    const/16 v0, 0xe

    iget v1, p0, Lcom/google/android/gms/checkin/b/b;->G:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 848
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 849
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 851
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->g:Z

    if-eqz v0, :cond_f

    .line 852
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 854
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->i:Z

    if-eqz v0, :cond_10

    .line 855
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 857
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->I:Z

    if-eqz v0, :cond_11

    .line 858
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->m:Lcom/google/android/gms/checkin/b/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 860
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 861
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 863
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->J:Z

    if-eqz v0, :cond_13

    .line 864
    const/16 v0, 0x14

    iget v1, p0, Lcom/google/android/gms/checkin/b/b;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 866
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->K:Z

    if-eqz v0, :cond_14

    .line 867
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->L:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 869
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->M:Z

    if-eqz v0, :cond_15

    .line 870
    const/16 v0, 0x16

    iget v1, p0, Lcom/google/android/gms/checkin/b/b;->N:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 872
    :cond_15
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->O:Z

    if-eqz v0, :cond_16

    .line 873
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->P:Lcom/google/android/gms/checkin/b/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 875
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->Q:Z

    if-eqz v0, :cond_17

    .line 876
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->R:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 878
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->S:Z

    if-eqz v0, :cond_18

    .line 879
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 881
    :cond_18
    return-void
.end method

.method public final b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 895
    .line 896
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->a:Z

    if-eqz v0, :cond_18

    .line 897
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/b;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 900
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->o:Z

    if-eqz v2, :cond_0

    .line 901
    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/checkin/b/b;->p:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 904
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->s:Z

    if-eqz v2, :cond_1

    .line 905
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->t:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 908
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->w:Z

    if-eqz v2, :cond_2

    .line 909
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->k:Lcom/google/android/gms/checkin/b/j;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v2

    add-int/2addr v0, v2

    .line 912
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->x:Z

    if-eqz v2, :cond_3

    .line 913
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->y:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 916
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->u:Z

    if-eqz v2, :cond_4

    .line 917
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->v:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 920
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->q:Z

    if-eqz v2, :cond_5

    .line 921
    const/4 v2, 0x7

    iget-wide v4, p0, Lcom/google/android/gms/checkin/b/b;->r:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 924
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->z:Z

    if-eqz v2, :cond_17

    .line 925
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->A:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 930
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 931
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 933
    goto :goto_2

    .line 934
    :cond_6
    add-int v0, v2, v3

    .line 935
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 937
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->c:Z

    if-eqz v2, :cond_16

    .line 938
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 943
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 944
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 946
    goto :goto_4

    .line 947
    :cond_7
    add-int v0, v2, v3

    .line 948
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/b;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 950
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->B:Z

    if-eqz v2, :cond_8

    .line 951
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->C:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 954
    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->D:Z

    if-eqz v2, :cond_9

    .line 955
    const/16 v2, 0xd

    iget-wide v4, p0, Lcom/google/android/gms/checkin/b/b;->E:J

    invoke-static {v2}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 958
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->F:Z

    if-eqz v2, :cond_15

    .line 959
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/android/gms/checkin/b/b;->G:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 964
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 965
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 967
    goto :goto_6

    .line 968
    :cond_a
    add-int v0, v2, v3

    .line 969
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/b;->H:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 971
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->g:Z

    if-eqz v2, :cond_b

    .line 972
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 975
    :cond_b
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->i:Z

    if-eqz v2, :cond_c

    .line 976
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 979
    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/b;->I:Z

    if-eqz v2, :cond_14

    .line 980
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/checkin/b/b;->m:Lcom/google/android/gms/checkin/b/g;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 985
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 986
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 988
    goto :goto_8

    .line 989
    :cond_d
    add-int v0, v2, v1

    .line 990
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 992
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/b;->J:Z

    if-eqz v1, :cond_e

    .line 993
    const/16 v1, 0x14

    iget v2, p0, Lcom/google/android/gms/checkin/b/b;->n:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/b;->K:Z

    if-eqz v1, :cond_f

    .line 997
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/b;->L:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/b;->M:Z

    if-eqz v1, :cond_10

    .line 1001
    const/16 v1, 0x16

    iget v2, p0, Lcom/google/android/gms/checkin/b/b;->N:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    :cond_10
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/b;->O:Z

    if-eqz v1, :cond_11

    .line 1005
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/b;->P:Lcom/google/android/gms/checkin/b/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_11
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/b;->Q:Z

    if-eqz v1, :cond_12

    .line 1009
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/b;->R:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1012
    :cond_12
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/b;->S:Z

    if-eqz v1, :cond_13

    .line 1013
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/b;->T:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1016
    :cond_13
    iput v0, p0, Lcom/google/android/gms/checkin/b/b;->U:I

    .line 1017
    return v0

    :cond_14
    move v2, v0

    goto :goto_7

    :cond_15
    move v2, v0

    goto/16 :goto_5

    :cond_16
    move v2, v0

    goto/16 :goto_3

    :cond_17
    move v2, v0

    goto/16 :goto_1

    :cond_18
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b(I)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->J:Z

    .line 667
    iput p1, p0, Lcom/google/android/gms/checkin/b/b;->n:I

    .line 668
    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->q:Z

    .line 425
    iput-wide p1, p0, Lcom/google/android/gms/checkin/b/b;->r:J

    .line 426
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->M:Z

    .line 701
    iput p1, p0, Lcom/google/android/gms/checkin/b/b;->N:I

    .line 702
    return-object p0
.end method

.method public final c(J)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->D:Z

    .line 580
    iput-wide p1, p0, Lcom/google/android/gms/checkin/b/b;->E:J

    .line 581
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->f:Ljava/util/List;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->g:Z

    .line 374
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->h:Ljava/lang/String;

    .line 375
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->i:Z

    .line 391
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->j:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->s:Z

    .line 442
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->t:Ljava/lang/String;

    .line 443
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->u:Z

    .line 459
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->v:Ljava/lang/String;

    .line 460
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->l:Ljava/util/List;

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->B:Z

    .line 563
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->C:Ljava/lang/String;

    .line 564
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/b;->H:Ljava/util/List;

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/b;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->Q:Z

    .line 738
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->R:Ljava/lang/String;

    .line 739
    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/b;
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/b;->S:Z

    .line 755
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/b;->T:Ljava/lang/String;

    .line 756
    return-object p0
.end method
