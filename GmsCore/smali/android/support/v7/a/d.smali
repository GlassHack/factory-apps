.class public Landroid/support/v7/a/d;
.super Landroid/support/v4/app/j;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/cm;


# instance fields
.field private n:Landroid/support/v7/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 421
    invoke-static {p0}, Landroid/support/v4/app/ap;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_2

    .line 424
    invoke-static {p0, v0}, Landroid/support/v4/app/ap;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    invoke-static {p0}, Landroid/support/v4/app/cl;->a(Landroid/content/Context;)Landroid/support/v4/app/cl;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p0}, Landroid/support/v4/app/cl;->a(Landroid/app/Activity;)Landroid/support/v4/app/cl;

    .line 427
    invoke-virtual {v0}, Landroid/support/v4/app/cl;->a()V

    .line 431
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 442
    :goto_0
    const/4 v0, 0x1

    .line 444
    :goto_1
    return v0

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/a/d;->finish()V

    goto :goto_0

    .line 440
    :cond_1
    invoke-static {p0, v0}, Landroid/support/v4/app/ap;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 444
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 457
    invoke-static {p0}, Landroid/support/v4/app/ap;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->setContentView(Landroid/view/View;)V

    .line 256
    return-void
.end method

.method final a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/j;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0, p2}, Landroid/support/v7/a/d;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    invoke-super {v0, p1, p2}, Landroid/support/v4/app/j;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/e;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method final b(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onPanelClosed(ILandroid/view/Menu;)V

    .line 280
    return-void
.end method

.method public final b_()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->f()V

    .line 191
    return-void
.end method

.method final b_(I)V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->setContentView(I)V

    .line 252
    return-void
.end method

.method final c(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final d()Landroid/support/v7/a/e;
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v7/a/d;->n:Landroid/support/v7/a/e;

    if-nez v0, :cond_0

    .line 537
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v7/a/m;

    invoke-direct {v0, p0}, Landroid/support/v7/a/m;-><init>(Landroid/support/v7/a/d;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/a/d;->n:Landroid/support/v7/a/e;

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/d;->n:Landroid/support/v7/a/e;

    return-object v0

    .line 537
    :cond_1
    new-instance v0, Landroid/support/v7/a/g;

    invoke-direct {v0, p0}, Landroid/support/v7/a/g;-><init>(Landroid/support/v7/a/d;)V

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v1

    iget-object v0, v1, Landroid/support/v7/a/e;->b:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    new-instance v2, Landroid/support/v7/internal/view/e;

    iget-object v0, v1, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    invoke-virtual {v1}, Landroid/support/v7/a/e;->b()Landroid/support/v7/a/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/a/a;->e()Landroid/content/Context;

    move-result-object v0

    :cond_0
    invoke-direct {v2, v0}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/a/e;->b:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, v1, Landroid/support/v7/a/e;->b:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->f()V

    .line 198
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-super {p0}, Landroid/support/v4/app/j;->onBackPressed()V

    .line 291
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->c()V

    .line 127
    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    .prologue
    .line 525
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    .line 526
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/e;->a(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/e;->c(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/e;->b(I)Landroid/view/View;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 515
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/a/e;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/a/e;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 157
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/a/a;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0}, Landroid/support/v7/a/d;->e()Z

    move-result v0

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/e;->b(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/e;->a(ILandroid/view/Menu;)V

    .line 235
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/j;->onPostResume()V

    .line 138
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->e()V

    .line 139
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/a/e;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/j;->onStop()V

    .line 132
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/e;->d()V

    .line 133
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 167
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/e;->a(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/e;->a(I)V

    .line 100
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/e;->a(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/support/v7/a/d;->d()Landroid/support/v7/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method
