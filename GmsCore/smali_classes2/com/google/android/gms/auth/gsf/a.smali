.class public abstract Lcom/google/android/gms/auth/gsf/a;
.super Lcom/google/android/gms/auth/gsf/b;
.source "SourceFile"


# instance fields
.field private final G:Landroid/os/Handler;

.field protected n:Z

.field protected o:I

.field protected p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/auth/gsf/b;-><init>()V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/gsf/a;->n:Z

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/gsf/a;->G:Landroid/os/Handler;

    .line 225
    const/16 v0, -0x65

    iput v0, p0, Lcom/google/android/gms/auth/gsf/a;->p:I

    return-void
.end method


# virtual methods
.method protected final d()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/a;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v0, v0, Lcom/google/android/gms/auth/gsf/e;->l:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 302
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 303
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    move v3, v1

    .line 304
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_4

    move v4, v1

    .line 305
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_0

    move v2, v1

    .line 307
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/auth/gsf/a;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-boolean v5, v5, Lcom/google/android/gms/auth/gsf/e;->l:Z

    if-nez v5, :cond_5

    .line 308
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/gsf/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 315
    :cond_1
    :goto_3
    return v1

    :cond_2
    move v0, v2

    .line 302
    goto :goto_0

    :cond_3
    move v3, v2

    .line 303
    goto :goto_1

    :cond_4
    move v4, v2

    .line 304
    goto :goto_2

    .line 309
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/gsf/a;->n:Z

    if-eqz v0, :cond_1

    .line 311
    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/gsf/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3
.end method

.method public final e()Ljava/util/HashMap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/gms/auth/gsf/a;->z:Lcom/google/android/gms/auth/gsf/e;

    iget-object v0, v0, Lcom/google/android/gms/auth/gsf/e;->E:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/gsf/b;->onCreate(Landroid/os/Bundle;)V

    .line 343
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/a;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-static {}, Lcom/google/android/gms/auth/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/a/b;->a(Landroid/view/ViewConfiguration;)Z

    .line 350
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/a;->requestWindowFeature(I)Z

    .line 359
    if-eqz p1, :cond_0

    .line 360
    const-string v0, "nextRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/gsf/a;->o:I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 320
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/gsf/b;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 321
    const-string v0, "currentFocus"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 322
    if-eq v0, v1, :cond_0

    .line 323
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/gsf/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 327
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/gsf/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    invoke-virtual {p0}, Lcom/google/android/gms/auth/gsf/a;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 333
    const-string v1, "currentFocus"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    const-string v0, "nextRequest"

    iget v1, p0, Lcom/google/android/gms/auth/gsf/a;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    return-void

    .line 333
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
