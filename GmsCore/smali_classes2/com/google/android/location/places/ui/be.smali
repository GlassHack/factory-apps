.class public final Lcom/google/android/location/places/ui/be;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/google/android/location/places/ui/bi;

.field private f:Lcom/google/android/location/places/ui/bk;

.field private g:Lcom/google/android/location/places/ui/bh;

.field private h:Lcom/google/android/location/places/ui/q;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 365
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/be;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a()Lcom/google/android/location/places/ui/be;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/location/places/ui/be;

    invoke-direct {v0}, Lcom/google/android/location/places/ui/be;-><init>()V

    .line 64
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/bi;->clear()V

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/bh;->V()V

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/be;->T()V

    .line 156
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/bh;->W()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/be;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/places/ui/be;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/places/ui/be;)Lcom/google/android/location/places/ui/q;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->h:Lcom/google/android/location/places/ui/q;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/places/ui/be;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/be;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/google/android/location/places/ui/be;->i:Z

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/location/places/ui/be;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/be;->i:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/location/places/ui/be;->i:Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/google/android/location/places/ui/bg;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/bg;-><init>(Lcom/google/android/location/places/ui/be;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/location/places/ui/be;)Lcom/google/android/location/places/ui/bi;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    return-object v0
.end method


# virtual methods
.method public final P()V
    .locals 2

    .prologue
    .line 159
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/places/ui/be;->a(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public final R()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 281
    return-void
.end method

.method public final S()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/bi;->clear()V

    .line 285
    return-void
.end method

.method public final T()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/android/location/places/ui/bm;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 289
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f03007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    const v1, 0x7f0d0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/places/ui/be;->a:Landroid/view/View;

    .line 81
    return-object v0
.end method

.method public final a(Lcom/google/android/location/places/ui/bh;)Lcom/google/android/location/places/ui/be;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    .line 74
    return-object p0
.end method

.method public final a(Lcom/google/android/location/places/ui/q;)Lcom/google/android/location/places/ui/be;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/location/places/ui/be;->h:Lcom/google/android/location/places/ui/q;

    .line 69
    return-object p0
.end method

.method public final a(Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->f:Lcom/google/android/location/places/ui/bk;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 131
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/location/places/ui/be;->a(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public final a([Lcom/google/android/gms/location/places/AutocompletePrediction;)V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/bi;->clear()V

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/ui/bi;->addAll([Ljava/lang/Object;)V

    goto :goto_0

    .line 273
    :cond_2
    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 274
    iget-object v3, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v3, v2}, Lcom/google/android/location/places/ui/bi;->add(Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->a:Landroid/view/View;

    const v1, 0x7f0d0138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->a:Landroid/view/View;

    const v1, 0x7f0d0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/location/places/ui/be;->c:Landroid/widget/ImageButton;

    .line 90
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->a:Landroid/view/View;

    const v1, 0x7f0d013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/location/places/ui/be;->d:Landroid/widget/ListView;

    .line 91
    new-instance v0, Lcom/google/android/location/places/ui/bi;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/places/ui/bi;-><init>(Lcom/google/android/location/places/ui/be;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    .line 92
    new-instance v0, Lcom/google/android/location/places/ui/bk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/places/ui/bk;-><init>(Lcom/google/android/location/places/ui/be;B)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/be;->f:Lcom/google/android/location/places/ui/bk;

    .line 95
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->d:Landroid/widget/ListView;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 96
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/location/places/ui/bf;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/bf;-><init>(Lcom/google/android/location/places/ui/be;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->c:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/places/ui/be;->d:Landroid/widget/ListView;

    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 118
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 207
    invoke-direct {p0, v0}, Lcom/google/android/location/places/ui/be;->a(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    if-eqz v0, :cond_0

    .line 260
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/places/ui/be;->a(Ljava/lang/String;Z)V

    .line 262
    :cond_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 215
    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 217
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 221
    invoke-direct {p0, v1}, Lcom/google/android/location/places/ui/be;->a(Ljava/lang/String;)V

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 235
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->c:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->e:Lcom/google/android/location/places/ui/bi;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/bi;->clear()V

    .line 239
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/bh;->W()V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->c:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/google/android/location/places/ui/be;->g:Lcom/google/android/location/places/ui/bh;

    invoke-interface {v1, v0}, Lcom/google/android/location/places/ui/bh;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
