.class public final Lcom/google/android/location/places/ui/ao;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private a:Lcom/google/android/location/places/ui/at;

.field private aj:Landroid/widget/Button;

.field private ak:Landroid/widget/Button;

.field private al:Ljava/lang/String;

.field private am:I

.field private b:Landroid/view/ViewGroup;

.field private c:[Ljava/lang/String;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/Spinner;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/ui/ao;->am:I

    .line 218
    return-void
.end method

.method private P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private T()Lcom/google/android/gms/location/places/PlaceType;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 201
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ao;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 208
    :cond_1
    :goto_0
    return-object v0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/ui/ao;->c:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/r;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v0

    .line 205
    if-nez v0, :cond_1

    .line 206
    sget-object v0, Lcom/google/android/gms/location/places/PlaceType;->bv:Lcom/google/android/gms/location/places/PlaceType;

    goto :goto_0
.end method

.method public static a()Lcom/google/android/location/places/ui/ao;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/location/places/ui/ao;

    invoke-direct {v0}, Lcom/google/android/location/places/ui/ao;-><init>()V

    .line 62
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/places/ui/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->T()Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/places/ui/ao;->aj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/location/places/ui/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/places/ui/ao;)Lcom/google/android/gms/location/places/PlaceType;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->T()Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/location/places/ui/ao;)Lcom/google/android/location/places/ui/at;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->a:Lcom/google/android/location/places/ui/at;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 86
    const v0, 0x7f03006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    .line 88
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a(Lcom/google/android/location/places/ui/at;)Lcom/google/android/location/places/ui/ao;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/location/places/ui/ao;->a:Lcom/google/android/location/places/ui/at;

    .line 67
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/location/places/ui/ao;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/location/places/ui/ao;->al:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 78
    instance-of v0, p1, Lcom/google/android/location/places/ui/PlacePickerActivity;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be an instance of PlacePickerActivity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->c()V

    .line 284
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->c:[Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d010b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->d:Landroid/widget/EditText;

    .line 98
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 101
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->e:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->f:Landroid/widget/EditText;

    .line 105
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->g:Landroid/widget/EditText;

    .line 108
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->h:Landroid/widget/Spinner;

    .line 111
    new-instance v0, Lcom/google/android/location/places/ui/as;

    invoke-direct {v0, p0}, Lcom/google/android/location/places/ui/as;-><init>(Lcom/google/android/location/places/ui/ao;)V

    .line 112
    iget-object v1, p0, Lcom/google/android/location/places/ui/ao;->h:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/location/places/ui/ao;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/as;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->h:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d0113

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->aj:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->aj:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/location/places/ui/ap;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/ap;-><init>(Lcom/google/android/location/places/ui/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->ak:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->ak:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/location/places/ui/aq;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/aq;-><init>(Lcom/google/android/location/places/ui/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d010c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->i:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/location/places/ui/ar;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/ar;-><init>(Lcom/google/android/location/places/ui/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string v0, "category_selection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/places/ui/ao;->am:I

    .line 144
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 150
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->al:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->al:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ao;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ao;->al:Ljava/lang/String;

    .line 155
    :cond_0
    iget v0, p0, Lcom/google/android/location/places/ui/ao;->am:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->h:Landroid/widget/Spinner;

    iget v1, p0, Lcom/google/android/location/places/ui/ao;->am:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 158
    :cond_1
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 163
    iget v0, p0, Lcom/google/android/location/places/ui/ao;->am:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 164
    const-string v0, "category_selection"

    iget v1, p0, Lcom/google/android/location/places/ui/ao;->am:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    :cond_0
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->c()V

    .line 260
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->g:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 263
    iget-object v0, p0, Lcom/google/android/location/places/ui/ao;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 264
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v0, p1}, Lcom/google/android/location/places/ui/bm;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 268
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->c()V

    .line 289
    iput p3, p0, Lcom/google/android/location/places/ui/ao;->am:I

    .line 290
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ao;->c()V

    .line 295
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method
