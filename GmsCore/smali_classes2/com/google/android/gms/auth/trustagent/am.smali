.class final Lcom/google/android/gms/auth/trustagent/am;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/ak;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/am;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/am;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ak;->f:Lcom/google/android/gms/auth/trustagent/q;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/am;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v1, v1, Lcom/google/android/gms/auth/trustagent/ak;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/trustagent/q;->a(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v1, "Coffee - PreferenceServiceClient"

    const-string v2, "Failed to retrieve preferences."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/am;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 129
    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/am;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iput-object p1, v0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/am;->a:Lcom/google/android/gms/auth/trustagent/ak;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/auth/trustagent/ak;->d:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/am;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ak;->c:Lcom/google/android/gms/auth/trustagent/ao;

    invoke-interface {v0}, Lcom/google/android/gms/auth/trustagent/ao;->a()V

    return-void
.end method
