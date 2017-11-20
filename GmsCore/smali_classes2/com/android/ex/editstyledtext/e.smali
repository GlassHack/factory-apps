.class public final Lcom/android/ex/editstyledtext/e;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "SourceFile"


# static fields
.field private static c:Z


# instance fields
.field private a:Landroid/text/Spannable;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2701
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ex/editstyledtext/e;->c:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 2719
    sget-boolean v0, Lcom/android/ex/editstyledtext/e;->c:Z

    if-eqz v0, :cond_0

    .line 2722
    const-string v0, "EditStyledTextSpan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--- renewBounds:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_0
    if-le p1, v4, :cond_1

    .line 2725
    add-int/lit8 p1, p1, -0x14

    .line 2727
    :cond_1
    iput p1, p0, Lcom/android/ex/editstyledtext/e;->b:I

    .line 2728
    invoke-virtual {p0, v3, v3, p1, v4}, Lcom/android/ex/editstyledtext/e;->setBounds(IIII)V

    .line 2729
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2713
    iget-object v0, p0, Lcom/android/ex/editstyledtext/e;->a:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Lcom/android/ex/editstyledtext/f;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/editstyledtext/f;

    array-length v1, v0

    if-lez v1, :cond_4

    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/f;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, p0, :cond_3

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/e;->a:Landroid/text/Spannable;

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    const-class v4, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v1, v2, v0, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    sget-boolean v1, Lcom/android/ex/editstyledtext/e;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "EditStyledTextSpan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "--- renewColor:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v1, v0

    if-lez v1, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v0

    sget-boolean v1, Lcom/android/ex/editstyledtext/e;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "EditStyledTextSpan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "--- renewColor:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/e;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2714
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/ex/editstyledtext/e;->b:I

    const/16 v4, 0xb

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2715
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/e;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2716
    return-void

    .line 2713
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_4
    const-string v0, "EditStyledTextSpan"

    const-string v1, "---renewBounds: Couldn\'t find"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method
