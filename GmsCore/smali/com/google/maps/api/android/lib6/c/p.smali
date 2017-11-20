.class final Lcom/google/maps/api/android/lib6/c/p;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/j;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/j;Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 3

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-interface {p3}, Lcom/google/maps/api/android/lib6/c/ei;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/c/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/c/q;-><init>(Lcom/google/maps/api/android/lib6/c/ek;)V

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/p;->add(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p3}, Lcom/google/maps/api/android/lib6/c/ei;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ek;

    new-instance v2, Lcom/google/maps/api/android/lib6/c/q;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/c/q;-><init>(Lcom/google/maps/api/android/lib6/c/ek;)V

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/c/p;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/google/maps/api/android/lib6/c/p;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/c/p;->a(I)I

    move-result v1

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/c/p;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v4, 0x8

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    move-object v0, p2

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez p2, :cond_5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/16 v2, 0x2c

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/c/p;->a(I)I

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/r;

    if-nez v0, :cond_4

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    const/4 v0, 0x2

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/j;)Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/google/android/gms/maps/w;->c:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x24

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/c/p;->a(I)I

    move-result v5

    invoke-direct {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/p;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/j;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/gms/maps/y;->F:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/google/maps/api/android/lib6/c/p;->a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/j;)Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/gms/maps/y;->G:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/google/maps/api/android/lib6/c/p;->a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v6

    new-instance v0, Lcom/google/maps/api/android/lib6/c/r;

    invoke-direct {v0, v2, v5, v6}, Lcom/google/maps/api/android/lib6/c/r;-><init>(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/c/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/q;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/c/r;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/c/r;->a:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/j;)Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/gms/maps/ab;->b:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/j;->b(Lcom/google/maps/api/android/lib6/c/j;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/c/r;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/j;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/gms/maps/w;->a:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/j;)Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/google/android/gms/maps/y;->E:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/j;->c(Lcom/google/maps/api/android/lib6/c/j;)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/c/r;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/c/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/q;->a:Lcom/google/maps/api/android/lib6/c/ek;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/j;->d(Lcom/google/maps/api/android/lib6/c/j;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->a()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_4
    iget-object v2, v2, Lcom/google/maps/api/android/lib6/c/r;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    return-object v1

    :cond_1
    iget-object v0, v2, Lcom/google/maps/api/android/lib6/c/r;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/p;->a:Lcom/google/maps/api/android/lib6/c/j;

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/j;->a(Lcom/google/maps/api/android/lib6/c/j;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/gms/maps/w;->c:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_2

    :cond_2
    iget-object v0, v2, Lcom/google/maps/api/android/lib6/c/r;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    move v0, v4

    goto :goto_4

    :cond_4
    move-object v2, v0

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
