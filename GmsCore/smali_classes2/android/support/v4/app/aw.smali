.class public final Landroid/support/v4/app/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/support/v4/app/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 749
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Landroid/support/v4/app/bf;

    invoke-direct {v0}, Landroid/support/v4/app/bf;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    .line 766
    :goto_0
    return-void

    .line 751
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 752
    new-instance v0, Landroid/support/v4/app/be;

    invoke-direct {v0}, Landroid/support/v4/app/be;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    goto :goto_0

    .line 753
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 754
    new-instance v0, Landroid/support/v4/app/bl;

    invoke-direct {v0}, Landroid/support/v4/app/bl;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    goto :goto_0

    .line 755
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 756
    new-instance v0, Landroid/support/v4/app/bk;

    invoke-direct {v0}, Landroid/support/v4/app/bk;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    goto :goto_0

    .line 757
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 758
    new-instance v0, Landroid/support/v4/app/bj;

    invoke-direct {v0}, Landroid/support/v4/app/bj;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    goto :goto_0

    .line 759
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 760
    new-instance v0, Landroid/support/v4/app/bi;

    invoke-direct {v0}, Landroid/support/v4/app/bi;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    goto :goto_0

    .line 761
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 762
    new-instance v0, Landroid/support/v4/app/bh;

    invoke-direct {v0}, Landroid/support/v4/app/bh;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    goto :goto_0

    .line 764
    :cond_6
    new-instance v0, Landroid/support/v4/app/bg;

    invoke-direct {v0}, Landroid/support/v4/app/bg;-><init>()V

    sput-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/app/bd;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/support/v4/app/aw;->a:Landroid/support/v4/app/bd;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/au;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ax;

    invoke-interface {p0, v0}, Landroid/support/v4/app/au;->a(Landroid/support/v4/app/bs;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/av;Landroid/support/v4/app/bm;)V
    .locals 7

    .prologue
    .line 41
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v4/app/ba;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/ba;

    iget-object v0, p1, Landroid/support/v4/app/ba;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ba;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/ba;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ba;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bu;->a(Landroid/support/v4/app/av;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/bc;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/app/bc;

    iget-object v0, p1, Landroid/support/v4/app/bc;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/bc;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/bc;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bc;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bu;->a(Landroid/support/v4/app/av;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/az;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/app/az;

    iget-object v1, p1, Landroid/support/v4/app/az;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/az;->g:Z

    iget-object v3, p1, Landroid/support/v4/app/az;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/az;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/az;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/az;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/bu;->a(Landroid/support/v4/app/av;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
