.class Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;
.super Landroid/widget/LinearLayout;
.source "SmoothRotatingTextView.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/SmoothRotatingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewWithLeftImage"
.end annotation


# instance fields
.field private leftSideImage:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    invoke-virtual {p0, v6}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->setOrientation(I)V

    .line 246
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$dimen;->between_icon_text_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    .line 252
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 250
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 253
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->addView(Landroid/view/View;)V

    .line 254
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->textView:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->addView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/widget/SmoothRotatingTextView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/AttributeSet;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/glass/widget/SmoothRotatingTextView$1;

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;Lcom/google/glass/widget/SmoothRotatingTextView$Text;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;
    .param p1, "x1"    # Lcom/google/glass/widget/SmoothRotatingTextView$Text;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->setText(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)V

    return-void
.end method

.method private setText(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)V
    .locals 3
    .param p1, "text"    # Lcom/google/glass/widget/SmoothRotatingTextView$Text;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->access$100(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->access$1000(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 264
    invoke-static {p1}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->access$1100(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->access$1100(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->leftSideImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TextViewWithLeftImage;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
