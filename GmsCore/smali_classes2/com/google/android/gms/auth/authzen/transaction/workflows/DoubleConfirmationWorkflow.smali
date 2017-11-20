.class public Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;
.super Lcom/google/android/gms/auth/authzen/transaction/a;
.source "SourceFile"


# instance fields
.field private v:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/m/b/a/a/p;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-boolean v1, v1, Lcom/google/m/b/a/a/o;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v1, v1, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget-boolean v1, v1, Lcom/google/m/b/a/a/e;->c:Z

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/i;->a(Lcom/google/m/b/a/a/p;)Lcom/google/android/gms/auth/authzen/transaction/b/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->b()Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/google/android/gms/auth/authzen/transaction/b/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v1, v1, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget v1, v1, Lcom/google/m/b/a/a/e;->d:I

    .line 47
    const-string v2, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while creating TextProvider for UseCase: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->a(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/authzen/transaction/a/e;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/auth/authzen/transaction/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    if-nez p2, :cond_0

    .line 69
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->a(IZ)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->v:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/a/c;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/c;

    move-result-object v0

    .line 76
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V

    .line 94
    :goto_1
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->a(II)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->v:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/a/a;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/a;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    if-nez p2, :cond_2

    .line 82
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->a(II)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->v:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/b/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_2
    const/16 v0, 0x64

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->a(II)V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->v:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/b/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 91
    :cond_3
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->finish()V

    goto :goto_1

    .line 96
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment not supported in double confirm workflow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/authzen/transaction/a;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->e()Lcom/google/m/b/a/a/p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/b/i;->a(Lcom/google/m/b/a/a/p;)Lcom/google/android/gms/auth/authzen/transaction/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->b()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->v:Landroid/os/Bundle;

    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->v:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/transaction/a/d;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/d;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/authzen/transaction/workflows/DoubleConfirmationWorkflow;->a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V

    .line 61
    :cond_0
    return-void
.end method
