.class final Landroid/support/v7/internal/view/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/view/Menu;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z

.field i:I

.field j:I

.field k:Ljava/lang/CharSequence;

.field l:Ljava/lang/CharSequence;

.field m:I

.field n:C

.field o:C

.field p:I

.field q:Z

.field r:Z

.field s:Z

.field t:I

.field u:I

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Landroid/support/v4/view/n;

.field final synthetic z:Landroid/support/v7/internal/view/e;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/e;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Landroid/support/v7/internal/view/g;->a:Landroid/view/Menu;

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/internal/view/g;->a()V

    .line 316
    return-void
.end method

.method static a(Ljava/lang/String;)C
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 400
    if-nez p0, :cond_0

    .line 403
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 480
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->a(Landroid/support/v7/internal/view/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 481
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 482
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    const-string v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot instantiate class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 319
    iput v0, p0, Landroid/support/v7/internal/view/g;->b:I

    .line 320
    iput v0, p0, Landroid/support/v7/internal/view/g;->c:I

    .line 321
    iput v0, p0, Landroid/support/v7/internal/view/g;->d:I

    .line 322
    iput v0, p0, Landroid/support/v7/internal/view/g;->e:I

    .line 323
    iput-boolean v1, p0, Landroid/support/v7/internal/view/g;->f:Z

    .line 324
    iput-boolean v1, p0, Landroid/support/v7/internal/view/g;->g:Z

    .line 325
    return-void
.end method

.method final a(Landroid/view/MenuItem;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 408
    iget-boolean v0, p0, Landroid/support/v7/internal/view/g;->q:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/g;->r:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/g;->s:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Landroid/support/v7/internal/view/g;->p:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/view/g;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Landroid/support/v7/internal/view/g;->m:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/g;->n:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/g;->o:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 417
    iget v0, p0, Landroid/support/v7/internal/view/g;->t:I

    if-ltz v0, :cond_0

    .line 418
    iget v0, p0, Landroid/support/v7/internal/view/g;->t:I

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/MenuItem;I)V

    .line 421
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->x:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->a(Landroid/support/v7/internal/view/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 408
    goto :goto_0

    .line 426
    :cond_2
    new-instance v0, Landroid/support/v7/internal/view/f;

    iget-object v3, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v3}, Landroid/support/v7/internal/view/e;->b(Landroid/support/v7/internal/view/e;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/view/g;->x:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/support/v7/internal/view/f;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 430
    :cond_3
    iget v0, p0, Landroid/support/v7/internal/view/g;->p:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    .line 432
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 433
    check-cast v0, Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->a(Z)V

    .line 440
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->v:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 441
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->v:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/e;->a()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/view/g;->z:Landroid/support/v7/internal/view/e;

    invoke-static {v3}, Landroid/support/v7/internal/view/e;->c(Landroid/support/v7/internal/view/e;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/internal/view/g;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 443
    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 446
    :goto_2
    iget v0, p0, Landroid/support/v7/internal/view/g;->u:I

    if-lez v0, :cond_5

    .line 447
    if-nez v1, :cond_8

    .line 448
    iget v0, p0, Landroid/support/v7/internal/view/g;->u:I

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 455
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->y:Landroid/support/v4/view/n;

    if-eqz v0, :cond_6

    .line 456
    iget-object v0, p0, Landroid/support/v7/internal/view/g;->y:Landroid/support/v4/view/n;

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/MenuItem;Landroid/support/v4/view/n;)Landroid/view/MenuItem;

    .line 458
    :cond_6
    return-void

    .line 434
    :cond_7
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 435
    check-cast v0, Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->a()V

    goto :goto_1

    .line 451
    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_2
.end method
