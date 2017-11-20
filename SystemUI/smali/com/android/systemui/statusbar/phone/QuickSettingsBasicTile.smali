.class Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingsBasicTile.java"


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const v0, 0x7f04000b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "layoutId"    # I

    .prologue
    const/4 v3, -0x1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const v0, 0x7f02007a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setBackgroundResource(I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mTextView:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mImageView:Landroid/widget/ImageView;

    .line 55
    return-void
.end method


# virtual methods
.method setContent(ILandroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "layoutId"    # I
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "why?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public setTextResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    return-void
.end method
