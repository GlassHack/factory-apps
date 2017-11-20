.class final Lcom/google/android/location/places/ui/o;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/ui/k;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/location/places/ui/o;->a:Lcom/google/android/location/places/ui/k;

    .line 349
    const v0, 0x7f030074

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 350
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/ui/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/h;

    .line 357
    if-nez p2, :cond_1

    .line 358
    iget-object v1, p0, Lcom/google/android/location/places/ui/o;->a:Lcom/google/android/location/places/ui/k;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/k;->j()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030074

    iget-object v3, p0, Lcom/google/android/location/places/ui/o;->a:Lcom/google/android/location/places/ui/k;

    invoke-virtual {v3}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 359
    new-instance v2, Lcom/google/android/location/places/ui/p;

    invoke-direct {v2, p0, v6}, Lcom/google/android/location/places/ui/p;-><init>(Lcom/google/android/location/places/ui/o;B)V

    .line 360
    const v1, 0x7f0d0123

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/google/android/location/places/ui/p;->b:Landroid/widget/TextView;

    .line 361
    const v1, 0x7f0d0124

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/google/android/location/places/ui/p;->c:Landroid/widget/TextView;

    .line 362
    const v1, 0x7f0d0122

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/google/android/location/places/ui/p;->d:Landroid/widget/ImageView;

    .line 363
    const v1, 0x7f0d0125

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/location/places/ui/p;->e:Landroid/view/View;

    .line 364
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 368
    :goto_0
    iput-object v0, v1, Lcom/google/android/location/places/ui/p;->a:Lcom/google/android/gms/location/places/h;

    .line 369
    iget-object v2, v1, Lcom/google/android/location/places/ui/p;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, v1, Lcom/google/android/location/places/ui/p;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v2, v1, Lcom/google/android/location/places/ui/p;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/location/places/ui/o;->a:Lcom/google/android/location/places/ui/k;

    invoke-static {v3}, Lcom/google/android/location/places/ui/k;->d(Lcom/google/android/location/places/ui/k;)Lcom/google/android/location/places/ui/q;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    iget-object v5, v3, Lcom/google/android/location/places/ui/q;->a:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/o;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 374
    iget-object v0, v1, Lcom/google/android/location/places/ui/p;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :goto_2
    return-object p2

    .line 366
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/places/ui/p;

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, v3, Lcom/google/android/location/places/ui/q;->a:Landroid/support/v4/f/q;

    sget-object v3, Lcom/google/android/gms/location/places/PlaceType;->H:Lcom/google/android/gms/location/places/PlaceType;

    invoke-virtual {v3}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1

    .line 376
    :cond_3
    iget-object v0, v1, Lcom/google/android/location/places/ui/p;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 384
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/p;

    iget-object v0, v0, Lcom/google/android/location/places/ui/p;->a:Lcom/google/android/gms/location/places/h;

    .line 385
    iget-object v1, p0, Lcom/google/android/location/places/ui/o;->a:Lcom/google/android/location/places/ui/k;

    invoke-static {v1}, Lcom/google/android/location/places/ui/k;->c(Lcom/google/android/location/places/ui/k;)Lcom/google/android/location/places/ui/n;

    move-result-object v1

    const/4 v2, 0x2

    long-to-int v3, p4

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/location/places/ui/n;->a(Lcom/google/android/gms/location/places/h;II)V

    .line 387
    return-void
.end method
