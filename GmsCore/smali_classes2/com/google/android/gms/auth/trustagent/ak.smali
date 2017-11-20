.class public final Lcom/google/android/gms/auth/trustagent/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Lcom/google/android/gms/auth/trustagent/ao;

.field d:Landroid/os/AsyncTask;

.field e:Landroid/os/Bundle;

.field f:Lcom/google/android/gms/auth/trustagent/q;

.field g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/auth/trustagent/ao;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/android/gms/auth/trustagent/al;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/al;-><init>(Lcom/google/android/gms/auth/trustagent/ak;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->g:Landroid/content/ServiceConnection;

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/ak;->a:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/ak;->b:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/google/android/gms/auth/trustagent/ak;->c:Lcom/google/android/gms/auth/trustagent/ao;

    .line 74
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/google/android/gms/auth/trustagent/an;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/auth/trustagent/an;-><init>(Lcom/google/android/gms/auth/trustagent/ak;Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 178
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->d:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->d:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 129
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/trustagent/am;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/am;-><init>(Lcom/google/android/gms/auth/trustagent/ak;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->d:Landroid/os/AsyncTask;

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->d:Landroid/os/AsyncTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-void
.end method
