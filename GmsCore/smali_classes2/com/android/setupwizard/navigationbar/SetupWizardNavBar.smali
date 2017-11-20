.class public Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lcom/android/setupwizard/navigationbar/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    const/16 v0, 0x1202

    iput v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    .line 65
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public final a(ZZ)V
    .locals 2

    .prologue
    .line 117
    if-eqz p1, :cond_1

    .line 118
    iget v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    or-int/lit16 v0, v0, 0x1002

    iput v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    .line 119
    if-eqz p2, :cond_0

    .line 120
    iget v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 129
    return-void

    .line 126
    :cond_1
    iget v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    and-int/lit16 v0, v0, -0x1203

    iput v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    goto :goto_0
.end method

.method public final b()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->c:Landroid/widget/Button;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    check-cast p1, Lcom/android/setupwizard/navigationbar/a;

    iput-object p1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->e:Lcom/android/setupwizard/navigationbar/a;

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->e:Lcom/android/setupwizard/navigationbar/a;

    invoke-interface {v0}, Lcom/android/setupwizard/navigationbar/a;->a()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->e:Lcom/android/setupwizard/navigationbar/a;

    invoke-interface {v0}, Lcom/android/setupwizard/navigationbar/a;->b()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 76
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v6, [F

    new-array v6, v6, [F

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-static {v7, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {v5, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-static {v7, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v0, v0, v8

    aget v6, v6, v8

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const v0, 0x7f110198

    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {v3, v4, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 77
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    const v1, 0x7f030036

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b:Landroid/view/ViewGroup;

    .line 80
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d00a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->c:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->d:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b:Landroid/view/ViewGroup;

    return-object v0

    :cond_1
    move v0, v2

    .line 76
    goto :goto_0

    :cond_2
    const v0, 0x7f110199

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f0100c0
        0x1010030
        0x1010031
    .end array-data
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->e:Lcom/android/setupwizard/navigationbar/a;

    invoke-interface {v0, p0}, Lcom/android/setupwizard/navigationbar/a;->a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 91
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 97
    return-void
.end method
