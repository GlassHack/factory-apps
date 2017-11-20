.class public final Lcom/google/android/location/places/ui/k;
.super Landroid/support/v4/app/ai;
.source "SourceFile"


# instance fields
.field private aA:Landroid/view/View;

.field private aB:Landroid/view/View;

.field private aC:Landroid/widget/TextView;

.field private aD:Landroid/view/View;

.field private aE:Landroid/view/View;

.field private aF:Ljava/lang/String;

.field private aG:Ljava/lang/String;

.field private aH:Lcom/google/android/location/places/ui/o;

.field private aI:Lcom/google/android/gms/location/places/h;

.field aj:Landroid/view/View;

.field ak:Lcom/google/android/location/places/ui/n;

.field al:Lcom/google/android/location/places/ui/q;

.field am:I

.field an:I

.field ao:I

.field ap:Z

.field aq:Z

.field ar:Z

.field private as:Landroid/widget/TextView;

.field private at:Landroid/widget/TextView;

.field private au:Landroid/widget/TextView;

.field private av:Lcom/google/android/location/places/ui/TransparentView;

.field private aw:Landroid/view/View;

.field private ax:Landroid/view/View;

.field private ay:Landroid/view/View;

.field private az:Landroid/widget/Button;

.field i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v4/app/ai;-><init>()V

    .line 88
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 313
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aH:Lcom/google/android/location/places/ui/o;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/o;->clear()V

    .line 314
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->ay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aB:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aE:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/k;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/k;)Lcom/google/android/gms/location/places/h;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aI:Lcom/google/android/gms/location/places/h;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/places/ui/k;)Lcom/google/android/location/places/ui/n;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->ak:Lcom/google/android/location/places/ui/n;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/places/ui/k;)Lcom/google/android/location/places/ui/q;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->al:Lcom/google/android/location/places/ui/q;

    return-object v0
.end method


# virtual methods
.method public final P()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->ay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/h;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 241
    iput-object p1, p0, Lcom/google/android/location/places/ui/k;->aI:Lcom/google/android/gms/location/places/h;

    .line 242
    iget-object v2, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 244
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->au:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->as:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->at:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    if-eqz p1, :cond_4

    .line 249
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->as:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->at:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 242
    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->as:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->aG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->at:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 255
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->as:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->aG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->at:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/k;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/k;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->au:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->as:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->at:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->au:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    return-void
.end method

.method public final a([Lcom/google/android/gms/location/places/h;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/k;->ar:Z

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setImportantForAccessibility(I)V

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/places/ui/k;->Q()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aH:Lcom/google/android/location/places/ui/o;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/ui/o;->addAll([Ljava/lang/Object;)V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aB:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aC:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_3
    array-length v2, p1

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/google/android/location/places/ui/k;->aH:Lcom/google/android/location/places/ui/o;

    invoke-virtual {v4, v3}, Lcom/google/android/location/places/ui/o;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aC:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aC:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/android/location/places/ui/k;->Q()V

    .line 296
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/ui/k;->a(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aE:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/ai;->c(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f1003f9

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/k;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aF:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007d

    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/TransparentView;

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->av:Lcom/google/android/location/places/ui/TransparentView;

    .line 135
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007b

    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    .line 137
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aw:Landroid/view/View;

    .line 139
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030078

    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aD:Landroid/view/View;

    .line 141
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->ax:Landroid/view/View;

    .line 143
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aA:Landroid/view/View;

    .line 145
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d0132

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->i:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aD:Landroid/view/View;

    const v1, 0x7f0d00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aE:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->ax:Landroid/view/View;

    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->ay:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->ay:Landroid/view/View;

    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->az:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aA:Landroid/view/View;

    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aB:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aA:Landroid/view/View;

    const v1, 0x7f0d011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aC:Landroid/widget/TextView;

    .line 153
    invoke-virtual {p0, v4}, Lcom/google/android/location/places/ui/k;->a(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->av:Lcom/google/android/location/places/ui/TransparentView;

    invoke-virtual {v1, v0}, Lcom/google/android/location/places/ui/TransparentView;->a(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->av:Lcom/google/android/location/places/ui/TransparentView;

    iget v1, p0, Lcom/google/android/location/places/ui/k;->an:I

    iget v2, p0, Lcom/google/android/location/places/ui/k;->am:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/places/ui/TransparentView;->a(II)V

    .line 159
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->av:Lcom/google/android/location/places/ui/TransparentView;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 162
    const v0, 0x7f1002dd

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/k;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aG:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    const v1, 0x7f0d013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->as:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    const v1, 0x7f0d013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->at:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    const v1, 0x7f0d013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->au:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 168
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/k;->ar:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->aw:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->aD:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->ax:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->aA:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 184
    new-instance v0, Lcom/google/android/location/places/ui/o;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/places/ui/o;-><init>(Lcom/google/android/location/places/ui/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aH:Lcom/google/android/location/places/ui/o;

    .line 185
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aH:Lcom/google/android/location/places/ui/o;

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/k;->a(Landroid/widget/ListAdapter;)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/k;->aH:Lcom/google/android/location/places/ui/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    new-instance v1, Lcom/google/android/location/places/ui/l;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/l;-><init>(Lcom/google/android/location/places/ui/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/location/places/ui/k;->az:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/location/places/ui/m;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/m;-><init>(Lcom/google/android/location/places/ui/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/places/ui/k;->aH:Lcom/google/android/location/places/ui/o;

    .line 124
    invoke-super {p0}, Landroid/support/v4/app/ai;->f()V

    .line 125
    return-void
.end method
