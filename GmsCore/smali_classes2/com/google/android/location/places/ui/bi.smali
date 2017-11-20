.class final Lcom/google/android/location/places/ui/bi;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/be;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/ui/be;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/location/places/ui/bi;->a:Lcom/google/android/location/places/ui/be;

    .line 309
    const v0, 0x7f03007c

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 310
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 314
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/ui/bi;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/AutocompletePrediction;

    .line 317
    if-nez p2, :cond_1

    .line 318
    iget-object v1, p0, Lcom/google/android/location/places/ui/bi;->a:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/be;->j()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007c

    iget-object v3, p0, Lcom/google/android/location/places/ui/bi;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v3}, Lcom/google/android/location/places/ui/be;->c(Lcom/google/android/location/places/ui/be;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 320
    new-instance v2, Lcom/google/android/location/places/ui/bj;

    invoke-direct {v2, p0, v4}, Lcom/google/android/location/places/ui/bj;-><init>(Lcom/google/android/location/places/ui/bi;B)V

    .line 321
    const v1, 0x7f0d013f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/google/android/location/places/ui/bj;->b:Landroid/widget/ImageView;

    .line 323
    const v1, 0x7f0d0140

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/google/android/location/places/ui/bj;->c:Landroid/widget/TextView;

    .line 326
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 331
    :goto_0
    iput-object v0, v2, Lcom/google/android/location/places/ui/bj;->a:Lcom/google/android/gms/location/places/AutocompletePrediction;

    .line 332
    iget-object v3, v2, Lcom/google/android/location/places/ui/bj;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/location/places/ui/bi;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v1}, Lcom/google/android/location/places/ui/be;->d(Lcom/google/android/location/places/ui/be;)Lcom/google/android/location/places/ui/q;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/location/places/ui/q;->a:Landroid/support/v4/f/q;

    invoke-virtual {v6, v1}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;

    .line 337
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->a()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->a()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction$Substring;->b()I

    move-result v0

    add-int/2addr v0, v6

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 328
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/places/ui/bj;

    move-object v2, v1

    goto :goto_0

    .line 332
    :cond_2
    iget-object v1, v4, Lcom/google/android/location/places/ui/q;->a:Landroid/support/v4/f/q;

    sget-object v4, Lcom/google/android/gms/location/places/PlaceType;->H:Lcom/google/android/gms/location/places/PlaceType;

    invoke-virtual {v4}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_1

    .line 341
    :cond_3
    iget-object v0, v2, Lcom/google/android/location/places/ui/bj;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-object p2
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/bj;

    .line 349
    iget-object v1, p0, Lcom/google/android/location/places/ui/bi;->a:Lcom/google/android/location/places/ui/be;

    iget-object v0, v0, Lcom/google/android/location/places/ui/bj;->a:Lcom/google/android/gms/location/places/AutocompletePrediction;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/AutocompletePrediction;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/location/places/ui/be;->a(Ljava/lang/String;Z)V

    .line 350
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/location/places/ui/bi;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v0}, Lcom/google/android/location/places/ui/be;->a(Lcom/google/android/location/places/ui/be;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 356
    iget-object v0, p0, Lcom/google/android/location/places/ui/bi;->a:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/be;->T()V

    .line 357
    const/4 v0, 0x0

    return v0
.end method
