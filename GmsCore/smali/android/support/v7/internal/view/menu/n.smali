.class public final Landroid/support/v7/internal/view/menu/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/c/a/b;


# static fields
.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Landroid/support/v7/internal/view/menu/j;

.field private m:Landroid/support/v7/internal/view/menu/ae;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:Landroid/support/v4/view/n;

.field private t:Landroid/support/v4/view/an;

.field private u:Z

.field private v:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/j;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Landroid/support/v7/internal/view/menu/n;->k:I

    .line 75
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 83
    iput v1, p0, Landroid/support/v7/internal/view/menu/n;->q:I

    .line 88
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/n;->u:Z

    .line 132
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    .line 133
    iput p3, p0, Landroid/support/v7/internal/view/menu/n;->a:I

    .line 134
    iput p2, p0, Landroid/support/v7/internal/view/menu/n;->b:I

    .line 135
    iput p4, p0, Landroid/support/v7/internal/view/menu/n;->c:I

    .line 136
    iput p5, p0, Landroid/support/v7/internal/view/menu/n;->d:I

    .line 137
    iput-object p6, p0, Landroid/support/v7/internal/view/menu/n;->e:Ljava/lang/CharSequence;

    .line 138
    iput p7, p0, Landroid/support/v7/internal/view/menu/n;->q:I

    .line 139
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/c/a/b;
    .locals 2

    .prologue
    .line 596
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->a:I

    if-lez v0, :cond_0

    .line 599
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->j()V

    .line 602
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/n;)Landroid/support/v4/c/a/b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 647
    :cond_0
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    .line 648
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    .line 649
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 650
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    new-instance v1, Landroid/support/v7/internal/view/menu/o;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/view/menu/o;-><init>(Landroid/support/v7/internal/view/menu/n;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 658
    :cond_1
    return-object p0
.end method

.method final a(Landroid/support/v7/internal/view/menu/ab;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 361
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/internal/view/menu/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Landroid/support/v7/internal/view/menu/ae;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->m:Landroid/support/v7/internal/view/menu/ae;

    .line 345
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ae;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 346
    return-void
.end method

.method final a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 534
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 456
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 457
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/j;->r()Landroid/support/v7/internal/view/menu/j;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/j;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->n:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->g:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/j;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/n;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "MenuItemImpl"

    const-string v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    .line 170
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->d:I

    return v0
.end method

.method final b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 482
    iget v2, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 483
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 484
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    if-eq v2, v0, :cond_0

    .line 485
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 487
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 483
    goto :goto_0
.end method

.method final c()C
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/n;->i:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/n;->h:C

    goto :goto_0
.end method

.method final c(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 506
    iget v2, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 507
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 508
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 507
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 683
    iget v1, p0, Landroid/support/v7/internal/view/menu/n;->q:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 686
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    if-nez v1, :cond_2

    .line 688
    const/4 v0, 0x1

    goto :goto_0

    .line 691
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->t:Landroid/support/v4/view/an;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->t:Landroid/support/v4/view/an;

    invoke-interface {v1}, Landroid/support/v4/view/an;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/j;->b(Landroid/support/v7/internal/view/menu/n;)Z

    move-result v0

    goto :goto_0
.end method

.method final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->c()C

    move-result v0

    .line 295
    if-nez v0, :cond_0

    .line 296
    const-string v0, ""

    .line 319
    :goto_0
    return-object v0

    .line 299
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/internal/view/menu/n;->w:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    sparse-switch v0, :sswitch_data_0

    .line 315
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :sswitch_0
    sget-object v0, Landroid/support/v7/internal/view/menu/n;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 307
    :sswitch_1
    sget-object v0, Landroid/support/v7/internal/view/menu/n;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 311
    :sswitch_2
    sget-object v0, Landroid/support/v7/internal/view/menu/n;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 717
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/n;->u:Z

    .line 718
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 719
    return-void
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->c()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/n;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->t:Landroid/support/v4/view/an;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->t:Landroid/support/v4/view/an;

    invoke-interface {v1}, Landroid/support/v4/view/an;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/n;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->s()Z

    move-result v0

    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 633
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    .line 621
    :goto_0
    return-object v0

    .line 617
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    invoke-virtual {v0}, Landroid/support/v4/view/n;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    .line 619
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    goto :goto_0

    .line 621
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 236
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/n;->i:C

    return v0
.end method

.method public final getGroupId()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->b:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Landroid/graphics/drawable/Drawable;

    .line 416
    :goto_0
    return-object v0

    .line 409
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->k:I

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->e()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/view/menu/n;->k:I

    invoke-static {v0, v1}, Landroid/support/v4/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 411
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/n;->k:I

    .line 412
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->a:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .prologue
    .line 254
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/n;->h:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->c:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->m:Landroid/support/v7/internal/view/menu/ae;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->f:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->e:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 553
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->m:Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 557
    iget v1, p0, Landroid/support/v7/internal/view/menu/n;->q:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/n;->u:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 441
    iget v1, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 2

    .prologue
    .line 465
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    .line 492
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 561
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->q:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->q:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Landroid/support/v4/view/n;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 707
    iget v1, p0, Landroid/support/v7/internal/view/menu/n;->q:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->s:Landroid/support/v4/view/n;

    invoke-virtual {v1}, Landroid/support/v4/view/n;->a()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    .line 711
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/n;->r:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 713
    :cond_1
    return v0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/View;)Landroid/support/v4/c/a/b;

    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/View;)Landroid/support/v4/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 241
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/n;->i:C

    if-ne v0, p1, :cond_0

    .line 249
    :goto_0
    return-object p0

    .line 245
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/n;->i:C

    .line 247
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    goto :goto_0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 446
    iget v2, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 447
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 448
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    if-eq v2, v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 452
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 447
    goto :goto_0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/view/MenuItem;)V

    .line 478
    :goto_0
    return-object p0

    .line 475
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    goto :goto_0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    .line 189
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 191
    return-object p0

    .line 186
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/internal/view/menu/n;->p:I

    goto :goto_0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/n;->j:Landroid/graphics/drawable/Drawable;

    .line 431
    iput p1, p0, Landroid/support/v7/internal/view/menu/n;->k:I

    .line 434
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 436
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    iput v1, p0, Landroid/support/v7/internal/view/menu/n;->k:I

    .line 422
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->j:Landroid/graphics/drawable/Drawable;

    .line 423
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 425
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->g:Landroid/content/Intent;

    .line 222
    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 259
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/n;->h:C

    if-ne v0, p1, :cond_0

    .line 267
    :goto_0
    return-object p0

    .line 263
    :cond_0
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/n;->h:C

    .line 265
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    goto :goto_0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 728
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 524
    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 272
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/n;->h:C

    .line 273
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/n;->i:C

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 277
    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 2

    .prologue
    .line 578
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :pswitch_0
    iput p1, p0, Landroid/support/v7/internal/view/menu/n;->q:I

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->j()V

    .line 592
    return-void

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/n;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/n;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 368
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->e:Ljava/lang/CharSequence;

    .line 370
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 372
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->m:Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->m:Landroid/support/v7/internal/view/menu/ae;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/ae;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 376
    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 391
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/n;->f:Ljava/lang/CharSequence;

    .line 394
    if-nez p1, :cond_0

    .line 395
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->e:Ljava/lang/CharSequence;

    .line 398
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 400
    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/n;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->l:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->i()V

    .line 518
    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/n;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
