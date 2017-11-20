.class public Lcom/google/glass/maps/TextSizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final textSizes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/glass/maps/R$array;->dynamic_text_sizes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/TextSizer;->textSizes:[I

    move v0, v1

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/TextSizer;->textSizes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 23
    iget-object v3, p0, Lcom/google/glass/maps/TextSizer;->textSizes:[I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    aput v4, v3, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void
.end method


# virtual methods
.method public setTextSize(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v2, p0, Lcom/google/glass/maps/TextSizer;->textSizes:[I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 32
    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    int-to-float v5, p3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 38
    :cond_0
    return-void

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
