.class public Lcom/a/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/a/a/a/m;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/a/a/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/a/a/a/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/a/a/a/k;->c:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/a/a/a/m;

    invoke-direct {v0, v1, v1, v1}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    iput-object v0, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/m;

    .line 68
    return-void
.end method

.method private constructor <init>(Lcom/a/a/a/m;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/k;->c:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/m;

    .line 81
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-static {p1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)V

    .line 733
    invoke-static {p2}, Lcom/a/a/a/f;->a(Ljava/lang/String;)V

    .line 735
    invoke-static {p1, p2}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/b;

    move-result-object v1

    .line 736
    iget-object v2, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/m;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Lcom/a/a/a/a/b;ZLcom/a/a/b/d;)Lcom/a/a/a/m;

    move-result-object v2

    .line 738
    if-eqz v2, :cond_2

    .line 740
    if-eqz p3, :cond_0

    invoke-virtual {v2}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Property must be simple when a value type is requested"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 746
    :cond_0
    invoke-virtual {v2}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v1

    packed-switch p3, :pswitch_data_0

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move-object v0, v1

    .line 750
    :cond_2
    :goto_0
    return-object v0

    .line 746
    :pswitch_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/a/a/f;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/Long;

    invoke-static {v1}, Lcom/a/a/f;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Double;

    invoke-static {v1}, Lcom/a/a/f;->d(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, Lcom/a/a/f;->e(Ljava/lang/String;)Lcom/a/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {v1}, Lcom/a/a/f;->e(Ljava/lang/String;)Lcom/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a;->i()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {v1}, Lcom/a/a/f;->f(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0

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
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/a/a/a/m;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/m;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/a/a/a/k;->c:Ljava/lang/String;

    .line 1227
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 446
    invoke-static {p1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)V

    .line 447
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty array name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 448
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Empty specific language"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 450
    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p3}, Lcom/a/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 451
    :goto_0
    invoke-static {p4}, Lcom/a/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    invoke-static {p1, p2}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/b;

    move-result-object v0

    .line 456
    iget-object v2, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/m;

    const/4 v3, 0x1

    new-instance v5, Lcom/a/a/b/d;

    const/16 v6, 0x1e00

    invoke-direct {v5, v6}, Lcom/a/a/b/d;-><init>(I)V

    invoke-static {v2, v0, v3, v5}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Lcom/a/a/a/a/b;ZLcom/a/a/b/d;)Lcom/a/a/a/m;

    move-result-object v5

    .line 460
    if-nez v5, :cond_5

    .line 462
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Failed to find or create array node"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 450
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 464
    :cond_5
    invoke-virtual {v5}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->k()Z

    move-result v0

    if-nez v0, :cond_6

    .line 466
    invoke-virtual {v5}, Lcom/a/a/a/m;->f()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v5}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    invoke-virtual {v5}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->l()Lcom/a/a/b/d;

    .line 478
    :cond_6
    const/4 v3, 0x0

    .line 479
    const/4 v2, 0x0

    .line 481
    invoke-virtual {v5}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 483
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 484
    invoke-virtual {v0}, Lcom/a/a/a/m;->h()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "xml:lang"

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 487
    :cond_8
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Language qualifier must be first"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 472
    :cond_9
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Specified property is no alt-text array"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 489
    :cond_a
    const-string v7, "x-default"

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/a/a/a/m;->c(I)Lcom/a/a/a/m;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 492
    const/4 v2, 0x1

    move-object v3, v0

    .line 498
    :goto_1
    if-eqz v3, :cond_b

    invoke-virtual {v5}, Lcom/a/a/a/m;->c()I

    move-result v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_b

    .line 500
    invoke-virtual {v5, v3}, Lcom/a/a/a/m;->c(Lcom/a/a/a/m;)V

    .line 501
    invoke-virtual {v5, v3}, Lcom/a/a/a/m;->b(Lcom/a/a/a/m;)V

    .line 507
    :cond_b
    invoke-static {v5, v1, v4}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 508
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 509
    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, Lcom/a/a/a/m;

    .line 511
    const-string v1, "x-default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 513
    packed-switch v6, :pswitch_data_0

    .line 611
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Unexpected result from ChooseLocalizedText"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 519
    :pswitch_0
    const-string v0, "x-default"

    invoke-static {v5, v0, p5}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x1

    .line 521
    if-nez v1, :cond_c

    .line 523
    invoke-static {v5, v4, p5}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_c
    :goto_2
    if-nez v0, :cond_d

    invoke-virtual {v5}, Lcom/a/a/a/m;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 619
    const-string v0, "x-default"

    invoke-static {v5, v0, p5}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_d
    return-void

    .line 529
    :pswitch_1
    if-nez v1, :cond_f

    .line 533
    if-eqz v2, :cond_e

    if-eq v3, v0, :cond_e

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 536
    invoke-virtual {v3, p5}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    .line 539
    :cond_e
    invoke-virtual {v0, p5}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    .line 544
    :cond_f
    sget-boolean v1, Lcom/a/a/a/k;->a:Z

    if-nez v1, :cond_11

    if-eqz v2, :cond_10

    if-eq v3, v0, :cond_11

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 545
    :cond_11
    invoke-virtual {v5}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 547
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 548
    if-eq v0, v3, :cond_12

    invoke-virtual {v0}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 552
    invoke-virtual {v0, p5}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 548
    :cond_13
    const/4 v1, 0x0

    goto :goto_4

    .line 557
    :cond_14
    if-eqz v3, :cond_17

    .line 559
    invoke-virtual {v3, p5}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    .line 568
    :pswitch_2
    if-eqz v2, :cond_15

    if-eq v3, v0, :cond_15

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 571
    invoke-virtual {v3, p5}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    .line 573
    :cond_15
    invoke-virtual {v0, p5}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    move v0, v2

    .line 576
    goto/16 :goto_2

    .line 581
    :pswitch_3
    invoke-static {v5, v4, p5}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz v1, :cond_17

    .line 584
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 592
    :pswitch_4
    if-eqz v3, :cond_16

    invoke-virtual {v5}, Lcom/a/a/a/m;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 594
    invoke-virtual {v3, p5}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    .line 596
    :cond_16
    invoke-static {v5, v4, p5}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 597
    goto/16 :goto_2

    .line 602
    :pswitch_5
    invoke-static {v5, v4, p5}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-eqz v1, :cond_17

    .line 605
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_17
    move v0, v2

    goto/16 :goto_2

    :cond_18
    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_1

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 287
    :try_start_0
    invoke-static {p1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)V

    .line 288
    invoke-static {p2}, Lcom/a/a/a/f;->a(Ljava/lang/String;)V

    .line 290
    invoke-static {p1, p2}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/b;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Lcom/a/a/a/a/b;ZLcom/a/a/b/d;)Lcom/a/a/a/m;
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 296
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/a/a/a/k;->b:Lcom/a/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 1238
    new-instance v1, Lcom/a/a/a/k;

    invoke-direct {v1, v0}, Lcom/a/a/a/k;-><init>(Lcom/a/a/a/m;)V

    return-object v1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
