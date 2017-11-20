.class public final Landroid/support/v7/internal/view/menu/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/internal/view/menu/z;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/h;

.field private b:Landroid/support/v7/internal/view/menu/j;

.field private c:Landroid/app/AlertDialog;

.field private d:Landroid/support/v7/internal/view/menu/z;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/j;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/j;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/j;

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v2, Landroid/support/v7/internal/view/menu/h;

    sget v3, Landroid/support/v7/b/g;->h:I

    sget v4, Landroid/support/v7/b/i;->a:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/internal/view/menu/h;-><init>(II)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v7/internal/view/menu/h;

    .line 64
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/h;->a(Landroid/support/v7/internal/view/menu/z;)V

    .line 65
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/j;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 66
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/h;->b()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->q()Landroid/view/View;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 79
    :goto_0
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/app/AlertDialog;

    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 86
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 87
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 93
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 1

    .prologue
    .line 153
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/j;

    if-ne p1, v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 156
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/z;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;Z)V

    .line 159
    :cond_2
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;)Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/z;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/j;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/n;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/view/MenuItem;I)Z

    .line 171
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/support/v7/internal/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/h;->a(Landroid/support/v7/internal/view/menu/j;Z)V

    .line 149
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 97
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 127
    :goto_0
    return v0

    .line 110
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/j;->a(Z)V

    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/internal/view/menu/j;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
