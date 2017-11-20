.class final Lcom/google/android/location/places/ui/as;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/ao;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/ui/ao;)V
    .locals 3

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/location/places/ui/as;->a:Lcom/google/android/location/places/ui/ao;

    .line 221
    invoke-virtual {p1}, Lcom/google/android/location/places/ui/ao;->j()Landroid/support/v4/app/j;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 222
    invoke-virtual {p1}, Lcom/google/android/location/places/ui/ao;->j()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 224
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 225
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/google/android/location/places/ui/as;->add(Ljava/lang/Object;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/location/places/ui/ao;->j()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/as;->add(Ljava/lang/Object;)V

    .line 228
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 238
    if-nez p2, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/android/location/places/ui/as;->a:Lcom/google/android/location/places/ui/ao;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/ao;->j()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 242
    check-cast v0, Landroid/widget/TextView;

    .line 243
    iget-object v2, p0, Lcom/google/android/location/places/ui/as;->a:Lcom/google/android/location/places/ui/ao;

    invoke-virtual {v2}, Lcom/google/android/location/places/ui/ao;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 244
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/as;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/ui/as;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :goto_1
    return-object v1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/as;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/location/places/ui/as;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
