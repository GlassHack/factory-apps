.class public final Lcom/google/maps/api/android/lib6/c/j;
.super Landroid/widget/ListView;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/em;


# instance fields
.field private a:I

.field private b:Lcom/google/maps/api/android/lib6/c/ei;

.field private c:Lcom/google/maps/api/android/lib6/c/el;

.field private d:I

.field private e:Lcom/google/maps/api/android/lib6/c/p;

.field private final f:Ljava/util/Set;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lcom/google/maps/api/android/lib6/c/br;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/maps/api/android/lib6/c/j;-><init>(Landroid/content/Context;Landroid/content/res/Resources;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;B)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/google/maps/api/android/lib6/c/j;->a:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/c/j;->d:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->f:Ljava/util/Set;

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->a()Lcom/google/maps/api/android/lib6/c/br;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->h:Lcom/google/maps/api/android/lib6/c/br;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/j;->g:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/c/j;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->g:Landroid/content/res/Resources;

    return-object v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/a/a/g;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->h:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/c/j;->b(Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/c/ei;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/j;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    iput v2, p0, Lcom/google/maps/api/android/lib6/c/j;->d:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/c/j;->a:I

    if-eqz p1, :cond_0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-virtual {p0, v3}, Lcom/google/maps/api/android/lib6/c/j;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/google/maps/api/android/lib6/c/k;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/c/k;-><init>(Lcom/google/maps/api/android/lib6/c/j;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/p;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/j;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-direct {v0, p0, v1, v4}, Lcom/google/maps/api/android/lib6/c/p;-><init>(Lcom/google/maps/api/android/lib6/c/j;Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/ei;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->e:Lcom/google/maps/api/android/lib6/c/p;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->e:Lcom/google/maps/api/android/lib6/c/p;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->h:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/j;->d:I

    if-eq v2, v0, :cond_0

    iput v2, p0, Lcom/google/maps/api/android/lib6/c/j;->d:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->e:Lcom/google/maps/api/android/lib6/c/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/p;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/j;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/google/maps/api/android/lib6/c/l;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/c/l;-><init>(Lcom/google/maps/api/android/lib6/c/j;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    if-nez v1, :cond_6

    move v0, v2

    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->a(I)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/j;->b()V

    goto :goto_2

    :cond_6
    if-nez p2, :cond_8

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/ei;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :cond_7
    :goto_4
    if-gez v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_8
    invoke-interface {v1, p2}, Lcom/google/maps/api/android/lib6/c/ei;->b(Lcom/google/maps/api/android/lib6/a/a/g;)I

    move-result v0

    if-ltz v0, :cond_7

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/ei;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/c/j;Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/a/a/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/a/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/c/ei;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/c/j;->b(Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/c/ei;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/c/j;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/j;->a:I

    return v0
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/j;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/j;->a:I

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/c/ei;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/c/j;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/j;->d:I

    return v0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/c/j;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/c/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/j;->b()V

    return-void
.end method

.method static synthetic f(Lcom/google/maps/api/android/lib6/c/j;)Lcom/google/maps/api/android/lib6/c/el;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->c:Lcom/google/maps/api/android/lib6/c/el;

    return-object v0
.end method

.method static synthetic g(Lcom/google/maps/api/android/lib6/c/j;)Lcom/google/maps/api/android/lib6/c/ei;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/m;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/c/m;-><init>(Lcom/google/maps/api/android/lib6/c/j;)V

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/j;->a:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/j;->a:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->e:Lcom/google/maps/api/android/lib6/c/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/p;->notifyDataSetChanged()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/c/j;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/q;->a:Lcom/google/maps/api/android/lib6/c/ek;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/j;->c:Lcom/google/maps/api/android/lib6/c/el;

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->c:Lcom/google/maps/api/android/lib6/c/el;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/j;->b:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/el;->d(Lcom/google/maps/api/android/lib6/c/ei;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/j;->c:Lcom/google/maps/api/android/lib6/c/el;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->a()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/maps/api/android/lib6/c/el;->a(Lcom/google/maps/api/android/lib6/a/a/g;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/c/n;

    invoke-direct {v0, p0, p1}, Lcom/google/maps/api/android/lib6/c/n;-><init>(Lcom/google/maps/api/android/lib6/c/j;Lcom/google/maps/api/android/lib6/c/ei;)V

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/el;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->c:Lcom/google/maps/api/android/lib6/c/el;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/j;->c:Lcom/google/maps/api/android/lib6/c/el;

    invoke-interface {v0, p0}, Lcom/google/maps/api/android/lib6/c/el;->b(Lcom/google/maps/api/android/lib6/c/em;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/j;->a()V

    invoke-interface {p1, p0}, Lcom/google/maps/api/android/lib6/c/el;->a(Lcom/google/maps/api/android/lib6/c/em;)V

    :cond_1
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/j;->c:Lcom/google/maps/api/android/lib6/c/el;

    return-void
.end method

.method final b(Lcom/google/maps/api/android/lib6/c/el;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/el;->c()Lcom/google/maps/api/android/lib6/c/ei;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/maps/api/android/lib6/c/el;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/a/a/g;)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/o;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/c/o;-><init>(Lcom/google/maps/api/android/lib6/c/j;)V

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/j;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
