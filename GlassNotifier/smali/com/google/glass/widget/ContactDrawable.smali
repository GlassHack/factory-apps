.class public Lcom/google/glass/widget/ContactDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ContactDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/ContactDrawable$Builder;,
        Lcom/google/glass/widget/ContactDrawable$DrawSpec;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0xb2

.field private static final CIRCLE_STROKE_WIDTH:I = 0x2

.field private static final ROBOTO_LIGHT:Landroid/graphics/Typeface;

.field private static final ROBOTO_REGULAR:Landroid/graphics/Typeface;


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private final bitmap:Landroid/graphics/Bitmap;

.field private bitmapPaint:Landroid/graphics/Paint;

.field private circlePaint:Landroid/graphics/Paint;

.field private final colorMapper:Lcom/google/glass/widget/ContactColorMapper;

.field private explicitDrawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

.field private initialPaint:Landroid/text/TextPaint;

.field private isExcessCount:Z

.field private final minimumHeightForLargeSpec:F

.field private final minimumWidthToShowName:F

.field private final name:Ljava/lang/String;

.field private final nameBaselineOffset:I

.field private final nameHorizontalMargin:I

.field private namePaint:Landroid/text/TextPaint;

.field private nameToDisplay:Ljava/lang/String;

.field private final placeholderIcon:Landroid/graphics/drawable/Drawable;

.field private final resources:Landroid/content/res/Resources;

.field private showDisplayText:Z

.field private final showRectBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    const-string v0, "sans-serif-light"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_LIGHT:Landroid/graphics/Typeface;

    .line 115
    const-string v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZLandroid/graphics/Bitmap;ZLcom/google/glass/widget/ContactDrawable$DrawSpec;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "nameToDisplay"    # Ljava/lang/String;
    .param p4, "isExcessCount"    # Z
    .param p5, "showRectBackground"    # Z
    .param p6, "bitmap"    # Landroid/graphics/Bitmap;
    .param p7, "showDisplayText"    # Z
    .param p8, "explicitDrawSpec"    # Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/ContactDrawable;->showDisplayText:Z

    .line 320
    iput-object p1, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    .line 321
    iput-object p2, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lcom/google/glass/widget/ContactDrawable;->nameToDisplay:Ljava/lang/String;

    .line 323
    iput-boolean p4, p0, Lcom/google/glass/widget/ContactDrawable;->isExcessCount:Z

    .line 324
    iput-boolean p5, p0, Lcom/google/glass/widget/ContactDrawable;->showRectBackground:Z

    .line 325
    new-instance v0, Lcom/google/glass/widget/ContactColorMapper;

    invoke-direct {v0, p1}, Lcom/google/glass/widget/ContactColorMapper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->colorMapper:Lcom/google/glass/widget/ContactColorMapper;

    .line 326
    iput-object p6, p0, Lcom/google/glass/widget/ContactDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 327
    iput-boolean p7, p0, Lcom/google/glass/widget/ContactDrawable;->showDisplayText:Z

    .line 328
    iput-object p8, p0, Lcom/google/glass/widget/ContactDrawable;->explicitDrawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 330
    sget v0, Lcom/google/glass/common/R$dimen;->contact_name_baseline_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ContactDrawable;->nameBaselineOffset:I

    .line 331
    sget v0, Lcom/google/glass/common/R$dimen;->contact_name_horizontal_margin:I

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ContactDrawable;->nameHorizontalMargin:I

    .line 333
    sget v0, Lcom/google/glass/common/R$drawable;->ic_person_white_36px:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    .line 335
    sget v0, Lcom/google/glass/common/R$dimen;->contact_min_height_for_large_spec:I

    .line 336
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/widget/ContactDrawable;->minimumHeightForLargeSpec:F

    .line 337
    sget v0, Lcom/google/glass/common/R$dimen;->contact_min_width_to_show_name:I

    .line 338
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/widget/ContactDrawable;->minimumWidthToShowName:F

    .line 340
    invoke-direct {p0}, Lcom/google/glass/widget/ContactDrawable;->initializePaints()V

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZLandroid/graphics/Bitmap;ZLcom/google/glass/widget/ContactDrawable$DrawSpec;Lcom/google/glass/widget/ContactDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Landroid/graphics/Bitmap;
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lcom/google/glass/widget/ContactDrawable$DrawSpec;
    .param p9, "x8"    # Lcom/google/glass/widget/ContactDrawable$1;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p8}, Lcom/google/glass/widget/ContactDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZLandroid/graphics/Bitmap;ZLcom/google/glass/widget/ContactDrawable$DrawSpec;)V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_LIGHT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private drawBitmapCircle(Landroid/graphics/Canvas;IILcom/google/glass/widget/ContactDrawable$DrawSpec;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # I
    .param p3, "cy"    # I
    .param p4, "drawSpec"    # Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .prologue
    .line 573
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {p4, v2}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveRadius(Landroid/content/res/Resources;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/glass/widget/ContactDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 574
    return-void
.end method

.method private static drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/graphics/Paint;)V
    .locals 8
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 588
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p4, p1, v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    .line 589
    .local v7, "textWidth":F
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v7, v1

    sub-float v4, v0, v1

    int-to-float v5, p3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 590
    return-void
.end method

.method private drawInitialCircle(Landroid/graphics/Canvas;IILcom/google/glass/widget/ContactDrawable$DrawSpec;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # I
    .param p3, "cy"    # I
    .param p4, "drawSpec"    # Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .prologue
    .line 540
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {p4, v4}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveRadius(Landroid/content/res/Resources;)I

    move-result v2

    .line 545
    .local v2, "radius":I
    iget-boolean v4, p0, Lcom/google/glass/widget/ContactDrawable;->showRectBackground:Z

    if-nez v4, :cond_0

    .line 547
    int-to-float v4, p2

    int-to-float v5, p3

    int-to-float v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 550
    :cond_0
    int-to-float v4, p2

    int-to-float v5, p3

    add-int/lit8 v6, v2, -0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 552
    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->getInitialText()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "initialText":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 554
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    .line 555
    invoke-virtual {p4, v4}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveInitialBaselineOffset(Landroid/content/res/Resources;)I

    move-result v4

    add-int/2addr v4, p3

    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    .line 554
    invoke-static {p1, v1, p2, v4, v5}, Lcom/google/glass/widget/ContactDrawable;->drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/graphics/Paint;)V

    .line 563
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 558
    .local v3, "width":I
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 559
    .local v0, "height":I
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, p2, v5

    div-int/lit8 v6, v0, 0x2

    sub-int v6, p3, v6

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, p2

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 560
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    const/16 v5, 0xb2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 561
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 514
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 515
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 516
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 519
    .local v2, "codePointCount":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 520
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 521
    .local v1, "codePoint":I
    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 522
    .local v4, "type":I
    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 523
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "codePoint":I
    .end local v4    # "type":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initializePaints()V
    .locals 8

    .prologue
    const/16 v7, 0xb2

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 345
    iget-boolean v2, p0, Lcom/google/glass/widget/ContactDrawable;->isExcessCount:Z

    if-eqz v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->colorMapper:Lcom/google/glass/widget/ContactColorMapper;

    invoke-virtual {v2}, Lcom/google/glass/widget/ContactColorMapper;->getDefaultColor()I

    move-result v0

    .line 348
    .local v0, "contactColor":I
    :goto_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 349
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    .line 353
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 354
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    .line 360
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 362
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 363
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 365
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    .line 366
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 368
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    sget-object v3, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 369
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/google/glass/common/R$dimen;->contact_name_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 370
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 371
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 373
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 374
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 375
    .local v1, "shader":Landroid/graphics/BitmapShader;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->bitmapPaint:Landroid/graphics/Paint;

    .line 376
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 377
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 379
    .end local v1    # "shader":Landroid/graphics/BitmapShader;
    :cond_0
    return-void

    .line 346
    .end local v0    # "contactColor":I
    :cond_1
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->colorMapper:Lcom/google/glass/widget/ContactColorMapper;

    iget-object v3, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/ContactColorMapper;->colorizeName(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 418
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v5, p0, Lcom/google/glass/widget/ContactDrawable;->showRectBackground:Z

    if-eqz v5, :cond_0

    .line 419
    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->getDrawSpec()Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    move-result-object v3

    .line 424
    .local v3, "drawSpec":Lcom/google/glass/widget/ContactDrawable$DrawSpec;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 425
    .local v1, "cx":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 426
    .local v2, "cy":I
    iget-boolean v5, v3, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->showName:Z

    if-eqz v5, :cond_1

    .line 427
    iget v5, p0, Lcom/google/glass/widget/ContactDrawable;->nameBaselineOffset:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 430
    :cond_1
    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveInitialTextSize(Landroid/content/res/Resources;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 431
    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    iget-object v6, v3, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->initialTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 433
    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 434
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/glass/widget/ContactDrawable;->drawBitmapCircle(Landroid/graphics/Canvas;IILcom/google/glass/widget/ContactDrawable$DrawSpec;)V

    .line 439
    :goto_0
    iget-boolean v5, v3, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->showName:Z

    if-eqz v5, :cond_2

    .line 440
    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->nameToDisplay:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    .line 441
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/google/glass/widget/ContactDrawable;->nameHorizontalMargin:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 440
    invoke-static {v5, v6, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 442
    .local v4, "nameToDraw":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    .line 443
    invoke-virtual {v3, v5}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveRadius(Landroid/content/res/Resources;)I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Lcom/google/glass/widget/ContactDrawable;->nameBaselineOffset:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    .line 442
    invoke-static {p1, v4, v1, v5, v6}, Lcom/google/glass/widget/ContactDrawable;->drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/graphics/Paint;)V

    .line 445
    .end local v4    # "nameToDraw":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 436
    :cond_3
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/glass/widget/ContactDrawable;->drawInitialCircle(Landroid/graphics/Canvas;IILcom/google/glass/widget/ContactDrawable$DrawSpec;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 402
    const/16 v0, 0xff

    return v0
.end method

.method getBackgroundColor()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getBitmapPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->bitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method getDrawSpec()Lcom/google/glass/widget/ContactDrawable$DrawSpec;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->explicitDrawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->explicitDrawSpec:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 484
    :goto_0
    return-object v1

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 479
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/glass/widget/ContactDrawable;->minimumHeightForLargeSpec:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 480
    sget-object v1, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->SMALL_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/glass/widget/ContactDrawable;->minimumWidthToShowName:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->shouldShowName()Z

    move-result v1

    if-nez v1, :cond_3

    .line 482
    :cond_2
    sget-object v1, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->LARGE_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    goto :goto_0

    .line 484
    :cond_3
    sget-object v1, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->LARGE_WITH_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    goto :goto_0
.end method

.method getInitialText()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-object v1

    .line 495
    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/widget/ContactDrawable;->isExcessCount:Z

    if-eqz v2, :cond_2

    .line 496
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    goto :goto_0

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 499
    .local v0, "initialCodePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/widget/ContactDrawable;->getFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 392
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 385
    const/4 v0, -0x1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 398
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 408
    return-void
.end method

.method shouldShowName()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/google/glass/widget/ContactDrawable;->showDisplayText:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/glass/widget/ContactDrawable;->isExcessCount:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    .line 468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->nameToDisplay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    .line 468
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
