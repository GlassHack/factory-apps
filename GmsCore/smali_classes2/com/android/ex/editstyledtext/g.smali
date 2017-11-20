.class public Lcom/android/ex/editstyledtext/g;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    const v2, 0xffffff

    const/16 v4, 0x80

    .line 2550
    iget v5, p0, Lcom/android/ex/editstyledtext/g;->a:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    if-nez v3, :cond_0

    move v3, v4

    :cond_0
    packed-switch v5, :pswitch_data_0

    const-string v0, "EditStyledText"

    const-string v1, "--- getMarqueeColor: got illigal marquee ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/ex/editstyledtext/g;->b:I

    .line 2551
    return-void

    .line 2550
    :pswitch_0
    if-le v1, v4, :cond_1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    invoke-static {v3, v1, v0, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    :cond_1
    rsub-int v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_1
    if-le v0, v4, :cond_2

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    rsub-int v0, v0, 0xff

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 2597
    iget v0, p0, Lcom/android/ex/editstyledtext/g;->b:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 2598
    return-void
.end method
