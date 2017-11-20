.class final Lcom/google/common/collect/oj;
.super Lcom/google/common/collect/ks;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:Lcom/google/common/collect/oj;

.field private g:Lcom/google/common/collect/oj;

.field private h:Lcom/google/common/collect/oj;

.field private i:Lcom/google/common/collect/oj;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 524
    invoke-direct {p0}, Lcom/google/common/collect/ks;-><init>()V

    .line 525
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 526
    iput-object p1, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    .line 527
    iput p2, p0, Lcom/google/common/collect/oj;->b:I

    .line 528
    int-to-long v2, p2

    iput-wide v2, p0, Lcom/google/common/collect/oj;->d:J

    .line 529
    iput v1, p0, Lcom/google/common/collect/oj;->c:I

    .line 530
    iput v1, p0, Lcom/google/common/collect/oj;->e:I

    .line 531
    iput-object v4, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 532
    iput-object v4, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 533
    return-void

    .line 525
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/oj;)I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    return v0
.end method

.method private a()Lcom/google/common/collect/oj;
    .locals 6

    .prologue
    .line 768
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    .line 769
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/oj;->b:I

    .line 770
    iget-object v1, p0, Lcom/google/common/collect/oj;->h:Lcom/google/common/collect/oj;

    iget-object v2, p0, Lcom/google/common/collect/oj;->i:Lcom/google/common/collect/oj;

    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    .line 771
    iget-object v1, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    if-nez v1, :cond_0

    .line 772
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 789
    :goto_0
    return-object v0

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    if-nez v1, :cond_1

    .line 774
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    goto :goto_0

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    iget v1, v1, Lcom/google/common/collect/oj;->e:I

    iget-object v2, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    iget v2, v2, Lcom/google/common/collect/oj;->e:I

    if-lt v1, v2, :cond_2

    .line 776
    iget-object v1, p0, Lcom/google/common/collect/oj;->h:Lcom/google/common/collect/oj;

    .line 778
    iget-object v2, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-direct {v2, v1}, Lcom/google/common/collect/oj;->j(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 779
    iget-object v2, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    iput-object v2, v1, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 780
    iget v2, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/oj;->c:I

    .line 781
    iget-wide v2, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/oj;->d:J

    .line 782
    invoke-direct {v1}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object v0

    goto :goto_0

    .line 784
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/oj;->i:Lcom/google/common/collect/oj;

    .line 785
    iget-object v2, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-direct {v2, v1}, Lcom/google/common/collect/oj;->i(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 786
    iget-object v2, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    iput-object v2, v1, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 787
    iget v2, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/oj;->c:I

    .line 788
    iget-wide v2, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/oj;->d:J

    .line 789
    invoke-direct {v1}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/common/collect/oj;->i:Lcom/google/common/collect/oj;

    return-object p1
.end method

.method static synthetic a(Lcom/google/common/collect/oj;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/oj;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;I)Lcom/google/common/collect/oj;
    .locals 4

    .prologue
    .line 547
    new-instance v0, Lcom/google/common/collect/oj;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/oj;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 548
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    iget-object v1, p0, Lcom/google/common/collect/oj;->i:Lcom/google/common/collect/oj;

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    .line 549
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/collect/oj;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/oj;->e:I

    .line 550
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 551
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 552
    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/oj;)J
    .locals 2

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/common/collect/oj;->h:Lcom/google/common/collect/oj;

    return-object p1
.end method

.method static synthetic b(Lcom/google/common/collect/oj;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 509
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/oj;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;I)Lcom/google/common/collect/oj;
    .locals 4

    .prologue
    .line 556
    new-instance v0, Lcom/google/common/collect/oj;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/oj;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 557
    iget-object v0, p0, Lcom/google/common/collect/oj;->h:Lcom/google/common/collect/oj;

    iget-object v1, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-static {v0, v1, p0}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;Lcom/google/common/collect/oj;)V

    .line 558
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/collect/oj;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/oj;->e:I

    .line 559
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 560
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 561
    return-object p0
.end method

.method private b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 889
    if-gez v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    if-nez v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-object p0

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/oj;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    move-object p0, v0

    goto :goto_0

    .line 891
    :cond_2
    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/oj;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;

    move-result-object v0

    goto :goto_1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/oj;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/oj;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 820
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-static {v2}, Lcom/google/common/collect/oj;->k(Lcom/google/common/collect/oj;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-static {v2}, Lcom/google/common/collect/oj;->k(Lcom/google/common/collect/oj;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 821
    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/oj;)I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    return v0
.end method

.method private c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 901
    if-lez v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    if-nez v0, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-object p0

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/oj;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/oj;

    move-object p0, v0

    goto :goto_0

    .line 903
    :cond_2
    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/oj;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/oj;

    move-result-object v0

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-static {v0}, Lcom/google/common/collect/oj;->l(Lcom/google/common/collect/oj;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-static {v1}, Lcom/google/common/collect/oj;->l(Lcom/google/common/collect/oj;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->e:I

    .line 825
    return-void
.end method

.method static synthetic d(Lcom/google/common/collect/oj;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/google/common/collect/oj;->b()V

    .line 829
    invoke-direct {p0}, Lcom/google/common/collect/oj;->c()V

    .line 830
    return-void
.end method

.method private e()Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/google/common/collect/oj;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 845
    invoke-direct {p0}, Lcom/google/common/collect/oj;->c()V

    .line 846
    :goto_0
    return-object p0

    .line 835
    :sswitch_0
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-direct {v0}, Lcom/google/common/collect/oj;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-direct {v0}, Lcom/google/common/collect/oj;->h()Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 838
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/oj;->g()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 840
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-direct {v0}, Lcom/google/common/collect/oj;->f()I

    move-result v0

    if-gez v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-direct {v0}, Lcom/google/common/collect/oj;->g()Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 843
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/oj;->h()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 833
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic e(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    return-object v0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-static {v0}, Lcom/google/common/collect/oj;->l(Lcom/google/common/collect/oj;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-static {v1}, Lcom/google/common/collect/oj;->l(Lcom/google/common/collect/oj;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic f(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    return-object v0
.end method

.method private g()Lcom/google/common/collect/oj;
    .locals 3

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 856
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 857
    iget-object v1, v0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    iput-object v1, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 858
    iput-object p0, v0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 859
    iget-wide v1, p0, Lcom/google/common/collect/oj;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/oj;->d:J

    .line 860
    iget v1, p0, Lcom/google/common/collect/oj;->c:I

    iput v1, v0, Lcom/google/common/collect/oj;->c:I

    .line 861
    invoke-direct {p0}, Lcom/google/common/collect/oj;->d()V

    .line 862
    invoke-direct {v0}, Lcom/google/common/collect/oj;->c()V

    .line 863
    return-object v0

    .line 855
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/collect/oj;->i:Lcom/google/common/collect/oj;

    return-object v0
.end method

.method private h()Lcom/google/common/collect/oj;
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 868
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 869
    iget-object v1, v0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    iput-object v1, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 870
    iput-object p0, v0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 871
    iget-wide v1, p0, Lcom/google/common/collect/oj;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/oj;->d:J

    .line 872
    iget v1, p0, Lcom/google/common/collect/oj;->c:I

    iput v1, v0, Lcom/google/common/collect/oj;->c:I

    .line 873
    invoke-direct {p0}, Lcom/google/common/collect/oj;->d()V

    .line 874
    invoke-direct {v0}, Lcom/google/common/collect/oj;->c()V

    .line 875
    return-object v0

    .line 867
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/collect/oj;->h:Lcom/google/common/collect/oj;

    return-object v0
.end method

.method private i(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;
    .locals 4

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 801
    :goto_0
    return-object v0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-direct {v0, p1}, Lcom/google/common/collect/oj;->i(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 799
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 800
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    iget v2, p1, Lcom/google/common/collect/oj;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 801
    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object v0

    goto :goto_0
.end method

.method private j(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;
    .locals 4

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 813
    :goto_0
    return-object v0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-direct {v0, p1}, Lcom/google/common/collect/oj;->j(Lcom/google/common/collect/oj;)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 811
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 812
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    iget v2, p1, Lcom/google/common/collect/oj;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 813
    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object v0

    goto :goto_0
.end method

.method private static k(Lcom/google/common/collect/oj;)J
    .locals 2
    .param p0    # Lcom/google/common/collect/oj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 879
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    goto :goto_0
.end method

.method private static l(Lcom/google/common/collect/oj;)I
    .locals 1
    .param p0    # Lcom/google/common/collect/oj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 883
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/oj;->e:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 536
    iget-object v1, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 537
    if-gez v1, :cond_2

    .line 538
    iget-object v1, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    if-nez v1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 539
    :cond_2
    if-lez v1, :cond_3

    .line 540
    iget-object v1, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 542
    :cond_3
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    goto :goto_0
.end method

.method final a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/oj;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 710
    iget-object v0, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 711
    if-gez v0, :cond_5

    .line 712
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 713
    if-nez v0, :cond_1

    .line 714
    aput v6, p5, v6

    .line 715
    if-nez p3, :cond_0

    if-lez p4, :cond_0

    .line 716
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/oj;->b(Ljava/lang/Object;I)Lcom/google/common/collect/oj;

    move-result-object p0

    .line 764
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 721
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 723
    aget v0, p5, v6

    if-ne v0, p3, :cond_3

    .line 724
    if-nez p4, :cond_4

    aget v0, p5, v6

    if-eqz v0, :cond_4

    .line 725
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 729
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    aget v2, p5, v6

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 731
    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 726
    :cond_4
    if-lez p4, :cond_2

    aget v0, p5, v6

    if-nez v0, :cond_2

    .line 727
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    goto :goto_1

    .line 732
    :cond_5
    if-lez v0, :cond_a

    .line 733
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 734
    if-nez v0, :cond_6

    .line 735
    aput v6, p5, v6

    .line 736
    if-nez p3, :cond_0

    if-lez p4, :cond_0

    .line 737
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/oj;->a(Ljava/lang/Object;I)Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    :cond_6
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 742
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 744
    aget v0, p5, v6

    if-ne v0, p3, :cond_8

    .line 745
    if-nez p4, :cond_9

    aget v0, p5, v6

    if-eqz v0, :cond_9

    .line 746
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 750
    :cond_7
    :goto_2
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    aget v2, p5, v6

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 752
    :cond_8
    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 747
    :cond_9
    if-lez p4, :cond_7

    aget v0, p5, v6

    if-nez v0, :cond_7

    .line 748
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    goto :goto_2

    .line 756
    :cond_a
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    aput v0, p5, v6

    .line 757
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    if-ne p3, v0, :cond_0

    .line 758
    if-nez p4, :cond_b

    .line 759
    invoke-direct {p0}, Lcom/google/common/collect/oj;->a()Lcom/google/common/collect/oj;

    move-result-object p0

    goto/16 :goto_0

    .line 761
    :cond_b
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    iget v2, p0, Lcom/google/common/collect/oj;->b:I

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 762
    iput p4, p0, Lcom/google/common/collect/oj;->b:I

    goto/16 :goto_0
.end method

.method final a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 569
    iget-object v1, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 570
    if-gez v1, :cond_3

    .line 571
    iget-object v1, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 572
    if-nez v1, :cond_1

    .line 573
    aput v0, p4, v0

    .line 574
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/oj;->b(Ljava/lang/Object;I)Lcom/google/common/collect/oj;

    move-result-object p0

    .line 606
    :cond_0
    :goto_0
    return-object p0

    .line 576
    :cond_1
    iget v2, v1, Lcom/google/common/collect/oj;->e:I

    .line 578
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 579
    aget v0, p4, v0

    if-nez v0, :cond_2

    .line 580
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 582
    :cond_2
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v3, p3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 583
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    iget v0, v0, Lcom/google/common/collect/oj;->e:I

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 584
    :cond_3
    if-lez v1, :cond_6

    .line 585
    iget-object v1, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 586
    if-nez v1, :cond_4

    .line 587
    aput v0, p4, v0

    .line 588
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/oj;->a(Ljava/lang/Object;I)Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 590
    :cond_4
    iget v2, v1, Lcom/google/common/collect/oj;->e:I

    .line 592
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/common/collect/oj;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 593
    aget v0, p4, v0

    if-nez v0, :cond_5

    .line 594
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 596
    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v3, p3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 597
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    iget v0, v0, Lcom/google/common/collect/oj;->e:I

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 601
    :cond_6
    iget v1, p0, Lcom/google/common/collect/oj;->b:I

    aput v1, p4, v0

    .line 602
    iget v1, p0, Lcom/google/common/collect/oj;->b:I

    int-to-long v1, v1

    int-to-long v3, p3

    add-long/2addr v1, v3

    .line 603
    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 604
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/common/collect/oj;->b:I

    .line 605
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    goto :goto_0
.end method

.method final b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 610
    iget-object v0, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 611
    if-gez v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 613
    if-nez v0, :cond_1

    .line 614
    aput v4, p4, v4

    .line 656
    :cond_0
    :goto_0
    return-object p0

    .line 618
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/oj;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 620
    aget v0, p4, v4

    if-lez v0, :cond_2

    .line 621
    aget v0, p4, v4

    if-lt p3, v0, :cond_3

    .line 622
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 623
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    aget v2, p4, v4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 628
    :cond_2
    :goto_1
    aget v0, p4, v4

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 625
    :cond_3
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    goto :goto_1

    .line 629
    :cond_4
    if-lez v0, :cond_8

    .line 630
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 631
    if-nez v0, :cond_5

    .line 632
    aput v4, p4, v4

    goto :goto_0

    .line 636
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/oj;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 638
    aget v0, p4, v4

    if-lez v0, :cond_6

    .line 639
    aget v0, p4, v4

    if-lt p3, v0, :cond_7

    .line 640
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 641
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    aget v2, p4, v4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 646
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 643
    :cond_7
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    goto :goto_2

    .line 650
    :cond_8
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    aput v0, p4, v4

    .line 651
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    if-lt p3, v0, :cond_9

    .line 652
    invoke-direct {p0}, Lcom/google/common/collect/oj;->a()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 654
    :cond_9
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/common/collect/oj;->b:I

    .line 655
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    goto :goto_0
.end method

.method final c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-object v0, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 662
    if-gez v0, :cond_4

    .line 663
    iget-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 664
    if-nez v0, :cond_1

    .line 665
    aput v2, p4, v2

    .line 666
    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/oj;->b(Ljava/lang/Object;I)Lcom/google/common/collect/oj;

    move-result-object p0

    .line 705
    :cond_0
    :goto_0
    return-object p0

    .line 669
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/oj;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->f:Lcom/google/common/collect/oj;

    .line 671
    if-nez p3, :cond_3

    aget v0, p4, v2

    if-eqz v0, :cond_3

    .line 672
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 677
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    aget v2, p4, v2

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 678
    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 673
    :cond_3
    if-lez p3, :cond_2

    aget v0, p4, v2

    if-nez v0, :cond_2

    .line 674
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    goto :goto_1

    .line 679
    :cond_4
    if-lez v0, :cond_8

    .line 680
    iget-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 681
    if-nez v0, :cond_5

    .line 682
    aput v2, p4, v2

    .line 683
    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/oj;->a(Ljava/lang/Object;I)Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 686
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/oj;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/oj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/oj;->g:Lcom/google/common/collect/oj;

    .line 688
    if-nez p3, :cond_7

    aget v0, p4, v2

    if-eqz v0, :cond_7

    .line 689
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    .line 694
    :cond_6
    :goto_2
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    aget v2, p4, v2

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 695
    invoke-direct {p0}, Lcom/google/common/collect/oj;->e()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 690
    :cond_7
    if-lez p3, :cond_6

    aget v0, p4, v2

    if-nez v0, :cond_6

    .line 691
    iget v0, p0, Lcom/google/common/collect/oj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/oj;->c:I

    goto :goto_2

    .line 699
    :cond_8
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    aput v0, p4, v2

    .line 700
    if-nez p3, :cond_9

    .line 701
    invoke-direct {p0}, Lcom/google/common/collect/oj;->a()Lcom/google/common/collect/oj;

    move-result-object p0

    goto :goto_0

    .line 703
    :cond_9
    iget-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    iget v2, p0, Lcom/google/common/collect/oj;->b:I

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/oj;->d:J

    .line 704
    iput p3, p0, Lcom/google/common/collect/oj;->b:I

    goto/16 :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/google/common/collect/oj;->b:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/common/collect/oj;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/google/common/collect/oj;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/oj;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/kq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
