.class public final Lcom/google/android/location/places/ui/s;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/location/places/ui/v;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/google/android/gms/location/places/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/s;)Lcom/google/android/location/places/ui/v;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->a:Lcom/google/android/location/places/ui/v;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/s;)Lcom/google/android/gms/location/places/h;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->g:Lcom/google/android/gms/location/places/h;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f03006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/location/places/ui/s;->b:Landroid/view/ViewGroup;

    .line 64
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/places/ui/s;->g:Lcom/google/android/gms/location/places/h;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/s;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 54
    instance-of v0, p1, Lcom/google/android/location/places/ui/PlacePickerActivity;

    if-nez v0, :cond_0

    .line 55
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

    .line 58
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/h;)V
    .locals 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/location/places/ui/s;->g:Lcom/google/android/gms/location/places/h;

    .line 99
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/s;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/android/location/places/ui/s;->e:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object v1, p0, Lcom/google/android/location/places/ui/s;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    return-void

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f1003f9

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/s;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/s;->d:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d0118

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/location/places/ui/s;->c:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d011a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/location/places/ui/s;->e:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0d0119

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/location/places/ui/s;->f:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->f:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/location/places/ui/t;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/t;-><init>(Lcom/google/android/location/places/ui/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->e:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/location/places/ui/u;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/u;-><init>(Lcom/google/android/location/places/ui/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/location/places/ui/s;->a:Lcom/google/android/location/places/ui/v;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/v;->V()V

    .line 94
    return-void
.end method
