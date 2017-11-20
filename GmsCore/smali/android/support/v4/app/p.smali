.class final Landroid/support/v4/app/p;
.super Landroid/support/v4/app/o;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static final B:Landroid/view/animation/Interpolator;

.field static final C:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;

.field g:Ljava/util/ArrayList;

.field h:Ljava/util/ArrayList;

.field i:Ljava/util/ArrayList;

.field j:Ljava/util/ArrayList;

.field k:Ljava/util/ArrayList;

.field l:Ljava/util/ArrayList;

.field m:Ljava/util/ArrayList;

.field n:I

.field o:Landroid/support/v4/app/j;

.field p:Landroid/support/v4/app/n;

.field q:Landroid/support/v4/app/Fragment;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Landroid/os/Bundle;

.field x:Landroid/util/SparseArray;

.field y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 409
    sput-boolean v0, Landroid/support/v4/app/p;->a:Z

    .line 412
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/app/p;->b:Z

    .line 745
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/p;->z:Landroid/view/animation/Interpolator;

    .line 746
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/p;->A:Landroid/view/animation/Interpolator;

    .line 747
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/p;->B:Landroid/view/animation/Interpolator;

    .line 748
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/p;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-direct {p0}, Landroid/support/v4/app/o;-><init>()V

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/p;->n:I

    .line 447
    iput-object v1, p0, Landroid/support/v4/app/p;->w:Landroid/os/Bundle;

    .line 448
    iput-object v1, p0, Landroid/support/v4/app/p;->x:Landroid/util/SparseArray;

    .line 450
    new-instance v0, Landroid/support/v4/app/q;

    invoke-direct {v0, p0}, Landroid/support/v4/app/q;-><init>(Landroid/support/v4/app/p;)V

    iput-object v0, p0, Landroid/support/v4/app/p;->y:Ljava/lang/Runnable;

    .line 2204
    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 578
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 579
    if-ne v1, v0, :cond_1

    .line 580
    const/4 v0, 0x0

    .line 591
    :cond_0
    :goto_0
    return-object v0

    .line 582
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 583
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->a(Ljava/lang/RuntimeException;)V

    .line 586
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 587
    if-nez v0, :cond_0

    .line 588
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragment no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/p;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 768
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 769
    sget-object v1, Landroid/support/v4/app/p;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 770
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 771
    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 754
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 755
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 757
    sget-object v1, Landroid/support/v4/app/p;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 758
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 759
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 760
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 761
    sget-object v1, Landroid/support/v4/app/p;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 762
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 763
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 764
    return-object v9
.end method

.method private a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 776
    iget v0, p1, Landroid/support/v4/app/Fragment;->Q:I

    invoke-static {}, Landroid/support/v4/app/Fragment;->s()Landroid/view/animation/Animation;

    .line 778
    iget v0, p1, Landroid/support/v4/app/Fragment;->Q:I

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget v2, p1, Landroid/support/v4/app/Fragment;->Q:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_0

    .line 830
    :goto_0
    return-object v0

    .line 789
    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    .line 790
    goto :goto_0

    .line 793
    :cond_1
    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    .line 794
    :goto_1
    if-gez v0, :cond_5

    move-object v0, v1

    .line 795
    goto :goto_0

    .line 793
    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 798
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 813
    if-nez p4, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 814
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 816
    :cond_6
    if-nez p4, :cond_7

    move-object v0, v1

    .line 817
    goto :goto_0

    .line 800
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/app/p;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 802
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/app/p;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 804
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/app/p;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 806
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    const v0, 0x3f89999a    # 1.075f

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/app/p;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 808
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-static {v4, v3}, Landroid/support/v4/app/p;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 810
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-static {v3, v4}, Landroid/support/v4/app/p;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 830
    goto :goto_0

    .line 793
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    .line 798
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/app/a;)V
    .locals 4

    .prologue
    .line 1420
    monitor-enter p0

    .line 1421
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    .line 1424
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1425
    if-ge p1, v0, :cond_2

    .line 1426
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1441
    :goto_0
    monitor-exit p0

    return-void

    .line 1429
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1430
    iget-object v1, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    iget-object v1, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    .line 1434
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/p;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1438
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1103
    iget v2, p0, Landroid/support/v4/app/p;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1104
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    .prologue
    .line 458
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v0, Landroid/support/v4/f/f;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/f/f;-><init>(Ljava/lang/String;)V

    .line 461
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 462
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    if-eqz v0, :cond_0

    .line 464
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/j;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    throw p1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 470
    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/app/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 471
    :catch_1
    move-exception v0

    .line 472
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1623
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->x:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1624
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->x:Landroid/util/SparseArray;

    .line 1628
    :goto_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/p;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1629
    iget-object v0, p0, Landroid/support/v4/app/p;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1630
    iget-object v0, p0, Landroid/support/v4/app/p;->x:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    .line 1631
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/p;->x:Landroid/util/SparseArray;

    goto :goto_0

    .line 1626
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 2068
    const/4 v0, 0x0

    .line 2069
    sparse-switch p0, :sswitch_data_0

    .line 2080
    :goto_0
    return v0

    .line 2071
    :sswitch_0
    const/16 v0, 0x2002

    .line 2072
    goto :goto_0

    .line 2074
    :sswitch_1
    const/16 v0, 0x1001

    .line 2075
    goto :goto_0

    .line 2077
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2069
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private e(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1107
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/app/p;->a(IIIZ)V

    .line 1108
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 1363
    iget-boolean v0, p0, Landroid/support/v4/app/p;->s:Z

    if-eqz v0, :cond_0

    .line 1364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1367
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1368
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/p;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 1512
    iget-object v0, p0, Landroid/support/v4/app/p;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1513
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1514
    iget-object v1, p0, Landroid/support/v4/app/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1517
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/a;)I
    .locals 4

    .prologue
    .line 1400
    monitor-enter p0

    .line 1401
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1402
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    .line 1405
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1406
    sget-boolean v1, Landroid/support/v4/app/p;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    monitor-exit p0

    .line 1414
    :goto_0
    return v0

    .line 1411
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1412
    sget-boolean v1, Landroid/support/v4/app/p;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1414
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 1307
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1309
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1310
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1311
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/app/Fragment;->G:I

    if-ne v2, p1, :cond_1

    .line 1325
    :cond_0
    :goto_1
    return-object v0

    .line 1309
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1318
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1319
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1320
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/app/Fragment;->G:I

    if-eq v2, p1, :cond_0

    .line 1318
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1325
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1331
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1332
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1333
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1347
    :cond_0
    :goto_1
    return-object v0

    .line 1331
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1338
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1340
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1341
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1342
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1340
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1347
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()Landroid/support/v4/app/z;
    .locals 1

    .prologue
    .line 480
    new-instance v0, Landroid/support/v4/app/a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/p;)V

    return-object v0
.end method

.method final a(IIIZ)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1111
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/app/p;->n:I

    if-ne v0, p1, :cond_2

    .line 1141
    :cond_1
    :goto_0
    return-void

    .line 1119
    :cond_2
    iput p1, p0, Landroid/support/v4/app/p;->n:I

    .line 1120
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    .line 1122
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1123
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1124
    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1125
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1126
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v0, :cond_5

    .line 1127
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    .line 1122
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 1132
    :cond_3
    if-nez v7, :cond_4

    .line 1133
    invoke-virtual {p0}, Landroid/support/v4/app/p;->f()V

    .line 1136
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/p;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/p;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1137
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->b_()V

    .line 1138
    iput-boolean v5, p0, Landroid/support/v4/app/p;->r:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1961
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1962
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1963
    if-eqz v0, :cond_0

    .line 1964
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/res/Configuration;)V

    .line 1961
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1968
    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1787
    if-nez p1, :cond_1

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1788
    :cond_1
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1789
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_0

    .line 1793
    if-eqz p2, :cond_4

    move v1, v2

    .line 1794
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1795
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1796
    sget-boolean v3, Landroid/support/v4/app/p;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: re-attaching retained "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_2
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->p:I

    aget-object v3, v3, v4

    .line 1798
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1799
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    .line 1800
    iput v2, v0, Landroid/support/v4/app/Fragment;->B:I

    .line 1801
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->z:Z

    .line 1802
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->v:Z

    .line 1803
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    .line 1804
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 1805
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-virtual {v5}, Landroid/support/v4/app/j;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1806
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    .line 1808
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    .line 1794
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1815
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    .line 1816
    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1817
    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v2

    .line 1819
    :goto_2
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 1820
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1821
    if-eqz v1, :cond_7

    .line 1822
    iget-object v3, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v4, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/j;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1823
    sget-boolean v4, Landroid/support/v4/app/p;->a:Z

    if-eqz v4, :cond_6

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoreAllState: active #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_6
    iget-object v4, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    iput-object v7, v1, Landroid/support/v4/app/FragmentState;->k:Landroid/support/v4/app/Fragment;

    .line 1819
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1830
    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    iget-object v1, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    .line 1832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    .line 1834
    :cond_8
    sget-boolean v1, Landroid/support/v4/app/p;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: avail #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1840
    :cond_a
    if-eqz p2, :cond_d

    move v3, v2

    .line 1841
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 1842
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1843
    iget v1, v0, Landroid/support/v4/app/Fragment;->t:I

    if-ltz v1, :cond_b

    .line 1844
    iget v1, v0, Landroid/support/v4/app/Fragment;->t:I

    iget-object v4, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 1845
    iget-object v1, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->t:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    .line 1841
    :cond_b
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1847
    :cond_c
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Re-attaching retained fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/Fragment;->t:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1856
    :cond_d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz v0, :cond_11

    .line 1857
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    move v1, v2

    .line 1858
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 1859
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1860
    if-nez v0, :cond_e

    .line 1861
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No instantiated fragment for index #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/p;->a(Ljava/lang/RuntimeException;)V

    .line 1864
    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->v:Z

    .line 1865
    sget-boolean v3, Landroid/support/v4/app/p;->a:Z

    if-eqz v3, :cond_f

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: added #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_f
    iget-object v3, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1867
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :cond_10
    iget-object v3, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1858
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1872
    :cond_11
    iput-object v7, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    .line 1876
    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_15

    .line 1877
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    move v0, v2

    .line 1878
    :goto_7
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1879
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/p;)Landroid/support/v4/app/a;

    move-result-object v1

    .line 1880
    sget-boolean v3, Landroid/support/v4/app/p;->a:Z

    if-eqz v3, :cond_13

    .line 1881
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: back stack #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/support/v4/app/a;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    new-instance v3, Landroid/support/v4/f/f;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/f/f;-><init>(Ljava/lang/String;)V

    .line 1884
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1885
    const-string v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1887
    :cond_13
    iget-object v3, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1888
    iget v3, v1, Landroid/support/v4/app/a;->o:I

    if-ltz v3, :cond_14

    .line 1889
    iget v3, v1, Landroid/support/v4/app/a;->o:I

    invoke-direct {p0, v3, v1}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/a;)V

    .line 1878
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1893
    :cond_15
    iput-object v7, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public final a(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1211
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/Fragment;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->h()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1213
    :goto_0
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    .line 1214
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1215
    iget-object v2, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1217
    :cond_2
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v2, :cond_3

    .line 1218
    iput-boolean v1, p0, Landroid/support/v4/app/p;->r:Z

    .line 1220
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->v:Z

    .line 1221
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->w:Z

    .line 1222
    if-eqz v0, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1225
    :cond_4
    return-void

    :cond_5
    move v0, v5

    .line 1212
    goto :goto_0

    :cond_6
    move v2, v1

    .line 1222
    goto :goto_1
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 848
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    .line 851
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->w:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/app/Fragment;->k:I

    if-le p2, v0, :cond_2

    .line 853
    iget p2, p1, Landroid/support/v4/app/Fragment;->k:I

    .line 857
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->U:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/app/Fragment;->k:I

    if-ge v0, v8, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    .line 860
    :cond_3
    iget v0, p1, Landroid/support/v4/app/Fragment;->k:I

    if-ge v0, p2, :cond_1d

    .line 864
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->z:Z

    if-nez v0, :cond_4

    .line 1100
    :goto_0
    return-void

    .line 867
    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 872
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    .line 873
    iget v2, p1, Landroid/support/v4/app/Fragment;->m:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 875
    :cond_5
    iget v0, p1, Landroid/support/v4/app/Fragment;->k:I

    packed-switch v0, :pswitch_data_0

    .line 1099
    :cond_6
    :goto_1
    iput p2, p1, Landroid/support/v4/app/Fragment;->k:I

    goto :goto_0

    .line 877
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 879
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-virtual {v1}, Landroid/support/v4/app/j;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 880
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    .line 882
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/p;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    .line 884
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 885
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->u:I

    .line 888
    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->V:Z

    .line 890
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->V:Z

    if-nez v0, :cond_9

    .line 891
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->U:Z

    .line 892
    if-le p2, v6, :cond_9

    move p2, v6

    .line 897
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    .line 898
    iget-object v0, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    .line 899
    iget-object v0, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    :goto_2
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    .line 901
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->P:Z

    .line 902
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 903
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_b

    .line 904
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    goto :goto_2

    .line 907
    :cond_b
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_c

    .line 908
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    .line 911
    :cond_c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_d

    .line 912
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->f(Landroid/os/Bundle;)V

    .line 914
    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->M:Z

    .line 915
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v0, :cond_f

    .line 919
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    .line 921
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 922
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    .line 923
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/at;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    .line 924
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    :cond_e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 931
    :cond_f
    :goto_3
    :pswitch_1
    if-le p2, v5, :cond_17

    .line 932
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_10

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z

    if-nez v0, :cond_15

    .line 935
    iget v0, p1, Landroid/support/v4/app/Fragment;->H:I

    if-eqz v0, :cond_32

    .line 936
    iget-object v0, p0, Landroid/support/v4/app/p;->p:Landroid/support/v4/app/n;

    iget v1, p1, Landroid/support/v4/app/Fragment;->H:I

    invoke-interface {v0, v1}, Landroid/support/v4/app/n;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 937
    if-nez v0, :cond_11

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v1, :cond_11

    .line 938
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/support/v4/app/Fragment;->H:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->k()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/Fragment;->H:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/RuntimeException;)V

    .line 945
    :cond_11
    :goto_4
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    .line 946
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    .line 948
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 949
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    .line 950
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/app/at;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    .line 951
    if-eqz v0, :cond_13

    .line 952
    invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 954
    if-eqz v1, :cond_12

    .line 955
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 957
    :cond_12
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 959
    :cond_13
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 960
    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 966
    :cond_15
    :goto_5
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    .line 967
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 968
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->g()V

    .line 970
    :cond_16
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    .line 974
    :cond_17
    :pswitch_2
    if-le p2, v6, :cond_19

    .line 975
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_18
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->H()V

    .line 979
    :cond_19
    :pswitch_3
    if-le p2, v8, :cond_6

    .line 980
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_1a
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->x:Z

    .line 982
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->I()V

    .line 983
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    .line 984
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 927
    :cond_1b
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    goto/16 :goto_3

    .line 962
    :cond_1c
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    goto :goto_5

    .line 987
    :cond_1d
    iget v0, p1, Landroid/support/v4/app/Fragment;->k:I

    if-le v0, p2, :cond_6

    .line 988
    iget v0, p1, Landroid/support/v4/app/Fragment;->k:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1051
    :cond_1e
    :goto_6
    :pswitch_4
    if-gtz p2, :cond_6

    .line 1052
    iget-boolean v0, p0, Landroid/support/v4/app/p;->t:Z

    if-eqz v0, :cond_1f

    .line 1053
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1060
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    .line 1061
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    .line 1062
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1065
    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 1070
    iput p2, p1, Landroid/support/v4/app/Fragment;->m:I

    move p2, v5

    .line 1071
    goto/16 :goto_1

    .line 990
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_21

    .line 991
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_20
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->K()V

    .line 993
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->x:Z

    .line 996
    :cond_21
    :pswitch_6
    if-ge p2, v8, :cond_23

    .line 997
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_22
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->L()V

    .line 1001
    :cond_23
    :pswitch_7
    if-ge p2, v6, :cond_25

    .line 1002
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STOPPED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->M()V

    .line 1006
    :cond_25
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1e

    .line 1007
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_26

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_26
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 1011
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1012
    invoke-direct {p0, p1}, Landroid/support/v4/app/p;->b(Landroid/support/v4/app/Fragment;)V

    .line 1015
    :cond_27
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->N()V

    .line 1016
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 1018
    iget v0, p0, Landroid/support/v4/app/p;->n:I

    if-lez v0, :cond_31

    iget-boolean v0, p0, Landroid/support/v4/app/p;->t:Z

    if-nez v0, :cond_31

    .line 1019
    invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1022
    :goto_7
    if-eqz v0, :cond_28

    .line 1024
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->l:Landroid/view/View;

    .line 1025
    iput p2, p1, Landroid/support/v4/app/Fragment;->m:I

    .line 1026
    new-instance v1, Landroid/support/v4/app/t;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/app/t;-><init>(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1042
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1044
    :cond_28
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1046
    :cond_29
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    .line 1047
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    .line 1048
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->T:Landroid/view/View;

    goto/16 :goto_6

    .line 1073
    :cond_2a
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_2b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_2b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_2c

    .line 1075
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->O()V

    .line 1078
    :cond_2c
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->P:Z

    .line 1079
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->b()V

    .line 1080
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->P:Z

    if-nez v0, :cond_2d

    .line 1081
    new-instance v0, Landroid/support/v4/app/ck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_2d
    if-nez p5, :cond_6

    .line 1085
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v0, :cond_30

    .line 1086
    iget v0, p1, Landroid/support/v4/app/Fragment;->p:I

    if-ltz v0, :cond_6

    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->p:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    :cond_2f
    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->x()V

    goto/16 :goto_1

    .line 1088
    :cond_30
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    .line 1089
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->F:Landroid/support/v4/app/Fragment;

    .line 1090
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    .line 1091
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->E:Landroid/support/v4/app/p;

    goto/16 :goto_1

    :cond_31
    move-object v0, v7

    goto/16 :goto_7

    :cond_32
    move-object v0, v7

    goto/16 :goto_4

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 988
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1189
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    .line 1192
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->p:I

    if-gez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-nez v0, :cond_8

    .line 1195
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1196
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1193
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->p:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1198
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->v:Z

    .line 1200
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->w:Z

    .line 1201
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_7

    .line 1202
    iput-boolean v3, p0, Landroid/support/v4/app/p;->r:Z

    .line 1204
    :cond_7
    if-eqz p2, :cond_8

    .line 1205
    invoke-direct {p0, p1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)V

    .line 1208
    :cond_8
    return-void
.end method

.method public final a(Landroid/support/v4/app/j;Landroid/support/v4/app/n;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 1899
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1900
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    .line 1901
    iput-object p2, p0, Landroid/support/v4/app/p;->p:Landroid/support/v4/app/n;

    .line 1902
    iput-object p3, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    .line 1903
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .locals 2

    .prologue
    .line 1381
    if-nez p2, :cond_0

    .line 1382
    invoke-direct {p0}, Landroid/support/v4/app/p;->v()V

    .line 1384
    :cond_0
    monitor-enter p0

    .line 1385
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/p;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    if-nez v0, :cond_2

    .line 1386
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1388
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    .line 1391
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1393
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/p;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1394
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/p;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1396
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 639
    if-lez v4, :cond_1

    .line 640
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 643
    :goto_0
    if-ge v2, v4, :cond_1

    .line 644
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 645
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 646
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 647
    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 643
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 656
    if-lez v4, :cond_2

    .line 657
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 658
    :goto_1
    if-ge v2, v4, :cond_2

    .line 659
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 660
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 661
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 666
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 667
    iget-object v0, p0, Landroid/support/v4/app/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 668
    if-lez v4, :cond_3

    .line 669
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 670
    :goto_2
    if-ge v2, v4, :cond_3

    .line 671
    iget-object v0, p0, Landroid/support/v4/app/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 672
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 673
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 678
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 679
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 680
    if-lez v4, :cond_4

    .line 681
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 682
    :goto_3
    if-ge v2, v4, :cond_4

    .line 683
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 684
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 685
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0, v3, p3}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 682
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 691
    :cond_4
    monitor-enter p0

    .line 692
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 693
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 694
    if-lez v3, :cond_5

    .line 695
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 696
    :goto_4
    if-ge v2, v3, :cond_5

    .line 697
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 698
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 699
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 696
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 704
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 705
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 712
    if-lez v2, :cond_7

    .line 713
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    :goto_5
    if-ge v1, v2, :cond_7

    .line 715
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 716
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 717
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 714
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 722
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 724
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->p:Landroid/support/v4/app/n;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 725
    iget-object v0, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 726
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 728
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/p;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 729
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/p;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 730
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/p;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 731
    iget-boolean v0, p0, Landroid/support/v4/app/p;->r:Z

    if-eqz v0, :cond_9

    .line 732
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    iget-boolean v0, p0, Landroid/support/v4/app/p;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 735
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/p;->u:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 736
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Landroid/support/v4/app/p;->u:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 740
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    :cond_b
    return-void
.end method

.method final a(II)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1528
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return v3

    .line 1531
    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    .line 1532
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1533
    if-ltz v0, :cond_0

    .line 1536
    iget-object v1, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1537
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1538
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1539
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1540
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/support/v4/app/a;->a(ZLandroid/support/v4/app/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/d;

    .line 1595
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/app/p;->w()V

    move v3, v2

    .line 1597
    goto :goto_0

    .line 1543
    :cond_3
    const/4 v0, -0x1

    .line 1544
    if-ltz p1, :cond_7

    .line 1547
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1548
    :goto_1
    if-ltz v1, :cond_5

    .line 1549
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1550
    if-ltz p1, :cond_4

    iget v0, v0, Landroid/support/v4/app/a;->o:I

    if-eq p1, v0, :cond_5

    .line 1554
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 1557
    goto :goto_1

    .line 1558
    :cond_5
    if-ltz v1, :cond_0

    .line 1561
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    .line 1562
    add-int/lit8 v1, v1, -0x1

    .line 1564
    :goto_2
    if-ltz v1, :cond_6

    .line 1565
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    .line 1566
    if-ltz p1, :cond_6

    iget v0, v0, Landroid/support/v4/app/a;->o:I

    if-ne p1, v0, :cond_6

    .line 1568
    add-int/lit8 v1, v1, -0x1

    .line 1569
    goto :goto_2

    :cond_6
    move v0, v1

    .line 1575
    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1578
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    iget-object v1, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-le v1, v0, :cond_8

    .line 1581
    iget-object v5, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1583
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 1584
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 1585
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v1, v3

    .line 1586
    :goto_4
    if-gt v1, v7, :cond_9

    .line 1587
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1586
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_9
    move-object v5, v4

    move v4, v3

    .line 1590
    :goto_5
    if-gt v4, v7, :cond_2

    .line 1591
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Popping back stack state: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    if-ne v4, v7, :cond_b

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/support/v4/app/a;->a(ZLandroid/support/v4/app/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/d;

    move-result-object v1

    .line 1590
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v1

    goto :goto_5

    :cond_b
    move v1, v3

    .line 1592
    goto :goto_6
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2014
    .line 2015
    iget-object v1, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    move v2, v0

    .line 2016
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2017
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2018
    if-eqz v0, :cond_0

    .line 2019
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    const/4 v2, 0x1

    .line 2016
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2025
    :cond_2
    return v2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1982
    .line 1983
    const/4 v1, 0x0

    .line 1984
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v3, v4

    move v2, v4

    .line 1985
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1986
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1987
    if-eqz v0, :cond_1

    .line 1988
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1989
    const/4 v2, 0x1

    .line 1990
    if-nez v1, :cond_0

    .line 1991
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1993
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    .line 1985
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    .line 1999
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/p;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 2000
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 2001
    iget-object v0, p0, Landroid/support/v4/app/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2002
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2003
    :cond_4
    invoke-static {}, Landroid/support/v4/app/Fragment;->y()V

    .line 2000
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2008
    :cond_6
    iput-object v1, p0, Landroid/support/v4/app/p;->j:Ljava/util/ArrayList;

    .line 2010
    return v2
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2029
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2030
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2031
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2032
    if-eqz v0, :cond_1

    .line 2033
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2034
    const/4 v2, 0x1

    .line 2039
    :cond_0
    return v2

    .line 2030
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 522
    if-gez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    new-instance v0, Landroid/support/v4/app/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/p;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/Runnable;Z)V

    .line 530
    return-void
.end method

.method public final b(Landroid/support/v4/app/Fragment;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1228
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-nez v0, :cond_4

    .line 1230
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->J:Z

    .line 1231
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1234
    if-eqz v0, :cond_1

    .line 1235
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1237
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1239
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_3

    .line 1240
    iput-boolean v3, p0, Landroid/support/v4/app/p;->r:Z

    .line 1242
    :cond_3
    invoke-static {}, Landroid/support/v4/app/Fragment;->q()V

    .line 1244
    :cond_4
    return-void
.end method

.method final b(Landroid/support/v4/app/a;)V
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    .line 1523
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    invoke-direct {p0}, Landroid/support/v4/app/p;->w()V

    .line 1525
    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 2057
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2058
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2059
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2060
    if-eqz v0, :cond_0

    .line 2061
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/Menu;)V

    .line 2058
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2065
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/support/v4/app/p;->g()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2043
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2044
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2045
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 2046
    if-eqz v0, :cond_1

    .line 2047
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2048
    const/4 v2, 0x1

    .line 2053
    :cond_0
    return v2

    .line 2044
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 490
    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0, p0}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/p;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/Runnable;Z)V

    .line 495
    return-void
.end method

.method public final c(I)V
    .locals 3

    .prologue
    .line 1445
    monitor-enter p0

    .line 1446
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/p;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iget-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    .line 1450
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Landroid/support/v4/app/Fragment;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1247
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->J:Z

    if-eqz v0, :cond_4

    .line 1249
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->J:Z

    .line 1250
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1251
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1253
    if-eqz v0, :cond_1

    .line 1254
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1256
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_3

    .line 1259
    iput-boolean v4, p0, Landroid/support/v4/app/p;->r:Z

    .line 1261
    :cond_3
    invoke-static {}, Landroid/support/v4/app/Fragment;->q()V

    .line 1263
    :cond_4
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1266
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-nez v0, :cond_4

    .line 1268
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->K:Z

    .line 1269
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-eqz v0, :cond_4

    .line 1271
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1272
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1275
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_3

    .line 1276
    iput-boolean v2, p0, Landroid/support/v4/app/p;->r:Z

    .line 1278
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->v:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1279
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1282
    :cond_4
    return-void
.end method

.method public final e(Landroid/support/v4/app/Fragment;II)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1285
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z

    if-eqz v0, :cond_5

    .line 1287
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->K:Z

    .line 1288
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->v:Z

    if-nez v0, :cond_5

    .line 1289
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    .line 1292
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1293
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->v:Z

    .line 1298
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->N:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->O:Z

    if-eqz v0, :cond_4

    .line 1299
    iput-boolean v3, p0, Landroid/support/v4/app/p;->r:Z

    .line 1301
    :cond_4
    iget v2, p0, Landroid/support/v4/app/p;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1304
    :cond_5
    return-void
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/support/v4/app/p;->v()V

    .line 500
    invoke-virtual {p0}, Landroid/support/v4/app/p;->g()Z

    .line 501
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/p;->a(II)Z

    move-result v0

    return v0
.end method

.method final f()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1144
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1152
    :cond_0
    return-void

    :cond_1
    move v6, v3

    .line 1146
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1147
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1148
    if-eqz v1, :cond_2

    .line 1149
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->U:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/p;->e:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/p;->v:Z

    .line 1146
    :cond_2
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1149
    :cond_3
    iput-boolean v3, v1, Landroid/support/v4/app/Fragment;->U:Z

    iget v2, p0, Landroid/support/v4/app/p;->n:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_1
.end method

.method public final g()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1459
    iget-boolean v1, p0, Landroid/support/v4/app/p;->e:Z

    if-eqz v1, :cond_0

    .line 1460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v3, v3, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 1472
    :goto_0
    monitor-enter p0

    .line 1473
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1474
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    iget-boolean v0, p0, Landroid/support/v4/app/p;->v:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    .line 1497
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1498
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1499
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    if-eqz v5, :cond_3

    .line 1500
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->W:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->a()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1497
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1477
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1478
    iget-object v1, p0, Landroid/support/v4/app/p;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/p;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    .line 1479
    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/p;->d:[Ljava/lang/Runnable;

    .line 1481
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/p;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1482
    iget-object v1, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1483
    iget-object v1, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/app/p;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1484
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1486
    iput-boolean v0, p0, Landroid/support/v4/app/p;->e:Z

    move v1, v2

    .line 1487
    :goto_2
    if-ge v1, v3, :cond_7

    .line 1488
    iget-object v4, p0, Landroid/support/v4/app/p;->d:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1489
    iget-object v4, p0, Landroid/support/v4/app/p;->d:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1487
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1491
    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/app/p;->e:Z

    move v1, v0

    .line 1493
    goto :goto_0

    .line 1503
    :cond_8
    if-nez v4, :cond_9

    .line 1504
    iput-boolean v2, p0, Landroid/support/v4/app/p;->v:Z

    .line 1505
    invoke-virtual {p0}, Landroid/support/v4/app/p;->f()V

    .line 1508
    :cond_9
    return v1
.end method

.method final h()Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 1601
    const/4 v1, 0x0

    .line 1602
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1603
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 1604
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1605
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->L:Z

    if-eqz v2, :cond_1

    .line 1606
    if-nez v1, :cond_0

    .line 1607
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1609
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->M:Z

    .line 1611
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->p:I

    :goto_1
    iput v2, v0, Landroid/support/v4/app/Fragment;->t:I

    .line 1612
    sget-boolean v2, Landroid/support/v4/app/p;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retainNonConfig: keeping retained "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1611
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1616
    :cond_3
    return-object v1
.end method

.method final i()Landroid/os/Parcelable;
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1671
    invoke-virtual {p0}, Landroid/support/v4/app/p;->g()Z

    .line 1673
    sget-boolean v0, Landroid/support/v4/app/p;->b:Z

    if-eqz v0, :cond_0

    .line 1683
    iput-boolean v3, p0, Landroid/support/v4/app/p;->s:Z

    .line 1686
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1781
    :cond_1
    :goto_0
    return-object v2

    .line 1691
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1692
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v1, v4

    .line 1694
    :goto_1
    if-ge v5, v6, :cond_10

    .line 1695
    iget-object v0, p0, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1696
    if-eqz v0, :cond_19

    .line 1697
    iget v1, v0, Landroid/support/v4/app/Fragment;->p:I

    if-gez v1, :cond_3

    .line 1698
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/app/Fragment;->p:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/RuntimeException;)V

    .line 1705
    :cond_3
    new-instance v8, Landroid/support/v4/app/FragmentState;

    invoke-direct {v8, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1706
    aput-object v8, v7, v5

    .line 1708
    iget v1, v0, Landroid/support/v4/app/Fragment;->k:I

    if-lez v1, :cond_f

    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v1, :cond_f

    .line 1709
    iget-object v1, p0, Landroid/support/v4/app/p;->w:Landroid/os/Bundle;

    if-nez v1, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/p;->w:Landroid/os/Bundle;

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/p;->w:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->h(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/support/v4/app/p;->w:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Landroid/support/v4/app/p;->w:Landroid/os/Bundle;

    iput-object v2, p0, Landroid/support/v4/app/p;->w:Landroid/os/Bundle;

    :goto_2
    iget-object v9, v0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v9, :cond_5

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->b(Landroid/support/v4/app/Fragment;)V

    :cond_5
    iget-object v9, v0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    if-eqz v9, :cond_7

    if-nez v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_6
    const-string v9, "android:view_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->o:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_7
    iget-boolean v9, v0, Landroid/support/v4/app/Fragment;->V:Z

    if-nez v9, :cond_9

    if-nez v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_8
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v0, Landroid/support/v4/app/Fragment;->V:Z

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    iput-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1711
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_d

    .line 1712
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->p:I

    if-gez v1, :cond_a

    .line 1713
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/RuntimeException;)V

    .line 1717
    :cond_a
    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    if-nez v1, :cond_b

    .line 1718
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    .line 1720
    :cond_b
    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/Fragment;

    iget v11, v10, Landroid/support/v4/app/Fragment;->p:I

    if-gez v11, :cond_c

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not currently in the FragmentManager"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/support/v4/app/p;->a(Ljava/lang/RuntimeException;)V

    :cond_c
    iget v10, v10, Landroid/support/v4/app/Fragment;->p:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1722
    iget v1, v0, Landroid/support/v4/app/Fragment;->u:I

    if-eqz v1, :cond_d

    .line 1723
    iget-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->u:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1733
    :cond_d
    :goto_3
    sget-boolean v1, Landroid/support/v4/app/p;->a:Z

    if-eqz v1, :cond_e

    const-string v1, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Saved state of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v0, v3

    .line 1694
    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto/16 :goto_1

    .line 1730
    :cond_f
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    iput-object v1, v8, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;

    goto :goto_3

    .line 1738
    :cond_10
    if-nez v1, :cond_11

    .line 1739
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1747
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1748
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1749
    if-lez v5, :cond_14

    .line 1750
    new-array v1, v5, [I

    move v3, v4

    .line 1751
    :goto_5
    if-ge v3, v5, :cond_15

    .line 1752
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->p:I

    aput v0, v1, v3

    .line 1753
    aget v0, v1, v3

    if-gez v0, :cond_12

    .line 1754
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->a(Ljava/lang/RuntimeException;)V

    .line 1758
    :cond_12
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "saveAllState: adding fragment #"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_13
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_14
    move-object v1, v2

    .line 1765
    :cond_15
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 1766
    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1767
    if-lez v5, :cond_17

    .line 1768
    new-array v2, v5, [Landroid/support/v4/app/BackStackState;

    move v3, v4

    .line 1769
    :goto_6
    if-ge v3, v5, :cond_17

    .line 1770
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/a;

    invoke-direct {v4, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/a;)V

    aput-object v4, v2, v3

    .line 1771
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_16

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "saveAllState: adding back stack #"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v4/app/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_16
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 1777
    :cond_17
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1778
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 1779
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    .line 1780
    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    move-object v2, v0

    .line 1781
    goto/16 :goto_0

    :cond_18
    move-object v1, v2

    goto/16 :goto_2

    :cond_19
    move v0, v1

    goto/16 :goto_4
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 1906
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/p;->s:Z

    .line 1907
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/p;->s:Z

    .line 1911
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1912
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 1915
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/p;->s:Z

    .line 1916
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1917
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 1920
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/p;->s:Z

    .line 1921
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1922
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 1925
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/p;->s:Z

    .line 1926
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1927
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1931
    return-void
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2109
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 2197
    :goto_0
    return-object v0

    .line 2113
    :cond_0
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2114
    sget-object v4, Landroid/support/v4/app/u;->a:[I

    invoke-virtual {p2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2115
    if-nez v0, :cond_e

    .line 2116
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2118
    :goto_1
    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 2119
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2120
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2122
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-static {v0, v6}, Landroid/support/v4/app/Fragment;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 2125
    goto :goto_0

    .line 2128
    :cond_1
    if-eq v7, v5, :cond_5

    invoke-virtual {p0, v7}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2139
    :goto_2
    if-nez v0, :cond_2

    if-eqz v8, :cond_2

    .line 2140
    invoke-virtual {p0, v8}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2142
    :cond_2
    if-nez v0, :cond_3

    .line 2143
    invoke-virtual {p0, v3}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2146
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/p;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onCreateView: id=0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :cond_4
    if-nez v0, :cond_7

    .line 2150
    invoke-static {p2, v6}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2151
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->y:Z

    .line 2152
    if-eqz v7, :cond_6

    move v0, v7

    :goto_3
    iput v0, v1, Landroid/support/v4/app/Fragment;->G:I

    .line 2153
    iput v3, v1, Landroid/support/v4/app/Fragment;->H:I

    .line 2154
    iput-object v8, v1, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    .line 2155
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->z:Z

    .line 2156
    iput-object p0, v1, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    .line 2157
    iget-object v0, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v4, v1, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p3, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2158
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 2181
    :goto_4
    iget v0, p0, Landroid/support/v4/app/p;->n:I

    if-gtz v0, :cond_a

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->y:Z

    if-eqz v0, :cond_a

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2182
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2187
    :goto_5
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-nez v0, :cond_b

    .line 2188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v0, v1

    .line 2128
    goto/16 :goto_2

    :cond_6
    move v0, v3

    .line 2152
    goto :goto_3

    .line 2160
    :cond_7
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->z:Z

    if-eqz v1, :cond_8

    .line 2163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2170
    :cond_8
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->z:Z

    .line 2174
    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->M:Z

    if-nez v1, :cond_9

    .line 2175
    iget-object v1, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p3, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_9
    move-object v1, v0

    goto/16 :goto_4

    .line 2184
    :cond_a
    invoke-direct {p0, v1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_5

    .line 2191
    :cond_b
    if-eqz v7, :cond_c

    .line 2192
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 2194
    :cond_c
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2195
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2197
    :cond_d
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    goto/16 :goto_0

    :cond_e
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 1937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/p;->s:Z

    .line 1939
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1940
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 1943
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1944
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 1947
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1948
    return-void
.end method

.method public final s()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1951
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/p;->t:Z

    .line 1952
    invoke-virtual {p0}, Landroid/support/v4/app/p;->g()Z

    .line 1953
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/p;->e(I)V

    .line 1954
    iput-object v1, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    .line 1955
    iput-object v1, p0, Landroid/support/v4/app/p;->p:Landroid/support/v4/app/n;

    .line 1956
    iput-object v1, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    .line 1957
    return-void
.end method

.method public final t()V
    .locals 2

    .prologue
    .line 1971
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1972
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1973
    iget-object v0, p0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1974
    if-eqz v0, :cond_0

    .line 1975
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->J()V

    .line 1972
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1979
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 620
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iget-object v1, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Landroid/support/v4/app/p;->q:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/f/e;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 628
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 626
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-static {v1, v0}, Landroid/support/v4/f/e;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method final u()Landroid/view/LayoutInflater$Factory;
    .locals 0

    .prologue
    .line 2201
    return-object p0
.end method
