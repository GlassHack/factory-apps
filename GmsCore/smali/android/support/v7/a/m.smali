.class final Landroid/support/v7/a/m;
.super Landroid/support/v7/a/g;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/y;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private p:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/a/d;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/a/g;-><init>(Landroid/support/v7/a/d;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    new-instance v4, Landroid/support/v7/internal/view/d;

    invoke-direct {v4, v0, p2}, Landroid/support/v7/internal/view/d;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->b()V

    :cond_0
    new-instance v5, Landroid/support/v7/a/k;

    invoke-direct {v5, p0, v4}, Landroid/support/v7/a/k;-><init>(Landroid/support/v7/a/g;Landroid/support/v7/c/b;)V

    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/support/v7/a/a;->a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->b()V

    :cond_2
    new-instance v4, Landroid/support/v7/a/k;

    invoke-direct {v4, p0, v5}, Landroid/support/v7/a/k;-><init>(Landroid/support/v7/a/g;Landroid/support/v7/c/b;)V

    iget-object v0, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/a/g;->f:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iget-object v6, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-direct {v0, v6}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    sget v7, Landroid/support/v7/b/b;->i:I

    invoke-direct {v0, v6, v3, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v6, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v6}, Landroid/support/v7/a/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Landroid/support/v7/b/b;->b:I

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-object v6, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v6}, Landroid/support/v7/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(I)V

    iget-object v0, p0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v0, Landroid/support/v7/a/i;

    invoke-direct {v0, p0}, Landroid/support/v7/a/i;-><init>(Landroid/support/v7/a/g;)V

    iput-object v0, p0, Landroid/support/v7/a/g;->m:Ljava/lang/Runnable;

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    new-instance v6, Landroid/support/v7/internal/view/b;

    iget-object v7, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    iget-object v8, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-direct {v6, v7, v8, v4, v0}, Landroid/support/v7/internal/view/b;-><init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/c/b;Z)V

    invoke-virtual {v6}, Landroid/support/v7/c/a;->a()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Landroid/support/v7/c/a;->c()V

    iget-object v0, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/c/a;)V

    iget-object v0, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    iput-object v6, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    iget-object v0, p0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/g;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    :cond_6
    iget-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    iput-object v0, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    :cond_7
    iget-object v1, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    .line 65
    if-eqz v1, :cond_b

    .line 67
    new-instance v0, Landroid/support/v7/internal/view/c;

    iget-object v2, p0, Landroid/support/v7/a/m;->a:Landroid/support/v7/a/d;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/internal/view/c;-><init>(Landroid/content/Context;Landroid/support/v7/c/a;)V

    .line 69
    :goto_3
    return-object v0

    .line 62
    :cond_8
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    sget v6, Landroid/support/v7/b/e;->h:I

    invoke-virtual {v0, v6}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    iput-object v3, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    goto :goto_2

    :cond_b
    move-object v0, v3

    .line 69
    goto :goto_3
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method final h()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v7/a/m;->a:Landroid/support/v7/a/d;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/a/m;->p:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    .line 45
    iget-object v0, p0, Landroid/support/v7/a/m;->p:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/support/v7/a/m;->p:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a(Landroid/support/v7/internal/widget/y;)V

    .line 48
    :cond_0
    return-void
.end method
