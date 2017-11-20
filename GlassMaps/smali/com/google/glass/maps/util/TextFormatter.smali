.class public Lcom/google/glass/maps/util/TextFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_UNITS_SUPERSCRIPT:I = 0x1

.field private static final ICON_SCALE_RATIO:F = 1.0f

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SMALL_CAPS_RATIO:F = 0.75f

.field private static final STRING_PLACEHOLDER_1:Ljava/lang/String; = "%1$s"

.field private static final STRING_PLACEHOLDER_2:Ljava/lang/String; = "%2$s"

.field private static final STRING_PLACEHOLDER_LENGTH:I

.field private static sInstance:Lcom/google/glass/maps/util/TextFormatter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDistanceUtil:Lcom/google/glass/maps/util/DistanceUtil;

.field private mLastExitIconCue:Lcom/google/android/maps/driveabout/nav/aj;

.field private mLastExitIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSeparatorFirstChar:C

.field private final mSeparatorLastChar:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "%1$s"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/glass/maps/util/TextFormatter;->STRING_PLACEHOLDER_LENGTH:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/glass/maps/util/TextFormatter;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/google/glass/maps/util/DistanceUtil;

    invoke-direct {v0, p1}, Lcom/google/glass/maps/util/DistanceUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/util/TextFormatter;->mDistanceUtil:Lcom/google/glass/maps/util/DistanceUtil;

    .line 106
    sget v0, Lcom/google/glass/maps/R$string;->da_distance_format_separator:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/google/glass/maps/util/TextFormatter;->mSeparatorFirstChar:C

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/google/glass/maps/util/TextFormatter;->mSeparatorLastChar:C

    .line 110
    return-void
.end method

.method public static createForTesting(Landroid/content/Context;)Lcom/google/glass/maps/util/TextFormatter;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/glass/maps/util/TextFormatter;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/util/TextFormatter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/glass/maps/util/TextFormatter;->sInstance:Lcom/google/glass/maps/util/TextFormatter;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/google/glass/maps/util/TextFormatter;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/util/TextFormatter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/maps/util/TextFormatter;->sInstance:Lcom/google/glass/maps/util/TextFormatter;

    .line 90
    :cond_0
    return-void
.end method

.method private cueUsesIcon(Lcom/google/android/maps/driveabout/nav/aj;)Z
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static destroyInstanceForTesting()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/maps/util/TextFormatter;->sInstance:Lcom/google/glass/maps/util/TextFormatter;

    .line 95
    return-void
.end method

.method public static filterStepCues(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .prologue
    .line 364
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 402
    :goto_0
    return-object p0

    .line 369
    :cond_0
    new-instance v3, Lcom/google/android/a/a;

    invoke-direct {v3}, Lcom/google/android/a/a;-><init>()V

    .line 370
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    .line 371
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 372
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    new-instance v4, Lcom/google/android/a/a;

    invoke-direct {v4}, Lcom/google/android/a/a;-><init>()V

    .line 378
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 379
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 380
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    .line 381
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_6

    .line 383
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v6

    .line 384
    if-nez v6, :cond_4

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 389
    :cond_4
    if-eqz v6, :cond_5

    .line 390
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    :cond_5
    :goto_3
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_3

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 399
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 390
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object p0, v2

    .line 402
    goto/16 :goto_0
.end method

.method private findPrefixEnd(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 173
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 175
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    iget-char v3, p0, Lcom/google/glass/maps/util/TextFormatter;->mSeparatorFirstChar:C

    if-ne v2, v3, :cond_1

    .line 179
    :cond_0
    :goto_1
    return v0

    .line 173
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 179
    goto :goto_1
.end method

.method private findSuffixStart(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/google/glass/maps/util/TextFormatter;->findPrefixEnd(Ljava/lang/String;)I

    move-result v1

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-le v0, v1, :cond_2

    .line 186
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 187
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    iget-char v3, p0, Lcom/google/glass/maps/util/TextFormatter;->mSeparatorLastChar:C

    if-ne v2, v3, :cond_1

    .line 191
    :cond_0
    :goto_1
    return v0

    .line 185
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private static formatCueWithIcon(Lcom/google/android/maps/driveabout/nav/aj;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/16 v5, 0x21

    .line 244
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    new-instance v1, Lcom/google/glass/maps/util/ScalableImageSpan;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, p1, v2}, Lcom/google/glass/maps/util/ScalableImageSpan;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 v2, 0x0

    .line 247
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 246
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 253
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 254
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 255
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 256
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 258
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 261
    :cond_0
    return-object v0
.end method

.method private formatDistanceInternal(III)Landroid/text/Spannable;
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v1, 0x1

    .line 137
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/google/glass/maps/util/TextFormatter;->mDistanceUtil:Lcom/google/glass/maps/util/DistanceUtil;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/google/glass/maps/util/DistanceUtil;->formatDistance(IIZI)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/google/glass/maps/util/TextFormatter;->findPrefixEnd(Ljava/lang/String;)I

    move-result v3

    .line 149
    if-lez v3, :cond_0

    .line 150
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_0

    .line 151
    new-instance v4, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v4}, Landroid/text/style/SuperscriptSpan;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 155
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/maps/util/TextFormatter;->findSuffixStart(Ljava/lang/String;)I

    move-result v4

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 157
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_1

    .line 158
    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 164
    :cond_1
    if-ge v3, v4, :cond_2

    .line 165
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 168
    :cond_2
    return-object v2

    :cond_3
    move v0, v1

    .line 137
    goto :goto_0
.end method

.method private formatTimeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 7

    .prologue
    .line 552
    const-string v0, "%1$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 553
    sget v0, Lcom/google/glass/maps/util/TextFormatter;->STRING_PLACEHOLDER_LENGTH:I

    add-int v1, v3, v0

    .line 554
    const-string v0, "%2$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 555
    sget v0, Lcom/google/glass/maps/util/TextFormatter;->STRING_PLACEHOLDER_LENGTH:I

    add-int/2addr v0, v2

    .line 557
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 563
    if-ge v3, v2, :cond_0

    move v5, v2

    move v2, v1

    move v1, v5

    .line 580
    :goto_0
    invoke-virtual {v4, v1, v0, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 581
    invoke-virtual {v4, v3, v2, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 582
    return-object v4

    :cond_0
    move-object v5, p2

    move-object p2, p3

    move-object p3, v5

    move v6, v1

    move v1, v3

    move v3, v2

    move v2, v0

    move v0, v6

    .line 576
    goto :goto_0
.end method

.method public static getInstance()Lcom/google/glass/maps/util/TextFormatter;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/glass/maps/util/TextFormatter;->sInstance:Lcom/google/glass/maps/util/TextFormatter;

    return-object v0
.end method


# virtual methods
.method createGenericExitIcon(Lcom/google/android/maps/driveabout/nav/aj;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 312
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/util/TextFormatter;->mLastExitIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/util/TextFormatter;->mLastExitIconCue:Lcom/google/android/maps/driveabout/nav/aj;

    if-ne v0, p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/glass/maps/util/TextFormatter;->mLastExitIconDrawable:Landroid/graphics/drawable/Drawable;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :goto_0
    return-object v0

    .line 320
    :cond_0
    monitor-exit p0

    .line 323
    iget-object v0, p0, Lcom/google/glass/maps/util/TextFormatter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 325
    sget v1, Lcom/google/glass/maps/R$layout;->generic_exit:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 332
    sget v1, Lcom/google/glass/maps/R$drawable;->generic_exit_left:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 341
    :goto_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 342
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 343
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 347
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 346
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 349
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 350
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 351
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 353
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 354
    monitor-enter p0

    .line 356
    :try_start_1
    iput-object v1, p0, Lcom/google/glass/maps/util/TextFormatter;->mLastExitIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    iput-object p1, p0, Lcom/google/glass/maps/util/TextFormatter;->mLastExitIconCue:Lcom/google/android/maps/driveabout/nav/aj;

    .line 358
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 359
    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 333
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 334
    sget v1, Lcom/google/glass/maps/R$drawable;->generic_exit_right:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 336
    :cond_2
    sget v1, Lcom/google/glass/maps/R$drawable;->generic_exit_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 358
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public formatDistance(IIZ)Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 126
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/util/TextFormatter;->formatDistanceInternal(III)Landroid/text/Spannable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public formatRoadName(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    return-object v0
.end method

.method public formatStayOnRoadPrimaryText(Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;
    .locals 4

    .prologue
    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->v()Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/maps/util/TextFormatter;->formatStepCue(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/google/glass/maps/util/TextFormatter;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/R$string;->da_stay_on_road_primary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 215
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 216
    sget v1, Lcom/google/glass/maps/util/TextFormatter;->STRING_PLACEHOLDER_LENGTH:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 218
    return-object v3
.end method

.method formatStepCue(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;
    .locals 4

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Lcom/google/android/maps/driveabout/store/be;->a()Lcom/google/android/maps/driveabout/store/be;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->d()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v1, v2, p2}, Lcom/google/android/maps/driveabout/store/be;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bd;)Lcom/google/android/maps/driveabout/store/bb;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 284
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/bb;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 292
    invoke-static {p1, v0}, Lcom/google/glass/maps/util/TextFormatter;->formatCueWithIcon(Lcom/google/android/maps/driveabout/nav/aj;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;

    move-result-object v0

    .line 294
    :goto_1
    return-object v0

    .line 287
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/util/TextFormatter;->createGenericExitIcon(Lcom/google/android/maps/driveabout/nav/aj;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/util/TextFormatter;->formatRoadName(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1
.end method

.method public formatStepCues(Ljava/util/Collection;IILandroid/text/TextPaint;Lcom/google/android/maps/driveabout/store/bd;)Ljava/lang/CharSequence;
    .locals 13

    .prologue
    .line 418
    const-string v1, "%1$s"

    .line 420
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 424
    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 425
    sget v1, Lcom/google/glass/maps/util/TextFormatter;->STRING_PLACEHOLDER_LENGTH:I

    add-int/2addr v1, v2

    .line 427
    const-string v3, ""

    invoke-virtual {v9, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 431
    iget-object v1, p0, Lcom/google/glass/maps/util/TextFormatter;->mContext:Landroid/content/Context;

    sget v3, Lcom/google/glass/maps/R$string;->da_name_delimiter:I

    .line 432
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 433
    const-string v6, " "

    .line 435
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 436
    const/4 v4, 0x0

    .line 437
    const/4 v3, 0x0

    .line 440
    const/4 v1, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    .line 441
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ge v5, p2, :cond_4

    .line 442
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/aj;

    .line 443
    move-object/from16 v0, p5

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/maps/util/TextFormatter;->formatStepCue(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/store/bd;)Landroid/text/Spannable;

    move-result-object v8

    .line 445
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    if-gt v11, p2, :cond_0

    .line 447
    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 448
    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 449
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 450
    const-string v3, "\n"

    invoke-virtual {v9, v2, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 451
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v4, v5

    :goto_1
    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    .line 491
    goto :goto_0

    .line 453
    :cond_0
    if-nez v2, :cond_1

    .line 454
    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 455
    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 462
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/glass/maps/util/TextFormatter;->cueUsesIcon(Lcom/google/android/maps/driveabout/nav/aj;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aj;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 463
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/glass/maps/util/TextFormatter;->cueUsesIcon(Lcom/google/android/maps/driveabout/nav/aj;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v7

    .line 469
    :goto_2
    invoke-virtual {v9, v3, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 470
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v3

    .line 471
    invoke-virtual {v9, v11, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 472
    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v8

    add-int/2addr v8, v11

    .line 475
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 474
    move-object/from16 v0, p4

    invoke-static {v9, v4, v11, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v11

    move/from16 v0, p3

    int-to-float v12, v0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    .line 478
    add-int/lit8 v4, p2, -0x1

    if-ge v5, v4, :cond_3

    .line 480
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v3

    const-string v11, "\n"

    .line 479
    invoke-virtual {v9, v3, v4, v11}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 481
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v8, v2

    .line 482
    add-int/lit8 v5, v5, 0x1

    .line 483
    add-int/lit8 v4, v3, 0x1

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 485
    :cond_3
    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object v1, v9

    .line 492
    :goto_3
    return-object v1

    :cond_4
    move-object v1, v9

    goto :goto_3

    :cond_5
    move v2, v8

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_6
    move-object v2, v6

    goto :goto_2

    :cond_7
    move v3, v4

    move v4, v5

    goto :goto_1
.end method

.method public formatTime(I)Landroid/text/Spannable;
    .locals 5

    .prologue
    const v2, 0x15180

    .line 504
    add-int/lit8 v0, p1, 0x1e

    .line 506
    div-int v1, v0, v2

    .line 507
    rem-int v2, v0, v2

    .line 508
    div-int/lit16 v0, v2, 0xe10

    .line 509
    rem-int/lit16 v2, v2, 0xe10

    .line 510
    div-int/lit8 v2, v2, 0x3c

    .line 512
    if-lez v1, :cond_1

    .line 514
    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    .line 515
    add-int/lit8 v0, v0, 0x1

    .line 516
    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 518
    add-int/lit8 v1, v1, 0x1

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/google/glass/maps/util/TextFormatter;->mContext:Landroid/content/Context;

    sget v3, Lcom/google/glass/maps/R$string;->da_time_format_days:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/google/glass/maps/util/TextFormatter;->formatTimeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    .line 546
    :goto_0
    return-object v0

    .line 523
    :cond_1
    if-lez v0, :cond_2

    .line 524
    sget v1, Lcom/google/glass/maps/R$string;->da_time_format_hours:I

    .line 525
    iget-object v3, p0, Lcom/google/glass/maps/util/TextFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/glass/maps/util/TextFormatter;->formatTimeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_0

    .line 531
    :cond_2
    if-nez v2, :cond_3

    .line 532
    const/4 v0, 0x1

    .line 536
    :goto_1
    iget-object v1, p0, Lcom/google/glass/maps/util/TextFormatter;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/R$string;->da_time_format_minutes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    const-string v1, "%1$s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 538
    sget v1, Lcom/google/glass/maps/util/TextFormatter;->STRING_PLACEHOLDER_LENGTH:I

    add-int v4, v3, v1

    .line 540
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 543
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-virtual {v1, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    .line 546
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
