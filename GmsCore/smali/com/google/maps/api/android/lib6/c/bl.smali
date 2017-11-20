.class public final Lcom/google/maps/api/android/lib6/c/bl;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0xc

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bl;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bl;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/bl;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/bl;->a()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bl;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bl;->b:Landroid/widget/TextView;

    const-string v1, "Report a problem"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bl;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bl;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/bl;->a()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bl;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bl;->c:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bl;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/bl;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a()Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bl;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    const v1, -0x6f000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/bl;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bl;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
