.class public final Lcom/google/maps/api/android/lib6/c/ct;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/widget/RelativeLayout;

.field final b:Landroid/content/res/Resources;

.field final c:Landroid/content/Context;

.field d:Lcom/google/maps/api/android/lib6/c/cc;

.field e:Lcom/google/maps/api/android/lib6/c/ag;

.field private final f:Ljava/util/Map;

.field private g:Lcom/google/maps/api/android/lib6/c/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 9

    const/16 v8, 0xb

    const/4 v7, 0x2

    const/4 v4, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ct;->f:Ljava/util/Map;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ct;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ct;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ct;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/gms/maps/x;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/gms/maps/x;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/gms/maps/x;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/gms/maps/x;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v5, v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-direct {p0, v7, v0}, Lcom/google/maps/api/android/lib6/c/ct;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/gms/maps/x;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/gms/maps/x;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/gms/maps/x;->a:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/c/ct;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/gms/maps/x;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/gms/maps/x;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/c/ct;->a(ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method private a(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/c/h;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ct;->g:Lcom/google/maps/api/android/lib6/c/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ct;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->b:Landroid/content/res/Resources;

    new-instance v2, Lcom/google/maps/api/android/lib6/c/j;

    invoke-direct {v2, v0, v1}, Lcom/google/maps/api/android/lib6/c/j;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/google/android/gms/maps/x;->c:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/c/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lcom/google/android/gms/maps/y;->H:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/c/j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Lcom/google/maps/api/android/lib6/c/j;->setCacheColorHint(I)V

    invoke-virtual {v2, v7}, Lcom/google/maps/api/android/lib6/c/j;->setChoiceMode(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/c/j;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Lcom/google/maps/api/android/lib6/c/j;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v2, v7}, Lcom/google/maps/api/android/lib6/c/j;->setScrollingCacheEnabled(Z)V

    invoke-virtual {v2, v7}, Lcom/google/maps/api/android/lib6/c/j;->setSmoothScrollbarEnabled(Z)V

    invoke-virtual {v2, v8}, Lcom/google/maps/api/android/lib6/c/j;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/h;

    invoke-direct {v0, v2, v1}, Lcom/google/maps/api/android/lib6/c/h;-><init>(Lcom/google/maps/api/android/lib6/c/j;Landroid/view/View;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/c/h;->a:Lcom/google/maps/api/android/lib6/c/j;

    new-instance v2, Lcom/google/maps/api/android/lib6/c/i;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/c/i;-><init>(Lcom/google/maps/api/android/lib6/c/h;)V

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/c/j;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ct;->g:Lcom/google/maps/api/android/lib6/c/h;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->g:Lcom/google/maps/api/android/lib6/c/h;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/c/h;->b:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/c/ct;->a(ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ct;->g:Lcom/google/maps/api/android/lib6/c/h;

    return-object v0
.end method

.method final a(ILandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ct;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, p2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
