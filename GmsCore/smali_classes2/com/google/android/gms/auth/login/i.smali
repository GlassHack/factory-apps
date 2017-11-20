.class public abstract Lcom/google/android/gms/auth/login/i;
.super Lcom/google/android/gms/auth/login/o;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static v:Ljava/lang/String;


# instance fields
.field private D:Z

.field private E:Z

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/widget/TextView$OnEditorActionListener;

.field protected n:Landroid/widget/FrameLayout;

.field protected o:Lcom/google/android/gms/auth/login/q;

.field protected p:Landroid/view/View;

.field protected q:Z

.field protected r:Landroid/widget/TextView;

.field protected s:I

.field protected t:I

.field protected u:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 664
    const-string v0, "SetupWizardAccountInfoSharedPrefs"

    sput-object v0, Lcom/google/android/gms/auth/login/i;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/o;-><init>()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->q:Z

    .line 245
    const/16 v0, -0x65

    iput v0, p0, Lcom/google/android/gms/auth/login/i;->t:I

    .line 248
    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/i;->D:Z

    .line 251
    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/i;->E:Z

    .line 264
    new-instance v0, Lcom/google/android/gms/auth/login/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/login/j;-><init>(Lcom/google/android/gms/auth/login/i;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/i;->u:Landroid/view/View$OnClickListener;

    .line 298
    new-instance v0, Lcom/google/android/gms/auth/login/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/login/k;-><init>(Lcom/google/android/gms/auth/login/i;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/i;->F:Landroid/view/View$OnClickListener;

    .line 322
    new-instance v0, Lcom/google/android/gms/auth/login/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/login/l;-><init>(Lcom/google/android/gms/auth/login/i;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/i;->G:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/i;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->D:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/login/i;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->F:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 608
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->q:Z

    .line 288
    :cond_0
    return-void
.end method

.method protected final a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 351
    if-eqz p2, :cond_0

    .line 352
    iput-object p1, p0, Lcom/google/android/gms/auth/login/i;->p:Landroid/view/View;

    .line 353
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 354
    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->G:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->g()V

    .line 543
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 368
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 369
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_3

    move v3, v1

    .line 370
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    move v4, v1

    .line 371
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x18

    if-ne v5, v6, :cond_5

    move v5, v1

    .line 372
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x19

    if-ne v6, v7, :cond_0

    move v2, v1

    .line 374
    :cond_0
    if-eqz v0, :cond_6

    .line 376
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->q:Z

    if-eqz v0, :cond_1

    .line 377
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/o;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 385
    :cond_1
    :goto_4
    return v1

    :cond_2
    move v0, v2

    .line 368
    goto :goto_0

    :cond_3
    move v3, v2

    .line 369
    goto :goto_1

    :cond_4
    move v4, v2

    .line 370
    goto :goto_2

    :cond_5
    move v5, v2

    .line 371
    goto :goto_3

    .line 379
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-eqz v2, :cond_1

    .line 381
    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/o;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_4
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Landroid/view/View;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->n:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->n:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method protected h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 671
    invoke-static {}, Lcom/google/android/gms/auth/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/a/b;->a(Landroid/view/ViewConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 681
    iput v1, p0, Lcom/google/android/gms/auth/login/i;->t:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/login/i;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->finish()V

    .line 682
    return-void
.end method

.method protected final j()V
    .locals 3

    .prologue
    .line 706
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->B:Z

    if-eqz v0, :cond_0

    .line 711
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->E:Z

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/login/m;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/auth/login/m;-><init>(Lcom/google/android/gms/auth/login/i;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x1602

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected final k()V
    .locals 3

    .prologue
    .line 716
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/i;->E:Z

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/auth/login/n;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/auth/login/n;-><init>(Lcom/google/android/gms/auth/login/i;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x1603

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v2, 0x7f020060

    .line 423
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/o;->onCreate(Landroid/os/Bundle;)V

    .line 424
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 431
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->requestWindowFeature(I)Z

    .line 432
    invoke-static {p0}, Lcom/google/android/gms/auth/a/b;->a(Landroid/app/Activity;)V

    .line 433
    invoke-static {p0}, Lcom/google/android/gms/auth/a/b;->b(Landroid/app/Activity;)V

    .line 442
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/i;->n:Landroid/widget/FrameLayout;

    .line 446
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->j()V

    .line 448
    if-eqz p1, :cond_1

    .line 449
    const-string v0, "nextRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/login/i;->s:I

    .line 452
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_4

    .line 453
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_2

    .line 455
    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 457
    :cond_2
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_3

    .line 459
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 461
    :cond_3
    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_4

    .line 463
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->n:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Lcom/google/android/gms/auth/login/o;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 437
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->requestWindowFeature(I)Z

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 390
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/o;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 391
    const-string v0, "currentFocus"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 392
    if-eq v0, v1, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 397
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 401
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/o;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 403
    const-string v1, "currentFocus"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string v0, "nextRequest"

    iget v1, p0, Lcom/google/android/gms/auth/login/i;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    return-void

    .line 403
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/i;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 516
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 517
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->setContentView(Landroid/view/View;)V

    .line 518
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 523
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/i;->r:Landroid/widget/TextView;

    .line 524
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/login/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->setTitle(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 497
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/i;->r:Landroid/widget/TextView;

    .line 498
    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/gms/auth/login/i;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/o;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
