.class public Landroid/support/v7/internal/a/b;
.super Landroid/support/v7/a/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/l;


# static fields
.field static final synthetic h:Z

.field private static final i:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/support/v7/internal/view/h;

.field private G:Z

.field a:Landroid/support/v7/internal/a/f;

.field b:Landroid/support/v7/c/a;

.field c:Landroid/support/v7/c/b;

.field d:Z

.field final e:Landroid/support/v4/view/co;

.field final f:Landroid/support/v4/view/co;

.field final g:Landroid/support/v4/view/cq;

.field private j:Landroid/content/Context;

.field private k:Landroid/content/Context;

.field private l:Landroid/support/v4/app/j;

.field private m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private n:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private o:Landroid/support/v7/internal/widget/w;

.field private p:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private q:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private r:Landroid/view/View;

.field private s:Landroid/support/v7/internal/widget/ac;

.field private t:Ljava/util/ArrayList;

.field private u:I

.field private v:Z

.field private w:Ljava/util/ArrayList;

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-class v0, Landroid/support/v7/internal/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/internal/a/b;->h:Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v7/internal/a/b;->i:Z

    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public constructor <init>(Landroid/support/v7/a/d;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Landroid/support/v7/a/a;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->t:Ljava/util/ArrayList;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/a/b;->u:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->w:Ljava/util/ArrayList;

    .line 120
    iput v2, p0, Landroid/support/v7/internal/a/b;->z:I

    .line 122
    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->A:Z

    .line 127
    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->E:Z

    .line 133
    new-instance v0, Landroid/support/v7/internal/a/c;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/c;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->e:Landroid/support/v4/view/co;

    .line 153
    new-instance v0, Landroid/support/v7/internal/a/d;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/d;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/support/v4/view/co;

    .line 161
    new-instance v0, Landroid/support/v7/internal/a/e;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/e;-><init>(Landroid/support/v7/internal/a/b;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->g:Landroid/support/v4/view/cq;

    .line 171
    iput-object p1, p0, Landroid/support/v7/internal/a/b;->l:Landroid/support/v4/app/j;

    .line 172
    invoke-virtual {p1}, Landroid/support/v7/a/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 174
    sget v0, Landroid/support/v7/b/e;->j:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/internal/widget/l;)V

    :cond_0
    sget v0, Landroid/support/v7/b/e;->a:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/support/v7/internal/widget/w;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/support/v7/internal/widget/w;

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    sget v0, Landroid/support/v7/b/e;->f:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    sget v0, Landroid/support/v7/b/e;->c:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    sget v0, Landroid/support/v7/b/e;->u:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v4, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->m()Landroid/support/v7/internal/widget/w;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    iput v2, p0, Landroid/support/v7/internal/a/b;->x:I

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->n()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->v:Z

    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    iget-object v4, v0, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v4, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/b;->g(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v7/b/j;->a:[I

    sget v6, Landroid/support/v7/b/b;->c:I

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Landroid/support/v7/b/j;->m:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->d:Z

    iget-object v4, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Z)V

    :cond_8
    sget v1, Landroid/support/v7/b/j;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_9

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/ax;->d(Landroid/view/View;F)V

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/ax;->d(Landroid/view/View;F)V

    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    if-nez p2, :cond_a

    .line 176
    const v0, 0x1020002

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    .line 178
    :cond_a
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->n()I

    move-result v0

    .line 460
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->v:Z

    .line 463
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/w;->b(I)V

    .line 464
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/a/b;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->A:Z

    return v0
.end method

.method static synthetic a(ZZ)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v7/internal/a/b;->a(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static a(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 736
    if-eqz p2, :cond_1

    .line 741
    :cond_0
    :goto_0
    return v0

    .line 738
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 739
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/internal/a/b;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/internal/a/b;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/support/v7/internal/a/b;->x:I

    return v0
.end method

.method static synthetic f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method private g(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    iput-boolean p1, p0, Landroid/support/v7/internal/a/b;->y:Z

    .line 271
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->y:Z

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/ac;)V

    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->s:Landroid/support/v7/internal/widget/ac;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/ac;)V

    .line 278
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->p()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 279
    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/a/b;->s:Landroid/support/v7/internal/widget/ac;

    if-eqz v3, :cond_0

    .line 280
    if-eqz v0, :cond_3

    .line 281
    iget-object v3, p0, Landroid/support/v7/internal/a/b;->s:Landroid/support/v7/internal/widget/ac;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ac;->setVisibility(I)V

    .line 282
    iget-object v3, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ax;->q(Landroid/view/View;)V

    .line 289
    :cond_0
    :goto_2
    iget-object v4, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    iget-boolean v3, p0, Landroid/support/v7/internal/a/b;->y:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/internal/widget/w;->a(Z)V

    .line 290
    iget-object v3, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/internal/a/b;->y:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Z)V

    .line 291
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/ac;)V

    .line 276
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->s:Landroid/support/v7/internal/widget/ac;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/ac;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 278
    goto :goto_1

    .line 286
    :cond_3
    iget-object v3, p0, Landroid/support/v7/internal/a/b;->s:Landroid/support/v7/internal/widget/ac;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ac;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 289
    goto :goto_3

    :cond_5
    move v1, v2

    .line 290
    goto :goto_4
.end method

.method private h(Z)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 747
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->B:Z

    iget-boolean v1, p0, Landroid/support/v7/internal/a/b;->C:Z

    iget-boolean v2, p0, Landroid/support/v7/internal/a/b;->D:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/a/b;->a(ZZZ)Z

    move-result v0

    .line 750
    if-eqz v0, :cond_9

    .line 751
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->E:Z

    if-nez v0, :cond_5

    .line 752
    iput-boolean v5, p0, Landroid/support/v7/internal/a/b;->E:Z

    .line 753
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroid/support/v7/internal/a/b;->z:I

    if-nez v0, :cond_6

    sget-boolean v0, Landroid/support/v7/internal/a/b;->i:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->G:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_6

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->g:Landroid/support/v4/view/cq;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/cq;)Landroid/support/v4/view/cb;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    iget-boolean v2, p0, Landroid/support/v7/internal/a/b;->A:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/internal/a/b;->x:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->c()Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/support/v4/view/co;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/co;)Landroid/support/v7/internal/view/h;

    iput-object v1, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->a()V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ax;->q(Landroid/view/View;)V

    .line 761
    :cond_5
    :goto_1
    return-void

    .line 753
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->A:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v7/internal/a/b;->x:I

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->f:Landroid/support/v4/view/co;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/co;->b(Landroid/view/View;)V

    goto :goto_0

    .line 756
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->E:Z

    if-eqz v0, :cond_5

    .line 757
    iput-boolean v7, p0, Landroid/support/v7/internal/a/b;->E:Z

    .line 758
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    :cond_a
    iget v0, p0, Landroid/support/v7/internal/a/b;->z:I

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/support/v7/internal/a/b;->i:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->G:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_f

    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Z)V

    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_c

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_c
    iget-object v2, p0, Landroid/support/v7/internal/a/b;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/a/b;->g:Landroid/support/v4/view/cq;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/cq;)Landroid/support/v4/view/cb;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    iget-boolean v2, p0, Landroid/support/v7/internal/a/b;->A:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->r:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v6}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    :cond_e
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->c()Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->e:Landroid/support/v4/view/co;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/co;)Landroid/support/v7/internal/view/h;

    iput-object v1, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->a()V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->e:Landroid/support/v4/view/co;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/co;->b(Landroid/view/View;)V

    goto/16 :goto_1

    .line 753
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 758
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic h(Landroid/support/v7/internal/a/b;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->B:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v7/internal/a/b;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->C:Z

    return v0
.end method

.method static synthetic j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/w;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    return-object v0
.end method

.method static synthetic l(Landroid/support/v7/internal/a/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/f;->b()V

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Z)V

    .line 506
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    .line 507
    new-instance v0, Landroid/support/v7/internal/a/f;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/a/f;-><init>(Landroid/support/v7/internal/a/b;Landroid/support/v7/c/b;)V

    .line 508
    invoke-virtual {v0}, Landroid/support/v7/internal/a/f;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    invoke-virtual {v0}, Landroid/support/v7/internal/a/f;->c()V

    .line 510
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/c/a;)V

    .line 511
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/a/b;->f(Z)V

    .line 512
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/internal/a/b;->x:I

    if-ne v1, v3, :cond_1

    .line 514
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 516
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ax;->q(Landroid/view/View;)V

    .line 521
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 522
    iput-object v0, p0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    .line 525
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    const v1, 0x7f0200ab

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/w;->a(I)V

    .line 1320
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Landroid/support/v7/internal/a/b;->z:I

    .line 327
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/w;->b(Ljava/lang/CharSequence;)V

    .line 440
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 381
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/a/b;->a(II)V

    .line 382
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->n()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/w;->a(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 386
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/a/b;->a(II)V

    .line 387
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 657
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->B:Z

    if-eqz v0, :cond_0

    .line 658
    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->B:Z

    .line 659
    invoke-direct {p0, v1}, Landroid/support/v7/internal/a/b;->h(Z)V

    .line 661
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 1346
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->v:Z

    if-nez v0, :cond_0

    .line 1347
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/a/b;->a(Z)V

    .line 1349
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->B:Z

    if-nez v0, :cond_0

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/a/b;->B:Z

    .line 684
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/b;->h(Z)V

    .line 686
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 337
    iput-boolean p1, p0, Landroid/support/v7/internal/a/b;->G:Z

    .line 338
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    .line 341
    :cond_0
    return-void
.end method

.method public final e()Landroid/content/Context;
    .locals 4

    .prologue
    .line 887
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 889
    iget-object v1, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 890
    sget v2, Landroid/support/v7/b/b;->g:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 891
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 893
    if-eqz v0, :cond_1

    .line 894
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/internal/a/b;->k:Landroid/content/Context;

    .line 899
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->k:Landroid/content/Context;

    return-object v0

    .line 896
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->k:Landroid/content/Context;

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 652
    iput-boolean p1, p0, Landroid/support/v7/internal/a/b;->A:Z

    .line 653
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/b;->g(Z)V

    .line 266
    return-void
.end method

.method public final f(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 868
    if-eqz p1, :cond_4

    .line 869
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->D:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Landroid/support/v7/internal/a/b;->D:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b()V

    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/internal/a/b;->h(Z)V

    .line 874
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Landroid/support/v7/internal/widget/w;->c(I)V

    .line 875
    iget-object v4, p0, Landroid/support/v7/internal/a/b;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_7

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(I)V

    .line 876
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->s:Landroid/support/v7/internal/widget/ac;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->o()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->a()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    move v0, v3

    :goto_3
    if-eqz v0, :cond_3

    .line 878
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->s:Landroid/support/v7/internal/widget/ac;

    if-eqz p1, :cond_9

    :goto_4
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ac;->a(I)V

    .line 880
    :cond_3
    return-void

    .line 871
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->D:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/support/v7/internal/a/b;->D:Z

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b()V

    :cond_5
    invoke-direct {p0, v2}, Landroid/support/v7/internal/a/b;->h(Z)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 874
    goto :goto_1

    :cond_7
    move v0, v1

    .line 875
    goto :goto_2

    :cond_8
    move v0, v2

    .line 876
    goto :goto_3

    :cond_9
    move v1, v2

    .line 878
    goto :goto_4
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->d()V

    .line 943
    const/4 v0, 0x1

    .line 945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/c/b;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->b:Landroid/support/v7/c/a;

    invoke-interface {v0, v1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    .line 320
    iput-object v2, p0, Landroid/support/v7/internal/a/b;->b:Landroid/support/v7/c/a;

    .line 321
    iput-object v2, p0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/c/b;

    .line 323
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->C:Z

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/a/b;->C:Z

    .line 676
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/b;->h(Z)V

    .line 678
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 699
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->C:Z

    if-nez v0, :cond_0

    .line 700
    iput-boolean v1, p0, Landroid/support/v7/internal/a/b;->C:Z

    .line 701
    invoke-direct {p0, v1}, Landroid/support/v7/internal/a/b;->h(Z)V

    .line 703
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/a/b;->F:Landroid/support/v7/internal/view/h;

    .line 933
    :cond_0
    return-void
.end method
