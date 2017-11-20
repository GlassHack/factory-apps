.class public final Lcom/google/m/b/a/a/p;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/a/a;

.field public b:J

.field public c:Z

.field public d:Lcom/google/m/b/a/a/o;

.field public e:Ljava/lang/String;

.field public f:Lcom/google/m/b/a/a/f;

.field public g:Z

.field public h:Lcom/google/m/b/a/a/i;

.field public i:Z

.field public j:Lcom/google/m/b/a/a/c;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Lcom/google/m/b/a/a/g;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3395
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 3400
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->a:Lcom/google/protobuf/a/a;

    .line 3417
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/m/b/a/a/p;->b:J

    .line 3434
    iput-object v2, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    .line 3454
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->n:Ljava/lang/String;

    .line 3471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->e:Ljava/lang/String;

    .line 3488
    iput-object v2, p0, Lcom/google/m/b/a/a/p;->q:Lcom/google/m/b/a/a/g;

    .line 3508
    iput-object v2, p0, Lcom/google/m/b/a/a/p;->f:Lcom/google/m/b/a/a/f;

    .line 3528
    iput-object v2, p0, Lcom/google/m/b/a/a/p;->h:Lcom/google/m/b/a/a/i;

    .line 3548
    iput-object v2, p0, Lcom/google/m/b/a/a/p;->j:Lcom/google/m/b/a/a/c;

    .line 3568
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/m/b/a/a/p;->t:I

    .line 3636
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/p;->u:I

    .line 3395
    return-void
.end method

.method public static a([B)Lcom/google/m/b/a/a/p;
    .locals 2

    .prologue
    .line 3764
    new-instance v0, Lcom/google/m/b/a/a/p;

    invoke-direct {v0}, Lcom/google/m/b/a/a/p;-><init>()V

    array-length v1, p0

    invoke-super {v0, p0, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/p;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3639
    iget v0, p0, Lcom/google/m/b/a/a/p;->u:I

    if-gez v0, :cond_0

    .line 3641
    invoke-virtual {p0}, Lcom/google/m/b/a/a/p;->b()I

    .line 3643
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/p;->u:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3392
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->k:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->a:Lcom/google/protobuf/a/a;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/m/b/a/a/o;

    invoke-direct {v0}, Lcom/google/m/b/a/a/o;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->c:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/m/b/a/a/f;

    invoke-direct {v0}, Lcom/google/m/b/a/a/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->r:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->f:Lcom/google/m/b/a/a/f;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->m:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->n:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->o:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/m/b/a/a/i;

    invoke-direct {v0}, Lcom/google/m/b/a/a/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->g:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->h:Lcom/google/m/b/a/a/i;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/m/b/a/a/c;

    invoke-direct {v0}, Lcom/google/m/b/a/a/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->i:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->j:Lcom/google/m/b/a/a/c;

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/google/m/b/a/a/g;

    invoke-direct {v0}, Lcom/google/m/b/a/a/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->p:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/p;->q:Lcom/google/m/b/a/a/g;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->l:Z

    iput-wide v0, p0, Lcom/google/m/b/a/a/p;->b:J

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/p;->s:Z

    iput v0, p0, Lcom/google/m/b/a/a/p;->t:I

    goto :goto_0

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
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x318 -> :sswitch_a
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 3604
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->k:Z

    if-eqz v0, :cond_0

    .line 3605
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 3607
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->c:Z

    if-eqz v0, :cond_1

    .line 3608
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 3610
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->r:Z

    if-eqz v0, :cond_2

    .line 3611
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->f:Lcom/google/m/b/a/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 3613
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->m:Z

    if-eqz v0, :cond_3

    .line 3614
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 3616
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->o:Z

    if-eqz v0, :cond_4

    .line 3617
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 3619
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->g:Z

    if-eqz v0, :cond_5

    .line 3620
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->h:Lcom/google/m/b/a/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 3622
    :cond_5
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->i:Z

    if-eqz v0, :cond_6

    .line 3623
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->j:Lcom/google/m/b/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 3625
    :cond_6
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->p:Z

    if-eqz v0, :cond_7

    .line 3626
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->q:Lcom/google/m/b/a/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 3628
    :cond_7
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->l:Z

    if-eqz v0, :cond_8

    .line 3629
    const/16 v0, 0xa

    iget-wide v2, p0, Lcom/google/m/b/a/a/p;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 3631
    :cond_8
    iget-boolean v0, p0, Lcom/google/m/b/a/a/p;->s:Z

    if-eqz v0, :cond_9

    .line 3632
    const/16 v0, 0x63

    iget v1, p0, Lcom/google/m/b/a/a/p;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 3634
    :cond_9
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 3648
    const/4 v0, 0x0

    .line 3649
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->k:Z

    if-eqz v1, :cond_0

    .line 3650
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->a:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3653
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->c:Z

    if-eqz v1, :cond_1

    .line 3654
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3657
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->r:Z

    if-eqz v1, :cond_2

    .line 3658
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/a/p;->f:Lcom/google/m/b/a/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3661
    :cond_2
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->m:Z

    if-eqz v1, :cond_3

    .line 3662
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/m/b/a/a/p;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3665
    :cond_3
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->o:Z

    if-eqz v1, :cond_4

    .line 3666
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/m/b/a/a/p;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3669
    :cond_4
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->g:Z

    if-eqz v1, :cond_5

    .line 3670
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/m/b/a/a/p;->h:Lcom/google/m/b/a/a/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3673
    :cond_5
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->i:Z

    if-eqz v1, :cond_6

    .line 3674
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/m/b/a/a/p;->j:Lcom/google/m/b/a/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3677
    :cond_6
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->p:Z

    if-eqz v1, :cond_7

    .line 3678
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/m/b/a/a/p;->q:Lcom/google/m/b/a/a/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3681
    :cond_7
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->l:Z

    if-eqz v1, :cond_8

    .line 3682
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/m/b/a/a/p;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3685
    :cond_8
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->s:Z

    if-eqz v1, :cond_9

    .line 3686
    const/16 v1, 0x63

    iget v2, p0, Lcom/google/m/b/a/a/p;->t:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3689
    :cond_9
    iput v0, p0, Lcom/google/m/b/a/a/p;->u:I

    .line 3690
    return v0
.end method
