.class public final Lcom/google/maps/api/android/lib6/gmm6/c/k;
.super Landroid/support/v4/widget/r;


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/o/l;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/maps/api/android/lib6/gmm6/o/l;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v4/widget/r;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->b:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->d:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    return-void
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/google/c/a/db;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v2}, Lcom/google/c/a/db;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->b:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    instance-of v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/br;

    if-eqz v4, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/br;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->d:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final a(FF)I
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->d:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    goto :goto_1
.end method

.method protected final a(ILandroid/support/v4/view/a/i;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->c(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->b(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/i;->c(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/i;->a(I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->d:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/i;->d()V

    goto :goto_0
.end method

.method protected final a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_2
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->d:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(IIF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->d:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->c:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/k;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/k;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
