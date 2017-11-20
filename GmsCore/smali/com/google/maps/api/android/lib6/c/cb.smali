.class public final Lcom/google/maps/api/android/lib6/c/cb;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/widget/RelativeLayout;

.field final b:Landroid/content/res/Resources;

.field c:Landroid/widget/ImageView;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 4

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/cb;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cb;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/cb;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/cb;->b:Landroid/content/res/Resources;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/cb;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/cb;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cb;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/cb;->b:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/gms/maps/y;->J:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/cb;->b:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/gms/maps/x;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/cb;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/cb;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
