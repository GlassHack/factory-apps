.class public Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;
.super Ljava/lang/Object;


# instance fields
.field private Cs:Ljava/lang/String;

.field private Ct:Lcom/google/android/gms/fitness/data/Session;

.field private Cu:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Cu:Z

    iput-object p1, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private c(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Cs:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Cs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Session must be set"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->a(ZLjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "vnd.google.fitness.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Session;->getActivity()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/FitnessIntents;->getSessionMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    const-string v2, "vnd.google.fitness.session"

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Cu:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Session;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Cs:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->c(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferredApplication(Ljava/lang/String;)Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Cs:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Cu:Z

    return-object p0
.end method

.method public setSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;
    .locals 0
    .param p1, "session"    # Lcom/google/android/gms/fitness/data/Session;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/fitness/ViewSessionIntentBuilder;->Ct:Lcom/google/android/gms/fitness/data/Session;

    return-object p0
.end method
