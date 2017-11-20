.class public Lcom/google/glass/widget/ContactDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final ALPHA:I = 0xb2

.field private static final CIRCLE_STROKE_WIDTH:I = 0x2

.field private static final ROBOTO_LIGHT:Landroid/graphics/Typeface;

.field private static final ROBOTO_REGULAR:Landroid/graphics/Typeface;


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private circlePaint:Landroid/graphics/Paint;

.field private final colorMapper:Lcom/google/glass/widget/ContactColorMapper;

.field private initialPaint:Landroid/text/TextPaint;

.field private isExcessCount:Z

.field private final minimumHeightForLargeSpec:F

.field private final minimumWidthToShowName:F

.field private final name:Ljava/lang/String;

.field private final nameBaselineOffset:I

.field private final nameHorizontalMargin:I

.field private namePaint:Landroid/text/TextPaint;

.field private final placeholderIcon:Landroid/graphics/drawable/Drawable;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "sans-serif-light"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_LIGHT:Landroid/graphics/Typeface;

    .line 113
    const-string v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 185
    sget v0, Lcom/google/glass/common/R$string;->contact_excess_count:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Lcom/google/glass/widget/ContactDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/ContactDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    .line 198
    iput-object p2, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    .line 199
    iput-boolean p3, p0, Lcom/google/glass/widget/ContactDrawable;->isExcessCount:Z

    .line 200
    new-instance v0, Lcom/google/glass/widget/ContactColorMapper;

    invoke-direct {v0, p1}, Lcom/google/glass/widget/ContactColorMapper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->colorMapper:Lcom/google/glass/widget/ContactColorMapper;

    .line 202
    sget v0, Lcom/google/glass/common/R$dimen;->contact_name_baseline_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ContactDrawable;->nameBaselineOffset:I

    .line 203
    sget v0, Lcom/google/glass/common/R$dimen;->contact_name_horizontal_margin:I

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ContactDrawable;->nameHorizontalMargin:I

    .line 205
    sget v0, Lcom/google/glass/common/R$drawable;->ic_contact_no_name_36:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    .line 207
    sget v0, Lcom/google/glass/common/R$dimen;->contact_min_height_for_large_spec:I

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/widget/ContactDrawable;->minimumHeightForLargeSpec:F

    .line 209
    sget v0, Lcom/google/glass/common/R$dimen;->contact_min_width_to_show_name:I

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/widget/ContactDrawable;->minimumWidthToShowName:F

    .line 212
    invoke-direct {p0}, Lcom/google/glass/widget/ContactDrawable;->initializePaints()V

    .line 213
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_LIGHT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/graphics/Paint;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p4, p1, v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 410
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v1, p2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v4, v1, v0

    int-to-float v5, p3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 411
    return-void
.end method

.method private drawInitialCircle(Landroid/graphics/Canvas;IILcom/google/glass/widget/ContactDrawable$DrawSpec;)V
    .locals 5

    .prologue
    .line 382
    int-to-float v0, p2

    int-to-float v1, p3

    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {p4, v2}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveRadius(Landroid/content/res/Resources;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 384
    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->getInitialText()Ljava/lang/String;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    .line 387
    invoke-virtual {p4, v1}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveInitialBaselineOffset(Landroid/content/res/Resources;)I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    .line 386
    invoke-static {p1, v0, p2, v1, v2}, Lcom/google/glass/widget/ContactDrawable;->drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/graphics/Paint;)V

    .line 395
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 391
    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p2, v3

    div-int/lit8 v4, v1, 0x2

    sub-int v4, p3, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 392
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 393
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->placeholderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 356
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    .line 361
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 363
    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 364
    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 365
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializePaints()V
    .locals 6

    .prologue
    const/16 v5, 0xb2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 217
    iget-boolean v0, p0, Lcom/google/glass/widget/ContactDrawable;->isExcessCount:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->colorMapper:Lcom/google/glass/widget/ContactColorMapper;

    .line 218
    invoke-virtual {v0}, Lcom/google/glass/widget/ContactColorMapper;->getDefaultColor()I

    move-result v0

    .line 220
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 221
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    .line 225
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    .line 232
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 234
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 235
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 237
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    .line 238
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 240
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    sget-object v1, Lcom/google/glass/widget/ContactDrawable;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 241
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/glass/common/R$dimen;->contact_name_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 242
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 243
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 244
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->colorMapper:Lcom/google/glass/widget/ContactColorMapper;

    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ContactColorMapper;->colorizeName(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 283
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->getDrawSpec()Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    move-result-object v2

    .line 287
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    div-int/lit8 v3, v0, 0x2

    .line 288
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 289
    iget-boolean v4, v2, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->showName:Z

    if-eqz v4, :cond_0

    .line 290
    iget v4, p0, Lcom/google/glass/widget/ContactDrawable;->nameBaselineOffset:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveInitialTextSize(Landroid/content/res/Resources;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 294
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->initialPaint:Landroid/text/TextPaint;

    iget-object v5, v2, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->initialTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 295
    invoke-direct {p0, p1, v3, v0, v2}, Lcom/google/glass/widget/ContactDrawable;->drawInitialCircle(Landroid/graphics/Canvas;IILcom/google/glass/widget/ContactDrawable$DrawSpec;)V

    .line 297
    iget-boolean v4, v2, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->showName:Z

    if-eqz v4, :cond_1

    .line 298
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    .line 299
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v6, p0, Lcom/google/glass/widget/ContactDrawable;->nameHorizontalMargin:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 298
    invoke-static {v4, v5, v1, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 300
    iget-object v4, p0, Lcom/google/glass/widget/ContactDrawable;->resources:Landroid/content/res/Resources;

    .line 301
    invoke-virtual {v2, v4}, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->resolveRadius(Landroid/content/res/Resources;)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/glass/widget/ContactDrawable;->nameBaselineOffset:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/widget/ContactDrawable;->namePaint:Landroid/text/TextPaint;

    .line 300
    invoke-static {p1, v1, v3, v0, v2}, Lcom/google/glass/widget/ContactDrawable;->drawCenteredText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IILandroid/graphics/Paint;)V

    .line 303
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 267
    const/16 v0, 0xff

    return v0
.end method

.method getBackgroundColor()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method getDrawSpec()Lcom/google/glass/widget/ContactDrawable$DrawSpec;
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/glass/widget/ContactDrawable;->minimumHeightForLargeSpec:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 322
    sget-object v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->SMALL_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    .line 326
    :goto_0
    return-object v0

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/widget/ContactDrawable;->minimumWidthToShowName:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/widget/ContactDrawable;->shouldShowName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    :cond_1
    sget-object v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->LARGE_WITHOUT_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    goto :goto_0

    .line 326
    :cond_2
    sget-object v0, Lcom/google/glass/widget/ContactDrawable$DrawSpec;->LARGE_WITH_NAME:Lcom/google/glass/widget/ContactDrawable$DrawSpec;

    goto :goto_0
.end method

.method getInitialText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 333
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/widget/ContactDrawable;->isExcessCount:Z

    if-eqz v1, :cond_2

    .line 338
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    goto :goto_0

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 341
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/ContactDrawable;->getFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, -0x1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method shouldShowName()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/glass/widget/ContactDrawable;->isExcessCount:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/ContactDrawable;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
