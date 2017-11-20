.class public Lcom/google/android/pano/widget/InlineKeyboard;
.super Landroid/widget/RelativeLayout;
.source "InlineKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;,
        Lcom/google/android/pano/widget/InlineKeyboard$Listener;
    }
.end annotation


# static fields
.field private static sKeyContentDescriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

.field private mCurrentFlipperMode:I

.field private mCurrentMode:I

.field private mHasFocus:Z

.field private mInLongClick:Z

.field private mKeyButtonTextColor:Landroid/content/res/ColorStateList;

.field private mKeyDefaultColor:Ljava/lang/Integer;

.field private mKeyFocusColor:Ljava/lang/Integer;

.field private mKeyListener:Landroid/view/View$OnClickListener;

.field private mKeyLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mListener:Lcom/google/android/pano/widget/InlineKeyboard$Listener;

.field private mModeToggle:Landroid/widget/Button;

.field private mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mRightMostButton:Landroid/view/View;

.field private mShowDone:Z

.field private mSpeedbump:Lcom/google/android/pano/widget/Speedbump;

.field private mTrackpadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

.field private mViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static synthetic access$000(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mListener:Lcom/google/android/pano/widget/InlineKeyboard$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/widget/InlineKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mInLongClick:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/pano/widget/InlineKeyboard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mInLongClick:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/pano/widget/InlineKeyboard;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->toggleMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/pano/widget/InlineKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/pano/widget/InlineKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mHasFocus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/pano/widget/InlineKeyboard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mHasFocus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/pano/widget/InlineKeyboard;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/widget/InlineKeyboard;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mRightMostButton:Landroid/view/View;

    return-object v0
.end method

.method private addKeys(Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;ILjava/lang/String;)V
    .locals 10
    .param p1, "holder"    # Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;
    .param p2, "arrayId"    # I
    .param p3, "whiteListKeys"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "keys":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->removeAllKeys()V

    .line 498
    invoke-virtual {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 499
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_5

    .line 500
    aget-object v1, v5, v2

    .line 501
    .local v1, "currentKey":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 503
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 499
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :cond_0
    sget v7, Lcom/google/android/pano/R$layout;->key_button:I

    invoke-virtual {p1}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->getKeysHolder()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 511
    .local v4, "keyButton":Landroid/widget/Button;
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 512
    move-object v6, v1

    .line 513
    .local v6, "realChar":Ljava/lang/String;
    sget-object v7, Lcom/google/android/pano/widget/InlineKeyboard;->sKeyContentDescriptions:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    .local v0, "contentDescription":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    :cond_1
    const-string v7, "_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 518
    const-string v6, " "

    .line 520
    :cond_2
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 521
    iget-object v7, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v7, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyDefaultColor:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyFocusColor:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 524
    iget-object v7, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 526
    :cond_3
    iget-object v7, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 527
    iget-object v7, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyButtonTextColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_4

    .line 528
    iget-object v7, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyButtonTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 530
    :cond_4
    invoke-virtual {p1, v4}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->addKey(Landroid/view/View;)V

    goto :goto_1

    .line 532
    .end local v0    # "contentDescription":Ljava/lang/String;
    .end local v1    # "currentKey":Ljava/lang/String;
    .end local v4    # "keyButton":Landroid/widget/Button;
    .end local v6    # "realChar":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, v9}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->getKeyAt(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/google/android/pano/widget/InlineKeyboard$10;

    invoke-direct {v8, p0}, Lcom/google/android/pano/widget/InlineKeyboard$10;-><init>(Lcom/google/android/pano/widget/InlineKeyboard;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 545
    return-void
.end method

.method private findNextMode(III)I
    .locals 3
    .param p1, "currentMode"    # I
    .param p2, "currentFlipperMode"    # I
    .param p3, "maxMode"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "found":Z
    move v1, p2

    .line 336
    .local v1, "nextMode":I
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 337
    shr-int/lit8 v1, v1, 0x1

    .line 339
    if-nez v1, :cond_1

    .line 340
    move v1, p3

    .line 343
    :cond_1
    and-int v2, v1, p1

    if-eqz v2, :cond_0

    .line 345
    const/4 v0, 0x1

    goto :goto_0

    .line 349
    :cond_2
    return v1
.end method

.method private getCurrentKeyboard()Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    packed-switch v0, :pswitch_data_0

    .line 554
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 550
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    goto :goto_0

    .line 552
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getViewFlipperIndex(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 329
    :goto_0
    return v0

    .line 322
    :pswitch_0
    const/4 v0, 0x0

    .line 323
    goto :goto_0

    .line 325
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setFlipperMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 471
    iget v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    if-eq p1, v1, :cond_0

    .line 472
    iput p1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    .line 474
    iget v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    packed-switch v1, :pswitch_data_0

    .line 489
    :goto_0
    iget v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/InlineKeyboard;->getViewFlipperIndex(I)I

    move-result v0

    .line 490
    .local v0, "displayChild":I
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 491
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->postInvalidate()V

    .line 493
    .end local v0    # "displayChild":I
    :cond_0
    return-void

    .line 476
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    sget v2, Lcom/google/android/pano/R$string;->btn_mode_number:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 477
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/pano/R$string;->content_description_btn_mode_number:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 482
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    sget v2, Lcom/google/android/pano/R$string;->btn_mode_alphabet:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 483
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/pano/R$string;->content_description_btn_mode_alphabet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 353
    invoke-virtual {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 354
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/google/android/pano/R$layout;->inline_keyboard:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 355
    invoke-virtual {p0, v4}, Lcom/google/android/pano/widget/InlineKeyboard;->setFocusable(Z)V

    .line 356
    const/high16 v3, 0x20000

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->setDescendantFocusability(I)V

    .line 358
    sget v3, Lcom/google/android/pano/R$id;->mode_toggle:I

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    .line 359
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    new-instance v4, Lcom/google/android/pano/widget/InlineKeyboard$4;

    invoke-direct {v4, p0}, Lcom/google/android/pano/widget/InlineKeyboard$4;-><init>(Lcom/google/android/pano/widget/InlineKeyboard;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyButtonTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    iget-object v4, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyButtonTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 369
    :cond_0
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyDefaultColor:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mKeyFocusColor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 370
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    iget-object v4, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 373
    :cond_1
    sget v3, Lcom/google/android/pano/R$id;->mode_holder:I

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 375
    sget v3, Lcom/google/android/pano/R$id;->done:I

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 376
    .local v1, "doneButton":Landroid/view/View;
    new-instance v3, Lcom/google/android/pano/widget/InlineKeyboard$5;

    invoke-direct {v3, p0}, Lcom/google/android/pano/widget/InlineKeyboard$5;-><init>(Lcom/google/android/pano/widget/InlineKeyboard;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-boolean v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mShowDone:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    sget v3, Lcom/google/android/pano/R$id;->backspace:I

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, "backspaceButton":Landroid/view/View;
    new-instance v3, Lcom/google/android/pano/widget/InlineKeyboard$6;

    invoke-direct {v3, p0}, Lcom/google/android/pano/widget/InlineKeyboard$6;-><init>(Lcom/google/android/pano/widget/InlineKeyboard;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    new-instance v3, Lcom/google/android/pano/widget/InlineKeyboard$7;

    invoke-direct {v3, p0}, Lcom/google/android/pano/widget/InlineKeyboard$7;-><init>(Lcom/google/android/pano/widget/InlineKeyboard;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 418
    sget v3, Lcom/google/android/pano/R$id;->alphabet_holder:I

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    iput-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    .line 419
    sget v3, Lcom/google/android/pano/R$id;->number_holder:I

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    iput-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    .line 422
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentMode:I

    .line 423
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->setMode(I)V

    .line 424
    iget-boolean v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mShowDone:Z

    if-eqz v3, :cond_3

    .end local v1    # "doneButton":Landroid/view/View;
    :goto_1
    iput-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mRightMostButton:Landroid/view/View;

    .line 425
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mRightMostButton:Landroid/view/View;

    new-instance v4, Lcom/google/android/pano/widget/InlineKeyboard$8;

    invoke-direct {v4, p0}, Lcom/google/android/pano/widget/InlineKeyboard$8;-><init>(Lcom/google/android/pano/widget/InlineKeyboard;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 443
    new-instance v3, Lcom/google/android/pano/widget/InlineKeyboard$9;

    invoke-direct {v3, p0}, Lcom/google/android/pano/widget/InlineKeyboard$9;-><init>(Lcom/google/android/pano/widget/InlineKeyboard;)V

    invoke-virtual {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 460
    new-instance v3, Lcom/google/android/pano/widget/TrackpadNavigation;

    iget-object v4, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    invoke-direct {v3, v4}, Lcom/google/android/pano/widget/TrackpadNavigation;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mTrackpadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    .line 461
    iget-object v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mTrackpadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Lcom/google/android/pano/widget/TrackpadNavigation;->setSensitivityX(F)V

    .line 462
    return-void

    .line 386
    .end local v0    # "backspaceButton":Landroid/view/View;
    .restart local v1    # "doneButton":Landroid/view/View;
    :cond_2
    const/16 v3, 0x8

    goto :goto_0

    .restart local v0    # "backspaceButton":Landroid/view/View;
    :cond_3
    move-object v1, v0

    .line 424
    goto :goto_1
.end method

.method private toggleMode()V
    .locals 4

    .prologue
    .line 465
    iget v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentMode:I

    iget v2, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->findNextMode(III)I

    move-result v0

    .line 467
    .local v0, "nextMode":I
    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/InlineKeyboard;->setFlipperMode(I)V

    .line 468
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 568
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/pano/widget/TrackpadNavigation;->getDirection(I)I

    move-result v0

    .line 569
    .local v0, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_1

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mSpeedbump:Lcom/google/android/pano/widget/Speedbump;

    invoke-virtual {v2, v1}, Lcom/google/android/pano/widget/Speedbump;->setEnabled(Z)V

    .line 576
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x82

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mSpeedbump:Lcom/google/android/pano/widget/Speedbump;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/Speedbump;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 578
    iget-object v2, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mSpeedbump:Lcom/google/android/pano/widget/Speedbump;

    invoke-virtual {v2}, Lcom/google/android/pano/widget/Speedbump;->isExpired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 589
    :goto_0
    return v1

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mSpeedbump:Lcom/google/android/pano/widget/Speedbump;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/pano/widget/Speedbump;->setEnabled(Z)V

    .line 585
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mListener:Lcom/google/android/pano/widget/InlineKeyboard$Listener;

    if-eqz v1, :cond_4

    .line 587
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mListener:Lcom/google/android/pano/widget/InlineKeyboard$Listener;

    invoke-interface {v1}, Lcom/google/android/pano/widget/InlineKeyboard$Listener;->onDone()V

    .line 589
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 222
    invoke-virtual {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.athome.action.IME_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.athome.action.IME_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 229
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 216
    invoke-direct {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->setupViews()V

    .line 217
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    if-ne v0, v1, :cond_0

    .line 596
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 599
    :goto_0
    return v0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mTrackpadNavigation:Lcom/google/android/pano/widget/TrackpadNavigation;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/TrackpadNavigation;->deliverGenericMotionEvent(Landroid/view/MotionEvent;)V

    .line 599
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 559
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 560
    invoke-direct {p0}, Lcom/google/android/pano/widget/InlineKeyboard;->getCurrentKeyboard()Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    move-result-object v0

    .line 561
    .local v0, "keys":Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->removeFocus()V

    .line 564
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/pano/widget/InlineKeyboard;->setMode(ILjava/lang/String;)V

    .line 237
    return-void
.end method

.method public setMode(ILjava/lang/String;)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "whiteListKeys"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    iget v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentMode:I

    if-ne p1, v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 250
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 298
    invoke-virtual {p0, v6}, Lcom/google/android/pano/widget/InlineKeyboard;->setMode(I)V

    goto :goto_0

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    sget v1, Lcom/google/android/pano/R$array;->alphabet_keys:I

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/pano/widget/InlineKeyboard;->addKeys(Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;ILjava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iput v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentMode:I

    .line 260
    iput v3, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    .line 262
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/InlineKeyboard;->getViewFlipperIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    sget v1, Lcom/google/android/pano/R$array;->number_keys:I

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/pano/widget/InlineKeyboard;->addKeys(Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;ILjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iput v5, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentMode:I

    .line 274
    iput v5, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    .line 276
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    invoke-direct {p0, v1}, Lcom/google/android/pano/widget/InlineKeyboard;->getViewFlipperIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mNumberKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    sget v1, Lcom/google/android/pano/R$array;->number_keys:I

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/pano/widget/InlineKeyboard;->addKeys(Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;ILjava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mAlphabetKeys:Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    sget v1, Lcom/google/android/pano/R$array;->alphabet_keys:I

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/pano/widget/InlineKeyboard;->addKeys(Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;ILjava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mModeToggle:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->postInvalidate()V

    .line 290
    iput v6, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentMode:I

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/pano/widget/InlineKeyboard;->mCurrentFlipperMode:I

    .line 294
    invoke-direct {p0, v3}, Lcom/google/android/pano/widget/InlineKeyboard;->setFlipperMode(I)V

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
