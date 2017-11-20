.class public final Lcom/google/android/gms/common/server/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/server/a/c;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Landroid/os/Bundle;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/server/ClientContext;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/a/a;-><init>(Lcom/google/android/gms/common/server/ClientContext;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/server/ClientContext;Z)V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/ClientContext;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/a/a;->b:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/a/a;->d:Landroid/os/Bundle;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/a;->d:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/ClientContext;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/a;->d:Landroid/os/Bundle;

    const-string v1, "callerUid"

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/ClientContext;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/ClientContext;->g()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/a;->d:Landroid/os/Bundle;

    const-string v1, "request_visible_actions"

    const-string v2, " "

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/ClientContext;->g()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/a;->d:Landroid/os/Bundle;

    const-string v1, "suppressProgressScreen"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/ClientContext;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/a/a;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/ClientContext;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/a/a;->c:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/auth/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/server/a/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/a/a;->d:Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/a/a;->e:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/google/android/gms/common/server/a/b;->a()Lcom/google/android/gms/common/server/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/server/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/a/b;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/common/server/a/a;->e:Ljava/lang/String;

    return-object v0
.end method
