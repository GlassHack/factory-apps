.class final Landroid/support/v7/internal/widget/af;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ac;

.field private b:Landroid/support/v7/a/c;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ac;Landroid/content/Context;Landroid/support/v7/a/c;Z)V
    .locals 2

    .prologue
    .line 377
    iput-object p1, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/ac;

    .line 378
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/b/b;->d:I

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 379
    iput-object p3, p0, Landroid/support/v7/internal/widget/af;->b:Landroid/support/v7/a/c;

    .line 381
    const v0, 0x800013

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/af;->setGravity(I)V

    .line 385
    invoke-direct {p0}, Landroid/support/v7/internal/widget/af;->b()V

    .line 386
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v6, 0x8

    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 431
    iget-object v2, p0, Landroid/support/v7/internal/widget/af;->b:Landroid/support/v7/a/c;

    .line 432
    invoke-virtual {v2}, Landroid/support/v7/a/c;->c()Landroid/view/View;

    move-result-object v3

    .line 433
    if-eqz v3, :cond_4

    .line 434
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 435
    if-eq v0, p0, :cond_1

    .line 436
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 437
    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/af;->addView(Landroid/view/View;)V

    .line 439
    :cond_1
    iput-object v3, p0, Landroid/support/v7/internal/widget/af;->e:Landroid/view/View;

    .line 440
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 442
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    :cond_3
    :goto_0
    return-void

    .line 446
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->e:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 447
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/af;->removeView(Landroid/view/View;)V

    .line 448
    iput-object v7, p0, Landroid/support/v7/internal/widget/af;->e:Landroid/view/View;

    .line 451
    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/a/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 452
    invoke-virtual {v2}, Landroid/support/v7/a/c;->b()Ljava/lang/CharSequence;

    move-result-object v3

    .line 454
    if-eqz v0, :cond_b

    .line 455
    iget-object v4, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    if-nez v4, :cond_6

    .line 456
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/af;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 457
    new-instance v5, Landroid/support/v7/widget/ae;

    invoke-direct {v5, v8, v8}, Landroid/support/v7/widget/ae;-><init>(II)V

    .line 459
    iput v9, v5, Landroid/support/v7/widget/ae;->h:I

    .line 460
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    invoke-virtual {p0, v4, v1}, Landroid/support/v7/internal/widget/af;->addView(Landroid/view/View;I)V

    .line 462
    iput-object v4, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    .line 464
    :cond_6
    iget-object v4, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    :cond_7
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 472
    :goto_2
    if-eqz v0, :cond_d

    .line 473
    iget-object v4, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    if-nez v4, :cond_8

    .line 474
    new-instance v4, Landroid/support/v7/internal/widget/t;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/af;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Landroid/support/v7/b/b;->e:I

    invoke-direct {v4, v5, v7, v6}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 476
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 477
    new-instance v5, Landroid/support/v7/widget/ae;

    invoke-direct {v5, v8, v8}, Landroid/support/v7/widget/ae;-><init>(II)V

    .line 479
    iput v9, v5, Landroid/support/v7/widget/ae;->h:I

    .line 480
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/af;->addView(Landroid/view/View;)V

    .line 482
    iput-object v4, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    .line 484
    :cond_8
    iget-object v4, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v3, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    :cond_9
    :goto_3
    iget-object v3, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 492
    iget-object v3, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/support/v7/a/c;->d()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 495
    :cond_a
    if-nez v0, :cond_e

    invoke-virtual {v2}, Landroid/support/v7/a/c;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 496
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/widget/af;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 466
    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 467
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v0, v1

    .line 471
    goto :goto_2

    .line 486
    :cond_d
    iget-object v3, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 487
    iget-object v3, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object v3, p0, Landroid/support/v7/internal/widget/af;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 498
    :cond_e
    invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/af;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 499
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/af;->setLongClickable(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v7/a/c;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->b:Landroid/support/v7/a/c;

    return-object v0
.end method

.method public final a(Landroid/support/v7/a/c;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Landroid/support/v7/internal/widget/af;->b:Landroid/support/v7/a/c;

    .line 390
    invoke-direct {p0}, Landroid/support/v7/internal/widget/af;->b()V

    .line 391
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 406
    const-class v0, Landroid/support/v7/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 407
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 415
    const-class v0, Landroid/support/v7/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 417
    :cond_0
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 505
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 506
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/af;->getLocationOnScreen([I)V

    .line 508
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/af;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 509
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/af;->getWidth()I

    move-result v2

    .line 510
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/af;->getHeight()I

    move-result v3

    .line 511
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 513
    iget-object v5, p0, Landroid/support/v7/internal/widget/af;->b:Landroid/support/v7/a/c;

    invoke-virtual {v5}, Landroid/support/v7/a/c;->d()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 516
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 519
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public final onMeasure(II)V
    .locals 2

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 424
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/ac;

    iget v0, v0, Landroid/support/v7/internal/widget/ac;->b:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/af;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/ac;

    iget v1, v1, Landroid/support/v7/internal/widget/ac;->b:I

    if-le v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Landroid/support/v7/internal/widget/af;->a:Landroid/support/v7/internal/widget/ac;

    iget v0, v0, Landroid/support/v7/internal/widget/ac;->b:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 428
    :cond_0
    return-void
.end method

.method public final setSelected(Z)V
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/af;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 396
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->setSelected(Z)V

    .line 397
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 398
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/af;->sendAccessibilityEvent(I)V

    .line 400
    :cond_0
    return-void

    .line 395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
