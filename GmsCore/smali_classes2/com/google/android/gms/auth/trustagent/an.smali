.class final Lcom/google/android/gms/auth/trustagent/an;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/auth/trustagent/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/ak;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/an;->c:Lcom/google/android/gms/auth/trustagent/ak;

    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/an;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/auth/trustagent/an;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->c:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ak;->f:Lcom/google/android/gms/auth/trustagent/q;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/an;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/trustagent/q;->b(Ljava/lang/String;)V

    .line 168
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->c:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/ak;->f:Lcom/google/android/gms/auth/trustagent/q;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/an;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/auth/trustagent/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v1, "Coffee - PreferenceServiceClient"

    const-string v2, "Failed to access preference service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 159
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->c:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/ak;->f:Lcom/google/android/gms/auth/trustagent/q;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/an;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/auth/trustagent/q;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 162
    :cond_2
    const-string v0, "Coffee - PreferenceServiceClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type for preference value. Ignored. (key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/an;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/an;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/an;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->c:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/an;->a:Ljava/lang/Object;

    return-void
.end method
