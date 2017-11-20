.class public final Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/support/v4/widget/i;

.field private c:I

.field private d:I

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private final g:Landroid/support/v4/widget/ao;

.field private final h:Landroid/support/v4/widget/ao;

.field private final i:Landroid/support/v4/widget/m;

.field private final j:Landroid/support/v4/widget/m;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Landroid/support/v4/widget/j;

.field private s:F

.field private t:F

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->a:[I

    return-void
.end method

.method private a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 384
    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/v;->a(II)I

    move-result v1

    .line 386
    if-ne v1, v2, :cond_3

    .line 387
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->n:I

    .line 391
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 393
    if-ne v1, v2, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    .line 394
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/widget/ao;->e()V

    .line 396
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 411
    :cond_2
    :goto_2
    return-void

    .line 388
    :cond_3
    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 389
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    goto :goto_0

    .line 393
    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    goto :goto_1

    .line 398
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_2

    .line 400
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    goto :goto_2

    .line 404
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)V

    goto :goto_2

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1092
    .line 1093
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 1094
    :goto_0
    if-ge v2, v4, :cond_3

    .line 1095
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1096
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 1098
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v6, v0, Landroid/support/v4/widget/k;->c:Z

    if-eqz v6, :cond_1

    .line 1099
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1104
    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1105
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    neg-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1112
    :goto_1
    iput-boolean v3, v0, Landroid/support/v4/widget/k;->c:Z

    .line 1094
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1108
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_1

    .line 1115
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->i:Landroid/support/v4/widget/m;

    invoke-virtual {v0}, Landroid/support/v4/widget/m;->a()V

    .line 1116
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/m;

    invoke-virtual {v0}, Landroid/support/v4/widget/m;->a()V

    .line 1118
    if-eqz v1, :cond_4

    .line 1119
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1121
    :cond_4
    return-void
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->a:[I

    return-object v0
.end method

.method static b(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget v0, v0, Landroid/support/v4/widget/k;->b:F

    return v0
.end method

.method private b()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1308
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v3, v2

    .line 1309
    :goto_0
    if-ge v3, v4, :cond_3

    .line 1310
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1311
    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget v0, v0, Landroid/support/v4/widget/k;->b:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    move-object v0, v1

    .line 1315
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 1311
    goto :goto_1

    .line 1309
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1315
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static c(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 968
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget v0, v0, Landroid/support/v4/widget/k;->a:I

    .line 969
    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/v;->a(II)I

    move-result v0

    .line 971
    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 84
    invoke-static {p0}, Landroid/support/v4/view/ax;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ax;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget v0, v0, Landroid/support/v4/widget/k;->a:I

    .line 631
    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/v;->a(II)I

    move-result v0

    return v0
.end method

.method private static g(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 964
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget v0, v0, Landroid/support/v4/widget/k;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1129
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Z

    if-eqz v0, :cond_1

    .line 1134
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 1135
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/support/v4/widget/k;->b:F

    .line 1136
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/k;->d:Z

    .line 1145
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1146
    return-void

    .line 1138
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1141
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;II)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 468
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)I

    move-result v0

    .line 469
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 470
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:I

    .line 474
    :goto_0
    return v0

    .line 471
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 472
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    goto :goto_0

    .line 474
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 669
    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/v;->a(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    .line 671
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 672
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 673
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 674
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)I

    move-result v4

    .line 675
    and-int/lit8 v4, v4, 0x7

    if-ne v4, v2, :cond_0

    .line 679
    :goto_1
    return-object v0

    .line 672
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 679
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(ILandroid/view/View;)V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x4

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 522
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    invoke-virtual {v1}, Landroid/support/v4/widget/ao;->a()I

    move-result v1

    .line 523
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    invoke-virtual {v4}, Landroid/support/v4/widget/ao;->a()I

    move-result v4

    .line 526
    if-eq v1, v3, :cond_0

    if-ne v4, v3, :cond_5

    :cond_0
    move v1, v3

    .line 534
    :goto_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 535
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 536
    iget v4, v0, Landroid/support/v4/widget/k;->b:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    .line 537
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget-boolean v4, v0, Landroid/support/v4/widget/k;->d:Z

    if-eqz v4, :cond_3

    iput-boolean v2, v0, Landroid/support/v4/widget/k;->d:Z

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:Landroid/support/v4/widget/j;

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v3}, Landroid/support/v4/view/ax;->b(Landroid/view/View;I)V

    :cond_2
    invoke-static {p2, v6}, Landroid/support/v4/view/ax;->b(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 543
    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->k:I

    if-eq v1, v0, :cond_4

    .line 544
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->k:I

    .line 546
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_4

    .line 547
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:Landroid/support/v4/widget/j;

    .line 550
    :cond_4
    return-void

    .line 528
    :cond_5
    if-eq v1, v0, :cond_6

    if-ne v4, v0, :cond_7

    :cond_6
    move v1, v0

    .line 529
    goto :goto_0

    :cond_7
    move v1, v2

    .line 531
    goto :goto_0

    .line 538
    :cond_8
    iget v0, v0, Landroid/support/v4/widget/k;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    .line 539
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget-boolean v4, v0, Landroid/support/v4/widget/k;->d:Z

    if-nez v4, :cond_3

    iput-boolean v3, v0, Landroid/support/v4/widget/k;->d:Z

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:Landroid/support/v4/widget/j;

    :cond_9
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0, v6}, Landroid/support/v4/view/ax;->b(Landroid/view/View;I)V

    :cond_a
    invoke-static {p2, v3}, Landroid/support/v4/view/ax;->b(Landroid/view/View;I)V

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method final a(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 613
    iget v1, v0, Landroid/support/v4/widget/k;->b:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iput p2, v0, Landroid/support/v4/widget/k;->b:F

    .line 618
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:Landroid/support/v4/widget/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:Landroid/support/v4/widget/j;

    goto :goto_0
.end method

.method final a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)I

    move-result v0

    .line 636
    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1400
    if-gtz p2, :cond_0

    if-gez p2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1401
    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/support/v4/view/ax;->b(Landroid/view/View;I)V

    .line 1405
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/i;

    invoke-static {p1, v0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1411
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    return-void

    .line 1408
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ax;->b(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1295
    instance-of v0, p1, Landroid/support/v4/widget/k;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final computeScroll()V
    .locals 4

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 880
    const/4 v1, 0x0

    .line 881
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 882
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget v0, v0, Landroid/support/v4/widget/k;->b:F

    .line 883
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 881
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 885
    :cond_0
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->e:F

    .line 888
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    invoke-virtual {v0}, Landroid/support/v4/widget/ao;->g()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    invoke-virtual {v1}, Landroid/support/v4/widget/ao;->g()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 889
    invoke-static {p0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;)V

    .line 891
    :cond_1
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1169
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Z

    if-eqz v0, :cond_1

    .line 1174
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 1175
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/k;->b:F

    .line 1176
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/k;->d:Z

    .line 1185
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1186
    return-void

    .line 1178
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1182
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;II)Z

    goto :goto_0
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .prologue
    .line 903
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v4

    .line 904
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v5

    .line 905
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 907
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 908
    if-eqz v5, :cond_6

    .line 909
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 910
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_5

    .line 911
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 912
    if-eq v8, p2, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {v8}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, v4, :cond_4

    .line 915
    const/4 v0, 0x3

    invoke-virtual {p0, v8, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 919
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    .line 920
    if-le v0, v1, :cond_a

    :goto_2
    move v1, v0

    move v0, v2

    .line 910
    :cond_0
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 912
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 922
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 923
    if-lt v0, v2, :cond_0

    :cond_4
    move v0, v2

    goto :goto_3

    .line 926
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_6
    move v0, v2

    .line 928
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 929
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 931
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->e:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    if-eqz v5, :cond_8

    .line 932
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->d:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 933
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->e:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 934
    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->d:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 935
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 937
    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 960
    :cond_7
    :goto_4
    return v7

    .line 938
    :cond_8
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 939
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 940
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 941
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    invoke-virtual {v2}, Landroid/support/v4/widget/ao;->b()I

    move-result v2

    .line 942
    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 944
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 946
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 947
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 948
    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 949
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 950
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 951
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 952
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    invoke-virtual {v3}, Landroid/support/v4/widget/ao;->b()I

    move-result v3

    .line 953
    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 955
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 957
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 958
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method protected final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1281
    new-instance v0, Landroid/support/v4/widget/k;

    invoke-direct {v0}, Landroid/support/v4/widget/k;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1300
    new-instance v0, Landroid/support/v4/widget/k;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1286
    instance-of v0, p1, Landroid/support/v4/widget/k;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/k;

    check-cast p1, Landroid/support/v4/widget/k;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/k;-><init>(Landroid/support/v4/widget/k;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/k;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/k;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/k;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/k;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 706
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Z

    .line 708
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Z

    .line 702
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 976
    invoke-static {p1}, Landroid/support/v4/view/ao;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 979
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ao;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ao;->a(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 984
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 1016
    :goto_1
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget-boolean v0, v0, Landroid/support/v4/widget/k;->c:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    .line 986
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 988
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:F

    .line 989
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->t:F

    .line 990
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->e:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/ao;->b(II)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 994
    :goto_4
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 995
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    goto :goto_1

    .line 1001
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    invoke-virtual {v0}, Landroid/support/v4/widget/ao;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->i:Landroid/support/v4/widget/m;

    invoke-virtual {v0}, Landroid/support/v4/widget/m;->a()V

    .line 1003
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:Landroid/support/v4/widget/m;

    invoke-virtual {v0}, Landroid/support/v4/widget/m;->a()V

    move v0, v2

    goto :goto_1

    .line 1010
    :pswitch_2
    invoke-direct {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1011
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1012
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    goto :goto_0

    .line 1016
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    .line 984
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1335
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->b()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1336
    invoke-static {p2}, Landroid/support/v4/view/z;->c(Landroid/view/KeyEvent;)V

    .line 1339
    :goto_1
    return v0

    .line 1335
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1339
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1344
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1345
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->b()Landroid/view/View;

    move-result-object v1

    .line 1346
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1347
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1349
    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1351
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Z

    .line 789
    sub-int v6, p4, p2

    .line 790
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 791
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_8

    .line 792
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 794
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 795
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 800
    invoke-static {v8}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    iget v1, v0, Landroid/support/v4/widget/k;->leftMargin:I

    iget v2, v0, Landroid/support/v4/widget/k;->topMargin:I

    iget v3, v0, Landroid/support/v4/widget/k;->leftMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v4/widget/k;->topMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 791
    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 805
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 806
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 810
    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 811
    neg-int v1, v9

    int-to-float v2, v9

    iget v3, v0, Landroid/support/v4/widget/k;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    .line 812
    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    .line 818
    :goto_2
    iget v3, v0, Landroid/support/v4/widget/k;->b:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 820
    :goto_3
    iget v4, v0, Landroid/support/v4/widget/k;->a:I

    and-int/lit8 v4, v4, 0x70

    .line 822
    sparse-switch v4, :sswitch_data_0

    .line 825
    iget v4, v0, Landroid/support/v4/widget/k;->topMargin:I

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/k;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 852
    :goto_4
    if-eqz v3, :cond_2

    .line 857
    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 860
    :cond_2
    iget v0, v0, Landroid/support/v4/widget/k;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 861
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 862
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 814
    :cond_3
    int-to-float v1, v9

    iget v2, v0, Landroid/support/v4/widget/k;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    .line 815
    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_2

    .line 818
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 831
    :sswitch_0
    sub-int v4, p5, p3

    .line 832
    iget v10, v0, Landroid/support/v4/widget/k;->bottomMargin:I

    sub-int v10, v4, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/k;->bottomMargin:I

    sub-int/2addr v4, v11

    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 840
    :sswitch_1
    sub-int v11, p5, p3

    .line 841
    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    .line 845
    iget v12, v0, Landroid/support/v4/widget/k;->topMargin:I

    if-ge v4, v12, :cond_6

    .line 846
    iget v4, v0, Landroid/support/v4/widget/k;->topMargin:I

    .line 850
    :cond_5
    :goto_6
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 847
    :cond_6
    add-int v12, v4, v10

    iget v13, v0, Landroid/support/v4/widget/k;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_5

    .line 848
    iget v4, v0, Landroid/support/v4/widget/k;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_6

    .line 860
    :cond_7
    const/4 v0, 0x4

    goto :goto_5

    .line 866
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Z

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Z

    .line 868
    return-void

    .line 822
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 10

    .prologue
    const/16 v1, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    .line 712
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 713
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 714
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 715
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 717
    if-ne v3, v9, :cond_0

    if-eq v4, v9, :cond_a

    .line 718
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 723
    if-eq v3, v6, :cond_1

    .line 724
    if-nez v3, :cond_1

    move v2, v1

    .line 729
    :cond_1
    if-eq v4, v6, :cond_a

    .line 730
    if-nez v4, :cond_a

    .line 742
    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 745
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    .line 747
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_9

    .line 748
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 750
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_2

    .line 751
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 756
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 758
    iget v6, v0, Landroid/support/v4/widget/k;->leftMargin:I

    sub-int v6, v2, v6

    iget v7, v0, Landroid/support/v4/widget/k;->rightMargin:I

    sub-int/2addr v6, v7

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 760
    iget v7, v0, Landroid/support/v4/widget/k;->topMargin:I

    sub-int v7, v1, v7

    iget v0, v0, Landroid/support/v4/widget/k;->bottomMargin:I

    sub-int v0, v7, v0

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 762
    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    .line 747
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 737
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_4
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 764
    invoke-direct {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    .line 766
    and-int/lit8 v7, v6, 0x0

    if-eqz v7, :cond_7

    .line 767
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Child drawer has absolute gravity "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v0, v6, 0x3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    const-string v0, "LEFT"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but this DrawerLayout already has a drawer view along that edge"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    and-int/lit8 v0, v6, 0x5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    const-string v0, "RIGHT"

    goto :goto_3

    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 771
    :cond_7
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->c:I

    iget v7, v0, Landroid/support/v4/widget/k;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/support/v4/widget/k;->rightMargin:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/support/v4/widget/k;->width:I

    invoke-static {p1, v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 774
    iget v7, v0, Landroid/support/v4/widget/k;->topMargin:I

    iget v8, v0, Landroid/support/v4/widget/k;->bottomMargin:I

    add-int/2addr v7, v8

    iget v0, v0, Landroid/support/v4/widget/k;->height:I

    invoke-static {p2, v7, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 777
    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 779
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_9
    return-void

    :cond_a
    move v1, v0

    goto/16 :goto_0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1356
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1357
    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1359
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_0

    .line 1360
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_0

    .line 1362
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    .line 1366
    :cond_0
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 1367
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 1368
    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 1372
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1374
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v2, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1376
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1377
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1378
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1379
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1380
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 1384
    iget-boolean v4, v0, Landroid/support/v4/widget/k;->d:Z

    if-eqz v4, :cond_1

    .line 1385
    iget v0, v0, Landroid/support/v4/widget/k;->a:I

    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    .line 1391
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:I

    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    .line 1392
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:I

    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    .line 1394
    return-object v2

    .line 1377
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1021
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ao;->b(Landroid/view/MotionEvent;)V

    .line 1022
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/ao;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ao;->b(Landroid/view/MotionEvent;)V

    .line 1024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1025
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1068
    :goto_0
    :pswitch_0
    return v1

    .line 1029
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1030
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1031
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:F

    .line 1032
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->t:F

    .line 1033
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1034
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    goto :goto_0

    .line 1039
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1042
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    float-to-int v5, v0

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ao;->b(II)Landroid/view/View;

    move-result-object v4

    .line 1043
    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1044
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->s:F

    sub-float/2addr v0, v4

    .line 1045
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->t:F

    sub-float/2addr v3, v4

    .line 1046
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->g:Landroid/support/v4/widget/ao;

    invoke-virtual {v4}, Landroid/support/v4/widget/ao;->d()I

    move-result v4

    .line 1047
    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 1049
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v5

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    iget-boolean v0, v0, Landroid/support/v4/widget/k;->d:Z

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 1050
    :goto_2
    if-eqz v0, :cond_3

    .line 1051
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 1055
    :goto_3
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1056
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    goto :goto_0

    .line 1049
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 1051
    goto :goto_3

    .line 1061
    :pswitch_3
    invoke-direct {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1062
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1063
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->q:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 1076
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1078
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    .line 1079
    if-eqz p1, :cond_0

    .line 1080
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1082
    :cond_0
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Z

    if-nez v0, :cond_0

    .line 873
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 875
    :cond_0
    return-void
.end method
