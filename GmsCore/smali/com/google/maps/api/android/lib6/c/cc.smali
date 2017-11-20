.class public final Lcom/google/maps/api/android/lib6/c/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private d:Lcom/google/maps/api/android/lib6/c/cd;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/cc;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/cc;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/cc;->b:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/google/maps/api/android/lib6/c/cc;
    .locals 6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v1, "GoogleMapZoomButtons"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    sget v3, Lcom/google/android/gms/maps/x;->c:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/google/android/gms/maps/x;->d:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/google/android/gms/maps/y;->d:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/google/android/gms/maps/ab;->e:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v2, "GoogleMapZoomInButton"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    sget v4, Lcom/google/android/gms/maps/x;->c:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/google/android/gms/maps/x;->d:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lcom/google/android/gms/maps/y;->c:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v3, Lcom/google/android/gms/maps/ab;->f:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v3, "GoogleMapZoomOutButton"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/google/maps/api/android/lib6/c/cc;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/maps/api/android/lib6/c/cc;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cc;->c:Landroid/view/View;

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/cc;->d:Lcom/google/maps/api/android/lib6/c/cd;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/cc;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cc;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cc;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cc;->d:Lcom/google/maps/api/android/lib6/c/cd;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cc;->a:Landroid/view/View;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cc;->d:Lcom/google/maps/api/android/lib6/c/cd;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/cd;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cc;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cc;->d:Lcom/google/maps/api/android/lib6/c/cd;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/cd;->b()V

    goto :goto_0
.end method
