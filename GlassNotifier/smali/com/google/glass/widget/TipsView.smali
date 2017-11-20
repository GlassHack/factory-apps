.class public Lcom/google/glass/widget/TipsView;
.super Landroid/widget/TextView;
.source "TipsView.java"


# instance fields
.field private tip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object v2, Lcom/google/glass/common/R$styleable;->TipsView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/glass/common/R$styleable;->TipsView_tip:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    sget v2, Lcom/google/glass/common/R$styleable;->TipsView_tip:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 31
    .local v1, "tipReference":I
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/TipsView;->setTip(I)V

    .line 35
    .end local v1    # "tipReference":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    return-void
.end method


# virtual methods
.method public getTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/widget/TipsView;->tip:Ljava/lang/String;

    return-object v0
.end method

.method protected getTipTextSize()F
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/glass/widget/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->small_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getTipTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 61
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setTip(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/glass/widget/TipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/TipsView;->setTip(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/glass/widget/TipsView;->tip:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/TipsView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
