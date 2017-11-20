.class public final Lcom/google/android/gms/auth/trustagent/t;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

.field private b:Lcom/google/android/gms/auth/trustagent/w;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/t;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/t;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->a:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/trustagent/t;)Lcom/google/android/gms/auth/trustagent/w;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->b:Lcom/google/android/gms/auth/trustagent/w;

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/w;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->b:Lcom/google/android/gms/auth/trustagent/w;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PAIRED_TAG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->a:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    .line 47
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 38
    const v0, 0x7f03002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0085

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->d:Landroid/widget/Button;

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0084

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->c:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/v;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/t;->d:Landroid/widget/Button;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/trustagent/v;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->a:Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0088

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/t;->d:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/u;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/u;-><init>(Lcom/google/android/gms/auth/trustagent/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
