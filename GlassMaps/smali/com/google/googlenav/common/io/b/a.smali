.class public final Lcom/google/googlenav/common/io/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:Ljava/lang/Boolean;

.field public static final c:[B

.field private static final h:Lcom/google/googlenav/common/io/b/c;


# instance fields
.field private d:Lcom/google/googlenav/common/io/b/d;

.field private final e:Lcom/google/googlenav/common/e/c;

.field private f:Lcom/google/googlenav/common/e/c;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/googlenav/common/io/b/a;->a:Ljava/lang/Boolean;

    .line 54
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/googlenav/common/io/b/a;->b:Ljava/lang/Boolean;

    .line 55
    new-array v0, v2, [B

    sput-object v0, Lcom/google/googlenav/common/io/b/a;->c:[B

    .line 412
    new-instance v0, Lcom/google/googlenav/common/io/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/c;-><init>(Lcom/google/googlenav/common/io/b/b;)V

    sput-object v0, Lcom/google/googlenav/common/io/b/a;->h:Lcom/google/googlenav/common/io/b/c;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/b/d;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/googlenav/common/io/b/a;->g:I

    .line 97
    iput-object p1, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    .line 98
    new-instance v0, Lcom/google/googlenav/common/e/c;

    invoke-direct {v0}, Lcom/google/googlenav/common/e/c;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    .line 99
    return-void
.end method

.method private a(IIZ)I
    .locals 5

    .prologue
    .line 698
    shl-int/lit8 v0, p1, 0x3

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/b/a;->a(J)I

    move-result v2

    .line 700
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/b/a;->n(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 717
    :pswitch_0
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v0

    .line 721
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    .line 722
    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    .line 729
    :goto_0
    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/b/a;->a(J)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_1
    return v0

    .line 702
    :pswitch_1
    add-int/lit8 v0, v2, 0x4

    goto :goto_1

    .line 704
    :pswitch_2
    add-int/lit8 v0, v2, 0x8

    goto :goto_1

    .line 706
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->d(II)J

    move-result-wide v0

    .line 707
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/b/a;->l(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(J)J

    move-result-wide v0

    .line 710
    :cond_0
    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/b/a;->a(J)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1

    .line 713
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-direct {v0, p3}, Lcom/google/googlenav/common/io/b/a;->a(Z)I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 723
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 724
    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/google/googlenav/common/io/p;->a(Ljava/lang/String;[BI)I

    move-result v0

    goto :goto_0

    .line 726
    :cond_2
    check-cast v0, Lcom/google/googlenav/common/io/b/a;

    invoke-direct {v0, p3}, Lcom/google/googlenav/common/io/b/a;->a(Z)I

    move-result v0

    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(ILcom/google/googlenav/common/io/l;)I
    .locals 15

    .prologue
    .line 834
    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v8

    .line 835
    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/common/io/b/a;->n(I)I

    move-result v9

    .line 836
    shl-int/lit8 v1, p1, 0x3

    or-int v10, v1, v9

    .line 839
    const/4 v2, 0x0

    .line 841
    const/4 v1, 0x0

    move v7, v1

    move v1, v2

    :goto_0
    if-ge v7, v8, :cond_6

    .line 842
    int-to-long v2, v10

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    move-result v2

    add-int v4, v1, v2

    .line 843
    const/4 v3, 0x0

    .line 844
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/common/io/l;->b()I

    move-result v11

    .line 845
    packed-switch v9, :pswitch_data_0

    .line 898
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 848
    :pswitch_1
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 849
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 850
    const/4 v1, 0x5

    if-ne v9, v1, :cond_0

    const/4 v1, 0x4

    .line 851
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_1

    .line 852
    const-wide/16 v12, 0xff

    and-long/2addr v12, v5

    long-to-int v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/googlenav/common/io/l;->write(I)V

    .line 853
    const/16 v12, 0x8

    shr-long/2addr v5, v12

    .line 851
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 850
    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    move v2, v3

    move v1, v4

    .line 900
    :goto_3
    if-nez v2, :cond_2

    .line 901
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/common/io/l;->b()I

    move-result v2

    sub-int/2addr v2, v11

    add-int/2addr v1, v2

    .line 841
    :cond_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 858
    :pswitch_2
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 859
    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/common/io/b/a;->l(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 860
    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/b/a;->b(J)J

    move-result-wide v1

    .line 862
    :cond_3
    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    move v2, v3

    move v1, v4

    .line 863
    goto :goto_3

    .line 867
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/common/io/b/a;->k(I)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_4

    const/16 v1, 0x10

    .line 866
    :goto_4
    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v1

    .line 871
    instance-of v2, v1, [B

    if-eqz v2, :cond_5

    .line 872
    check-cast v1, [B

    check-cast v1, [B

    .line 873
    array-length v2, v1

    int-to-long v5, v2

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    .line 874
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/l;->write([B)V

    move v2, v3

    move v1, v4

    .line 875
    goto :goto_3

    .line 867
    :cond_4
    const/16 v1, 0x19

    goto :goto_4

    .line 876
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/common/io/l;->b()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/l;->b(I)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/common/io/l;->a()I

    move-result v2

    .line 879
    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/l;->b(I)V

    .line 880
    check-cast v1, Lcom/google/googlenav/common/io/b/a;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;->a(Lcom/google/googlenav/common/io/l;)I

    move-result v1

    .line 882
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/l;->a(II)V

    .line 884
    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/google/googlenav/common/io/b/a;->a(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v4, v1

    .line 885
    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    .line 887
    goto/16 :goto_3

    .line 891
    :pswitch_4
    const/16 v1, 0x1a

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/common/io/b/a;

    .line 892
    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;->a(Lcom/google/googlenav/common/io/l;)I

    move-result v1

    add-int/2addr v1, v4

    .line 893
    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    move-result v2

    add-int/2addr v2, v1

    .line 894
    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    .line 895
    goto/16 :goto_3

    .line 904
    :cond_6
    return v1

    .line 845
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(J)I
    .locals 3

    .prologue
    .line 737
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 738
    const/16 v0, 0xa

    .line 745
    :cond_0
    return v0

    .line 740
    :cond_1
    const/4 v0, 0x1

    .line 741
    :goto_0
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    .line 742
    add-int/lit8 v0, v0, 0x1

    .line 743
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/common/io/l;)I
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e/c;->a()Lcom/google/googlenav/common/e/d;

    move-result-object v1

    .line 816
    const/4 v0, 0x0

    .line 817
    :goto_0
    invoke-virtual {v1}, Lcom/google/googlenav/common/e/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    invoke-virtual {v1}, Lcom/google/googlenav/common/e/d;->b()I

    move-result v2

    .line 819
    invoke-direct {p0, v2, p1}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/l;)I

    move-result v2

    add-int/2addr v0, v2

    .line 820
    goto :goto_0

    .line 821
    :cond_0
    return v0
.end method

.method private a(Ljava/io/InputStream;IZLcom/google/googlenav/common/io/b/c;)I
    .locals 10

    .prologue
    .line 446
    if-eqz p3, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/google/googlenav/common/io/b/a;->e()V

    :cond_0
    move v0, p2

    .line 449
    :goto_0
    if-lez v0, :cond_1

    .line 450
    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/b/c;)J

    move-result-wide v3

    .line 452
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    .line 533
    :cond_1
    :goto_1
    if-gez v0, :cond_d

    .line 534
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 455
    :cond_2
    iget v1, p4, Lcom/google/googlenav/common/io/b/c;->a:I

    sub-int v2, v0, v1

    .line 456
    long-to-int v0, v3

    and-int/lit8 v0, v0, 0x7

    .line 457
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    move v0, v2

    .line 458
    goto :goto_1

    .line 460
    :cond_3
    const/4 v1, 0x3

    ushr-long/2addr v3, v1

    long-to-int v6, v3

    .line 462
    invoke-direct {p0, v6}, Lcom/google/googlenav/common/io/b/a;->k(I)I

    move-result v1

    .line 463
    const/16 v3, 0x10

    if-ne v1, v3, :cond_5

    .line 464
    iget-object v1, p0, Lcom/google/googlenav/common/io/b/a;->f:Lcom/google/googlenav/common/e/c;

    if-nez v1, :cond_4

    .line 465
    new-instance v1, Lcom/google/googlenav/common/e/c;

    invoke-direct {v1}, Lcom/google/googlenav/common/e/c;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/common/io/b/a;->f:Lcom/google/googlenav/common/e/c;

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/google/googlenav/common/io/b/a;->f:Lcom/google/googlenav/common/e/c;

    invoke-static {v0}, Lcom/google/googlenav/common/e/e;->a(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/google/googlenav/common/e/c;->a(ILjava/lang/Object;)V

    .line 468
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 527
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown wire type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", reading garbage data?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/b/c;)J

    move-result-wide v0

    .line 476
    iget v3, p4, Lcom/google/googlenav/common/io/b/c;->a:I

    sub-int/2addr v2, v3

    .line 477
    invoke-direct {p0, v6}, Lcom/google/googlenav/common/io/b/a;->l(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 478
    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/b/a;->c(J)J

    move-result-wide v0

    .line 480
    :cond_6
    invoke-static {v0, v1}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v0

    move v1, v2

    .line 530
    :cond_7
    :goto_2
    invoke-direct {p0, v6, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/Object;)V

    move v0, v1

    .line 531
    goto :goto_0

    .line 486
    :pswitch_2
    const-wide/16 v4, 0x0

    .line 487
    const/4 v3, 0x0

    .line 488
    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    const/4 v0, 0x4

    .line 489
    :goto_3
    sub-int v1, v2, v0

    .line 491
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_9

    .line 492
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    .line 493
    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    .line 494
    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v2

    .line 495
    goto :goto_4

    .line 488
    :cond_8
    const/16 v0, 0x8

    goto :goto_3

    .line 497
    :cond_9
    invoke-static {v4, v5}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 501
    :pswitch_3
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/b/c;)J

    move-result-wide v0

    long-to-int v3, v0

    .line 502
    iget v0, p4, Lcom/google/googlenav/common/io/b/c;->a:I

    sub-int v0, v2, v0

    .line 503
    sub-int v1, v0, v3

    .line 505
    if-nez v3, :cond_a

    sget-object v0, Lcom/google/googlenav/common/io/b/a;->c:[B

    .line 506
    :goto_5
    const/4 v2, 0x0

    .line 507
    :goto_6
    if-ge v2, v3, :cond_7

    .line 508
    sub-int v4, v3, v2

    invoke-virtual {p1, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 509
    if-gtz v4, :cond_b

    .line 510
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_a
    new-array v0, v3, [B

    goto :goto_5

    .line 512
    :cond_b
    add-int/2addr v2, v4

    goto :goto_6

    .line 518
    :pswitch_4
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 520
    :goto_7
    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 522
    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v0, p4}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;IZLcom/google/googlenav/common/io/b/c;)I

    move-result v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    .line 524
    goto :goto_2

    .line 518
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    .line 520
    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/b/d;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/b/d;

    goto :goto_7

    .line 537
    :cond_d
    return v0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/io/OutputStream;J)I
    .locals 4

    .prologue
    .line 1633
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1635
    const-wide/16 v1, 0x7f

    and-long/2addr v1, p1

    long-to-int v1, v1

    .line 1637
    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    .line 1639
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1640
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1641
    add-int/lit8 v0, v0, 0x1

    .line 1646
    :cond_0
    return v0

    .line 1643
    :cond_1
    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 557
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Z)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 626
    iget v0, p0, Lcom/google/googlenav/common/io/b/a;->g:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_0

    .line 627
    iget v0, p0, Lcom/google/googlenav/common/io/b/a;->g:I

    .line 640
    :goto_0
    return v0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e/c;->a()Lcom/google/googlenav/common/e/d;

    move-result-object v4

    move v0, v1

    .line 631
    :cond_1
    invoke-virtual {v4}, Lcom/google/googlenav/common/e/d;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    invoke-virtual {v4}, Lcom/google/googlenav/common/e/d;->b()I

    move-result v5

    .line 633
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v6

    move v2, v1

    .line 634
    :goto_1
    if-ge v2, v6, :cond_1

    .line 635
    invoke-direct {p0, v5, v2, p1}, Lcom/google/googlenav/common/io/b/a;->a(IIZ)I

    move-result v3

    add-int/2addr v3, v0

    .line 634
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 638
    :cond_2
    iput v0, p0, Lcom/google/googlenav/common/io/b/a;->g:I

    .line 640
    iget v0, p0, Lcom/google/googlenav/common/io/b/a;->g:I

    goto :goto_0
.end method

.method static a(Ljava/io/InputStream;Z)J
    .locals 2

    .prologue
    .line 1511
    sget-object v0, Lcom/google/googlenav/common/io/b/a;->h:Lcom/google/googlenav/common/io/b/c;

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/b/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/b/c;)J
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1531
    const-wide/16 v1, 0x0

    .line 1534
    iput v0, p2, Lcom/google/googlenav/common/io/b/c;->a:I

    move v3, v0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    .line 1538
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    .line 1539
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1541
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1542
    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 1543
    const-wide/16 v0, -0x1

    .line 1557
    :goto_1
    return-wide v0

    .line 1545
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1548
    :cond_1
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    .line 1550
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    .line 1556
    :cond_2
    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lcom/google/googlenav/common/io/b/c;->a:I

    goto :goto_1

    .line 1554
    :cond_3
    add-int/lit8 v3, v3, 0x7

    .line 1538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private a(III)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 1302
    invoke-static {v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/lang/Object;)I

    move-result v1

    .line 1304
    if-lt p2, v1, :cond_0

    .line 1305
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1307
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/common/io/b/a;->a(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1315
    const/4 v0, 0x0

    .line 1316
    instance-of v1, p4, Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 1317
    check-cast p4, Ljava/util/Vector;

    .line 1318
    invoke-virtual {p4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1321
    :goto_0
    invoke-direct {p0, v0, p3, p1}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 1322
    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 1323
    if-nez p4, :cond_1

    .line 1324
    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILjava/lang/Object;)V

    .line 1329
    :cond_0
    :goto_1
    return-object v1

    .line 1326
    :cond_1
    invoke-virtual {p4, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    move-object v0, p4

    move-object p4, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1426
    packed-switch p2, :pswitch_data_0

    .line 1494
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    :pswitch_2
    return-object p1

    .line 1434
    :cond_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_1

    .line 1440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :pswitch_3
    sget-object p1, Lcom/google/googlenav/common/io/b/a;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 1438
    :pswitch_4
    sget-object p1, Lcom/google/googlenav/common/io/b/a;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 1450
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1451
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 1456
    :pswitch_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1457
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/googlenav/common/io/p;->a(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 1458
    :cond_3
    instance-of v0, p1, Lcom/google/googlenav/common/io/b/a;

    if-eqz v0, :cond_0

    .line 1459
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1461
    :try_start_0
    check-cast p1, Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V

    .line 1462
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1470
    :pswitch_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 1471
    check-cast p1, [B

    check-cast p1, [B

    .line 1472
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/common/io/p;->a([BIIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1477
    :pswitch_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 1480
    if-lez p3, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    if-eqz v0, :cond_4

    .line 1481
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/common/io/b/d;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    move-object v0, v1

    .line 1486
    :goto_2
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;

    move-result-object p1

    goto/16 :goto_0

    .line 1483
    :cond_4
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1487
    :catch_1
    move-exception v0

    .line 1488
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1426
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1434
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(IILjava/lang/Object;Z)V
    .locals 3

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 1396
    const/4 v0, 0x0

    .line 1397
    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1398
    check-cast v0, Ljava/util/Vector;

    .line 1400
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1401
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/common/io/b/a;->b(ILjava/lang/Object;)V

    .line 1415
    :goto_0
    return-void

    .line 1403
    :cond_2
    if-nez v0, :cond_3

    .line 1405
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1406
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1407
    iget-object v1, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/common/e/c;->a(ILjava/lang/Object;)V

    .line 1409
    :cond_3
    if-eqz p4, :cond_4

    .line 1410
    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1412
    :cond_4
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 1418
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/googlenav/common/io/b/a;->a(IILjava/lang/Object;Z)V

    .line 1419
    return-void
.end method

.method private a(Ljava/io/OutputStream;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 788
    new-instance v3, Lcom/google/googlenav/common/io/l;

    invoke-direct {v3}, Lcom/google/googlenav/common/io/l;-><init>()V

    .line 789
    invoke-direct {p0, v3}, Lcom/google/googlenav/common/io/b/a;->a(Lcom/google/googlenav/common/io/l;)I

    move-result v2

    .line 791
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 793
    check-cast v0, Ljava/io/DataOutput;

    invoke-interface {v0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 797
    :cond_0
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/l;->a()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    .line 798
    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/l;->a(I)I

    move-result v2

    .line 799
    sub-int v5, v2, v1

    invoke-virtual {v3, p1, v1, v5}, Lcom/google/googlenav/common/io/l;->a(Ljava/io/OutputStream;II)V

    .line 800
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/l;->a(I)I

    move-result v1

    int-to-long v5, v1

    invoke-static {p1, v5, v6}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;J)I

    .line 797
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_0

    .line 803
    :cond_1
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/l;->b()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 804
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/l;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, p1, v1, v0}, Lcom/google/googlenav/common/io/l;->a(Ljava/io/OutputStream;II)V

    .line 806
    :cond_2
    return-void
.end method

.method private static b(J)J
    .locals 4

    .prologue
    .line 929
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    .line 930
    return-wide v0
.end method

.method private b(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1565
    if-gez p1, :cond_0

    .line 1566
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/e/c;->a(ILjava/lang/Object;)V

    .line 1572
    return-void
.end method

.method private static c(J)J
    .locals 4

    .prologue
    .line 937
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    .line 938
    return-wide v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e/c;->c()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/b/a;->f:Lcom/google/googlenav/common/e/c;

    .line 122
    return-void
.end method

.method private f()Lcom/google/googlenav/common/io/b/d;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    return-object v0
.end method

.method private i(II)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 1282
    invoke-static {v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/lang/Object;)I

    move-result v1

    .line 1284
    if-nez v1, :cond_0

    .line 1285
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/b/a;->m(I)Ljava/lang/Object;

    move-result-object v0

    .line 1291
    :goto_0
    return-object v0

    .line 1288
    :cond_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1291
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/googlenav/common/io/b/a;->a(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private k(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x10

    .line 583
    .line 584
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    if-eqz v0, :cond_5

    .line 585
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/b/d;->a(I)I

    move-result v2

    .line 588
    :goto_0
    if-ne v2, v3, :cond_4

    .line 589
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->f:Lcom/google/googlenav/common/e/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->f:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 590
    :goto_1
    if-eqz v0, :cond_4

    .line 591
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 595
    :goto_2
    if-ne v0, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 596
    invoke-direct {p0, p1, v1, v3}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v0

    .line 598
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    .line 602
    :cond_1
    :goto_3
    return v0

    .line 589
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 598
    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method private l(I)Z
    .locals 2

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/b/a;->k(I)I

    move-result v0

    .line 921
    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1254
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/b/a;->k(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1260
    iget-object v1, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    if-nez v1, :cond_0

    :goto_0
    :sswitch_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/b/d;->b(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1254
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private final n(I)I
    .locals 7

    .prologue
    .line 1339
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/b/a;->k(I)I

    move-result v0

    .line 1341
    packed-switch v0, :pswitch_data_0

    .line 1376
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupp.Type:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1358
    :pswitch_1
    const/4 v0, 0x0

    .line 1374
    :goto_0
    :pswitch_2
    return v0

    .line 1364
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1368
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1372
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1374
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 1341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;I)I
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x1

    new-instance v1, Lcom/google/googlenav/common/io/b/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/c;-><init>(Lcom/google/googlenav/common/io/b/b;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;IZLcom/google/googlenav/common/io/b/c;)I

    move-result v0

    return v0
.end method

.method public final a()Lcom/google/googlenav/common/io/b/a;
    .locals 2

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0}, Lcom/google/googlenav/common/io/b/a;->f()Lcom/google/googlenav/common/io/b/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not serialize and parse ProtoBuf."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)Lcom/google/googlenav/common/io/b/a;
    .locals 2

    .prologue
    .line 128
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0}, Lcom/google/googlenav/common/io/b/a;->f()Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/b/d;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    return-object v1
.end method

.method public final a(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/b/a;
    .locals 1

    .prologue
    .line 397
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;I)I

    .line 398
    return-object p0
.end method

.method public final a([B)Lcom/google/googlenav/common/io/b/a;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;I)I

    .line 383
    return-object p0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 149
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/common/io/b/a;->a(IJ)V

    .line 150
    return-void
.end method

.method public final a(IJ)V
    .locals 1

    .prologue
    .line 156
    invoke-static {p2, p3}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public final a(ILcom/google/googlenav/common/io/b/a;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1105
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->b(ILjava/lang/Object;)V

    .line 1106
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    .line 985
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/googlenav/common/io/b/a;->b:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(ILjava/lang/Object;)V

    .line 986
    return-void

    .line 985
    :cond_0
    sget-object v0, Lcom/google/googlenav/common/io/b/a;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final a(I[B)V
    .locals 0

    .prologue
    .line 1002
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->b(ILjava/lang/Object;)V

    .line 1003
    return-void
.end method

.method final a(Lcom/google/googlenav/common/io/b/d;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    if-eq p1, v0, :cond_1

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 339
    :cond_1
    iput-object p1, p0, Lcom/google/googlenav/common/io/b/a;->d:Lcom/google/googlenav/common/io/b/d;

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/b/a;->f:Lcom/google/googlenav/common/e/c;

    .line 341
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;Z)V

    .line 758
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/b/a;->a(Z)I

    move-result v0

    return v0
.end method

.method public final b(IJ)V
    .locals 1

    .prologue
    .line 1036
    invoke-static {p2, p3}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(ILjava/lang/Object;)V

    .line 1037
    return-void
.end method

.method public final b(ILcom/google/googlenav/common/io/b/a;)V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/b/a;->b(ILjava/lang/Object;)V

    .line 1088
    return-void
.end method

.method public final b(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;Z)V

    .line 768
    return-void
.end method

.method public final b(I)Z
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->i(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b(II)Z
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x18

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 200
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c(II)I
    .locals 2

    .prologue
    .line 228
    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 229
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 947
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 948
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V

    .line 949
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final c(I)[B
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->i(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/b/a;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)I
    .locals 2

    .prologue
    .line 221
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->i(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final d(II)J
    .locals 2

    .prologue
    .line 243
    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 962
    new-instance v0, Lcom/google/googlenav/common/io/b/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/io/b/b;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    return-object v0
.end method

.method public final e(I)J
    .locals 2

    .prologue
    .line 236
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->i(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(II)Lcom/google/googlenav/common/io/b/a;
    .locals 1

    .prologue
    .line 286
    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method public final f(I)Lcom/google/googlenav/common/io/b/a;
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->i(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method public final f(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/b/a;->a(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/b/a;->i(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g(II)V
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    .line 545
    if-lt p2, v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 548
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 549
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->b(I)Ljava/lang/Object;

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 552
    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public final h(II)V
    .locals 2

    .prologue
    .line 1019
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 1020
    return-void
.end method

.method public final h(I)Z
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(I)Z
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/b/a;->m(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(I)I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/googlenav/common/io/b/a;->e:Lcom/google/googlenav/common/e/c;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
