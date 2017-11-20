.class public final Lcom/google/android/setupwizard/util/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    sput-object v0, Lcom/google/android/setupwizard/util/b;->a:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    sget-object v0, Lcom/google/android/setupwizard/util/b;->a:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    sget-object v0, Lcom/google/android/setupwizard/util/b;->a:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    sget-object v0, Lcom/google/android/setupwizard/util/b;->a:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    const v2, 0x7f0d00a3

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;B)V

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/util/b;->b:Landroid/view/LayoutInflater;

    .line 60
    iget-object v0, p0, Lcom/google/android/setupwizard/util/b;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030035

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 147
    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    :cond_0
    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 133
    const v0, 0x7f0d0076

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lcom/google/android/setupwizard/util/SetupWizardIllustration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/util/SetupWizardIllustration;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupwizard/util/b;->c(II)Landroid/view/View;

    move-result-object v1

    .line 122
    const v0, 0x7f0d00a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 126
    invoke-static {v1}, Lcom/google/android/setupwizard/util/b;->b(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/setupwizard/util/b;->a(Landroid/view/View;I)V

    .line 129
    return-object v1
.end method

.method public final a(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/setupwizard/util/b;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    const v0, 0x7f0d002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v2, p0, Lcom/google/android/setupwizard/util/b;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/util/b;->a(Landroid/view/View;)V

    .line 78
    return-object v1
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/setupwizard/util/b;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupwizard/util/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method public final b(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupwizard/util/b;->a(II)Landroid/view/View;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/google/android/setupwizard/util/b;->b(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/setupwizard/util/b;->a(Landroid/view/View;I)V

    .line 91
    return-object v0
.end method

.method public final c(II)Landroid/view/View;
    .locals 5

    .prologue
    .line 95
    const v0, 0x7f030034

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupwizard/util/b;->a(II)Landroid/view/View;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0d0076

    if-eq v0, v2, :cond_0

    .line 99
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010054

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 101
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_2

    .line 104
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 105
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 112
    const v0, 0x7f0d00a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :cond_1
    return-object v1

    .line 107
    :cond_2
    const-string v0, "SetupWizardUI"

    const-string v2, "WindowBackground is not a color but could be a drawable."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
