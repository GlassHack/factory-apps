.class public Lcom/google/maps/api/android/lib6/c/ae;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Ljava/util/Map;

.field private final c:Lcom/google/maps/api/android/lib6/c/cr;

.field private final d:Lcom/google/maps/api/android/lib6/c/bu;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Lcom/google/maps/api/android/lib6/c/en;

.field private final g:Lcom/google/maps/api/android/lib6/c/af;

.field private final h:Lcom/google/maps/api/android/lib6/c/br;

.field private i:Lcom/google/android/gms/maps/internal/av;

.field private j:Lcom/google/android/gms/maps/internal/ay;

.field private k:Lcom/google/android/gms/maps/internal/ag;

.field private l:Lcom/google/android/gms/maps/internal/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/c/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/c/af;Lcom/google/maps/api/android/lib6/c/en;Landroid/view/ViewGroup;Lcom/google/maps/api/android/lib6/c/cr;Lcom/google/maps/api/android/lib6/c/br;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->a:I

    invoke-static {}, Lcom/google/c/c/gc;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/ae;->f:Lcom/google/maps/api/android/lib6/c/en;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/ae;->e:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/c/ae;->c:Lcom/google/maps/api/android/lib6/c/cr;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/c/ae;->h:Lcom/google/maps/api/android/lib6/c/br;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/c/ae;->d:Lcom/google/maps/api/android/lib6/c/bu;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ae;->g:Lcom/google/maps/api/android/lib6/c/af;

    return-void
.end method

.method static a(Lcom/google/maps/api/android/lib6/c/af;Lcom/google/maps/api/android/lib6/c/cr;Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/c/bu;)Lcom/google/maps/api/android/lib6/c/ae;
    .locals 9

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v7, 0x1

    const/4 v6, -0x2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->a()Lcom/google/maps/api/android/lib6/c/br;

    move-result-object v5

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Lcom/google/android/gms/maps/y;->I:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v2, -0x777778

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/google/maps/api/android/lib6/c/en;

    invoke-direct {v2, v0, v1, v4}, Lcom/google/maps/api/android/lib6/c/en;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ae;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/c/ae;-><init>(Lcom/google/maps/api/android/lib6/c/af;Lcom/google/maps/api/android/lib6/c/en;Landroid/view/ViewGroup;Lcom/google/maps/api/android/lib6/c/cr;Lcom/google/maps/api/android/lib6/c/br;Lcom/google/maps/api/android/lib6/c/bu;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/maps/api/android/lib6/c/ac;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->h:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "no position in marker options"

    invoke-static {v0, v3}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ac;

    const-string v3, "m%d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/maps/api/android/lib6/c/ae;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/c/ae;->c:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/ae;->h:Lcom/google/maps/api/android/lib6/c/br;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/c/ae;->d:Lcom/google/maps/api/android/lib6/c/bu;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/c/ac;-><init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/api/android/lib6/c/ae;Lcom/google/maps/api/android/lib6/c/cr;Lcom/google/maps/api/android/lib6/c/br;Lcom/google/maps/api/android/lib6/c/bu;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/c/ae;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/c/ae;->a:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ae;->g:Lcom/google/maps/api/android/lib6/c/af;

    invoke-interface {v1, v0}, Lcom/google/maps/api/android/lib6/c/af;->a(Lcom/google/maps/api/android/lib6/c/ac;)Lcom/google/maps/api/android/lib6/c/ad;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/ad;->a()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->h:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->o()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/ag;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->h:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ae;->k:Lcom/google/android/gms/maps/internal/ag;

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/av;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->h:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ae;->i:Lcom/google/android/gms/maps/internal/av;

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/ay;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->h:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ae;->j:Lcom/google/android/gms/maps/internal/ay;

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->h:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ae;->l:Lcom/google/android/gms/maps/internal/n;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ac;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ad;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ad;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ac;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ad;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Lcom/google/maps/api/android/lib6/c/ad;->a(I)V

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/c/ac;)Landroid/view/View;
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->l:Lcom/google/android/gms/maps/internal/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->l:Lcom/google/android/gms/maps/internal/n;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/n;->a(Lcom/google/android/gms/maps/model/a/p;)Lcom/google/android/gms/e/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->l:Lcom/google/android/gms/maps/internal/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->l:Lcom/google/android/gms/maps/internal/n;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/n;->b(Lcom/google/android/gms/maps/model/a/p;)Lcom/google/android/gms/e/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/ac;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/db;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return-object v1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->f:Lcom/google/maps/api/android/lib6/c/en;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/ac;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/c/en;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/c/en;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->f:Lcom/google/maps/api/android/lib6/c/en;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/ac;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/c/en;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/en;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->f:Lcom/google/maps/api/android/lib6/c/en;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/en;->a:Landroid/view/View;

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ae;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ae;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->e:Landroid/view/ViewGroup;

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_4
.end method

.method public final c(Lcom/google/maps/api/android/lib6/c/ac;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ad;->d()Z

    move-result v0

    return v0
.end method

.method public final d(Lcom/google/maps/api/android/lib6/c/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->j:Lcom/google/android/gms/maps/internal/ay;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ad;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->j:Lcom/google/android/gms/maps/internal/ay;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/ay;->a(Lcom/google/android/gms/maps/model/a/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e(Lcom/google/maps/api/android/lib6/c/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->j:Lcom/google/android/gms/maps/internal/ay;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ad;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->j:Lcom/google/android/gms/maps/internal/ay;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/ay;->b(Lcom/google/android/gms/maps/model/a/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final f(Lcom/google/maps/api/android/lib6/c/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->j:Lcom/google/android/gms/maps/internal/ay;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ad;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->j:Lcom/google/android/gms/maps/internal/ay;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/ay;->c(Lcom/google/android/gms/maps/model/a/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final g(Lcom/google/maps/api/android/lib6/c/ac;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->i:Lcom/google/android/gms/maps/internal/av;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->i:Lcom/google/android/gms/maps/internal/av;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/av;->a(Lcom/google/android/gms/maps/model/a/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->u:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->t:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/c/ac;->g()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->v:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final h(Lcom/google/maps/api/android/lib6/c/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->k:Lcom/google/android/gms/maps/internal/ag;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->s:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->r:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ae;->k:Lcom/google/android/gms/maps/internal/ag;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/ag;->a(Lcom/google/android/gms/maps/model/a/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
