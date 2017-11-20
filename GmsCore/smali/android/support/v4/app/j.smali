.class public Landroid/support/v4/app/j;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field public final b:Landroid/support/v4/app/p;

.field final c:Landroid/support/v4/app/n;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Landroid/support/v4/f/q;

.field m:Landroid/support/v4/app/an;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0, p0}, Landroid/support/v4/app/k;-><init>(Landroid/support/v4/app/j;)V

    iput-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/support/v4/app/p;

    invoke-direct {v0}, Landroid/support/v4/app/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    .line 106
    new-instance v0, Landroid/support/v4/app/l;

    invoke-direct {v0, p0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/j;)V

    iput-object v0, p0, Landroid/support/v4/app/j;->c:Landroid/support/v4/app/n;

    .line 126
    return-void
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    .line 667
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 668
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 676
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 678
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x45

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x48

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x43

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x53

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x50

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 693
    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 698
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 699
    const-string v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 702
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 705
    const/high16 v0, -0x1000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_1

    .line 713
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 718
    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_1
    :goto_b
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 673
    :sswitch_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 674
    :sswitch_1
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 675
    :sswitch_2
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 678
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 679
    goto/16 :goto_2

    .line 680
    :cond_4
    const/16 v0, 0x44

    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 681
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 682
    goto/16 :goto_5

    :cond_7
    move v0, v2

    .line 683
    goto/16 :goto_6

    :cond_8
    move v0, v2

    .line 684
    goto/16 :goto_7

    :cond_9
    move v1, v2

    .line 686
    goto/16 :goto_8

    :cond_a
    move v0, v2

    .line 687
    goto/16 :goto_9

    .line 707
    :sswitch_3
    :try_start_1
    const-string v0, "app"

    goto :goto_a

    .line 710
    :sswitch_4
    const-string v0, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    .line 672
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 705
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 733
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    if-nez p3, :cond_1

    .line 735
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    :cond_0
    return-void

    .line 738
    :cond_1
    invoke-static {p3}, Landroid/support/v4/app/j;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 742
    check-cast p3, Landroid/view/ViewGroup;

    .line 743
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 744
    if-lez v1, :cond_0

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 749
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/app/j;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Landroid/support/v4/f/q;

    invoke-direct {v0}, Landroid/support/v4/f/q;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    .line 860
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/an;

    .line 861
    if-nez v0, :cond_2

    .line 862
    if-eqz p3, :cond_1

    .line 863
    new-instance v0, Landroid/support/v4/app/an;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/an;-><init>(Ljava/lang/String;Landroid/support/v4/app/j;Z)V

    .line 864
    iget-object v1, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/f/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :cond_1
    :goto_0
    return-object v0

    .line 867
    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/j;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 819
    if-ne p3, v0, :cond_0

    .line 820
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 827
    :goto_0
    return-void

    .line 823
    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 824
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_1
    iget v0, p1, Landroid/support/v4/app/Fragment;->p:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/an;

    .line 833
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/an;->g:Z

    if-nez v1, :cond_0

    .line 834
    invoke-virtual {v0}, Landroid/support/v4/app/an;->h()V

    .line 835
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 754
    iget-boolean v0, p0, Landroid/support/v4/app/j;->g:Z

    if-nez v0, :cond_1

    .line 755
    iput-boolean v1, p0, Landroid/support/v4/app/j;->g:Z

    .line 756
    iput-boolean p1, p0, Landroid/support/v4/app/j;->h:Z

    .line 757
    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    iget-boolean v0, p0, Landroid/support/v4/app/j;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->k:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/j;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->c()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->q()V

    .line 760
    :cond_1
    return-void

    .line 758
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->d()V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final a_()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->n()V

    .line 439
    return-void
.end method

.method public b_()V
    .locals 2

    .prologue
    .line 617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->i:Z

    goto :goto_0
.end method

.method public final c()Landroid/support/v4/app/o;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 640
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 644
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    iget-boolean v1, p0, Landroid/support/v4/app/j;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    iget-boolean v1, p0, Landroid/support/v4/app/j;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    iget-boolean v1, p0, Landroid/support/v4/app/j;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    iget-boolean v1, p0, Landroid/support/v4/app/j;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 653
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    iget-boolean v0, p0, Landroid/support/v4/app/j;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 655
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 661
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 662
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 664
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j()V

    .line 144
    shr-int/lit8 v0, p1, 0x10

    .line 145
    if-eqz v0, :cond_3

    .line 146
    add-int/lit8 v0, v0, -0x1

    .line 147
    iget-object v1, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    iget-object v1, v1, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    iget-object v1, v1, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 148
    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    iget-object v1, v1, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 153
    if-nez v0, :cond_2

    .line 154
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_2
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 235
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->a(Landroid/content/res/Configuration;)V

    .line 236
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    iget-object v2, p0, Landroid/support/v4/app/j;->c:Landroid/support/v4/app/n;

    invoke-virtual {v0, p0, v2, v1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/j;Landroid/support/v4/app/n;Landroid/support/v4/app/Fragment;)V

    .line 245
    invoke-virtual {p0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Landroid/support/v4/app/j;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/m;

    .line 253
    if-eqz v0, :cond_1

    .line 254
    iget-object v2, v0, Landroid/support/v4/app/m;->e:Landroid/support/v4/f/q;

    iput-object v2, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    .line 256
    :cond_1
    if-eqz p1, :cond_2

    .line 257
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 258
    iget-object v3, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/support/v4/app/m;->d:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/p;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 260
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->k()V

    .line 261
    return-void

    :cond_3
    move-object v0, v1

    .line 258
    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 268
    if-nez p1, :cond_1

    .line 269
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 270
    iget-object v1, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/p;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 271
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 279
    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 287
    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 295
    :cond_0
    :goto_0
    return-object v0

    .line 291
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/p;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 292
    if-nez v0, :cond_0

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/j;->a(Z)V

    .line 307
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->s()V

    .line 308
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->h()V

    .line 311
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/support/v4/app/j;->onBackPressed()V

    .line 324
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 336
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->t()V

    .line 337
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 344
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    .line 348
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 356
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 353
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 348
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 400
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j()V

    .line 401
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 365
    packed-switch p1, :pswitch_data_0

    .line 370
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 371
    return-void

    .line 367
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/p;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->e:Z

    .line 380
    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 382
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->n()V

    .line 384
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->o()V

    .line 385
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 426
    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->n()V

    .line 428
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->g()Z

    .line 429
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 446
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 447
    iget-boolean v0, p0, Landroid/support/v4/app/j;->i:Z

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->i:Z

    .line 449
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 450
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/j;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 452
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/j;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 453
    iget-object v1, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/p;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 456
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 415
    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->e:Z

    .line 417
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->g()Z

    .line 418
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 473
    iget-boolean v0, p0, Landroid/support/v4/app/j;->f:Z

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0, v1}, Landroid/support/v4/app/j;->a(Z)V

    .line 477
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->h()Ljava/util/ArrayList;

    move-result-object v5

    .line 481
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->size()I

    move-result v6

    .line 485
    new-array v7, v6, [Landroid/support/v4/app/an;

    .line 486
    add-int/lit8 v0, v6, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_1

    .line 487
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    invoke-virtual {v0, v4}, Landroid/support/v4/f/q;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/an;

    aput-object v0, v7, v4

    .line 486
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 489
    :goto_1
    if-ge v3, v6, :cond_4

    .line 490
    aget-object v4, v7, v3

    .line 491
    iget-boolean v8, v4, Landroid/support/v4/app/an;->g:Z

    if-eqz v8, :cond_2

    move v0, v1

    .line 489
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 494
    :cond_2
    invoke-virtual {v4}, Landroid/support/v4/app/an;->h()V

    .line 495
    iget-object v8, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    iget-object v4, v4, Landroid/support/v4/app/an;->d:Ljava/lang/String;

    invoke-virtual {v8, v4}, Landroid/support/v4/f/q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move v0, v3

    .line 499
    :cond_4
    if-nez v5, :cond_5

    if-nez v0, :cond_5

    move-object v0, v2

    .line 509
    :goto_3
    return-object v0

    .line 503
    :cond_5
    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    .line 504
    iput-object v2, v0, Landroid/support/v4/app/m;->a:Ljava/lang/Object;

    .line 505
    iput-object v2, v0, Landroid/support/v4/app/m;->b:Ljava/lang/Object;

    .line 506
    iput-object v2, v0, Landroid/support/v4/app/m;->c:Landroid/support/v4/f/q;

    .line 507
    iput-object v5, v0, Landroid/support/v4/app/m;->d:Ljava/util/ArrayList;

    .line 508
    iget-object v1, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    iput-object v1, v0, Landroid/support/v4/app/m;->e:Landroid/support/v4/f/q;

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 517
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->i()Landroid/os/Parcelable;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_0

    .line 520
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 522
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 532
    iput-boolean v1, p0, Landroid/support/v4/app/j;->f:Z

    .line 533
    iput-boolean v1, p0, Landroid/support/v4/app/j;->g:Z

    .line 534
    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-boolean v0, p0, Landroid/support/v4/app/j;->d:Z

    if-nez v0, :cond_0

    .line 537
    iput-boolean v3, p0, Landroid/support/v4/app/j;->d:Z

    .line 538
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->l()V

    .line 541
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->j()V

    .line 542
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->g()Z

    .line 544
    iget-boolean v0, p0, Landroid/support/v4/app/j;->k:Z

    if-nez v0, :cond_2

    .line 545
    iput-boolean v3, p0, Landroid/support/v4/app/j;->k:Z

    .line 546
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->b()V

    .line 555
    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/j;->j:Z

    .line 559
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->m()V

    .line 560
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    if-eqz v0, :cond_5

    .line 561
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->size()I

    move-result v3

    .line 562
    new-array v4, v3, [Landroid/support/v4/app/an;

    .line 563
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 564
    iget-object v0, p0, Landroid/support/v4/app/j;->l:Landroid/support/v4/f/q;

    invoke-virtual {v0, v2}, Landroid/support/v4/f/q;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/an;

    aput-object v0, v4, v2

    .line 563
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 548
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/j;->j:Z

    if-nez v0, :cond_1

    .line 549
    const-string v0, "(root)"

    iget-boolean v2, p0, Landroid/support/v4/app/j;->k:Z

    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/an;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    .line 551
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    iget-boolean v0, v0, Landroid/support/v4/app/an;->f:Z

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Landroid/support/v4/app/j;->m:Landroid/support/v4/app/an;

    invoke-virtual {v0}, Landroid/support/v4/app/an;->b()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 566
    :goto_2
    if-ge v0, v3, :cond_5

    .line 567
    aget-object v1, v4, v0

    .line 568
    invoke-virtual {v1}, Landroid/support/v4/app/an;->e()V

    .line 569
    invoke-virtual {v1}, Landroid/support/v4/app/an;->g()V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 572
    :cond_5
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 579
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 581
    iput-boolean v1, p0, Landroid/support/v4/app/j;->f:Z

    .line 582
    iget-object v0, p0, Landroid/support/v4/app/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->p()V

    .line 585
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 808
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 809
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 812
    return-void
.end method
