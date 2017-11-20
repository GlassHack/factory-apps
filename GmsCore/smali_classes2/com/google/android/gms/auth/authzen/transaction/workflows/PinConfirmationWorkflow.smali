.class public Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;
.super Lcom/google/android/gms/auth/authzen/transaction/a;
.source "SourceFile"


# instance fields
.field private v:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/auth/authzen/transaction/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/m/b/a/a/p;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-boolean v1, p0, Lcom/google/m/b/a/a/p;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-boolean v1, v1, Lcom/google/m/b/a/a/o;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v1, v1, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget-boolean v1, v1, Lcom/google/m/b/a/a/e;->c:Z

    if-nez v1, :cond_1

    .line 43
    :cond_0
    const-string v1, "AuthZen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return v0

    .line 47
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/i;->a(Lcom/google/m/b/a/a/p;)Lcom/google/android/gms/auth/authzen/transaction/b/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->b()Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/google/android/gms/auth/authzen/transaction/b/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v1, v1, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    .line 55
    invoke-virtual {v1}, Lcom/google/m/b/a/a/e;->c()I

    move-result v2

    if-gtz v2, :cond_2

    .line 56
    const-string v1, "AuthZen"

    const-string v2, "Request has 0 SelectorDescriptors"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v1, v1, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    iget v1, v1, Lcom/google/m/b/a/a/e;->d:I

    .line 50
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

    .line 62
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/m/b/a/a/e;->a(I)Lcom/google/m/b/a/a/j;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/m/b/a/a/j;->c()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 64
    const-string v2, "AuthZen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected number of pin options found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/m/b/a/a/j;->c()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/authzen/transaction/a/e;I)V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/auth/authzen/transaction/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    if-nez p2, :cond_0

    .line 89
    invoke-virtual {p0, v3, v3}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(IZ)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->e()Lcom/google/m/b/a/a/p;

    move-result-object v0

    iget-object v0, v0, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v0, v0, Lcom/google/m/b/a/a/o;->d:Lcom/google/m/b/a/a/e;

    invoke-virtual {v0, v3}, Lcom/google/m/b/a/a/e;->a(I)Lcom/google/m/b/a/a/j;

    move-result-object v0

    iget-object v1, v0, Lcom/google/m/b/a/a/j;->c:Ljava/util/List;

    .line 91
    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/auth/authzen/transaction/a/b;->a(Landroid/os/Bundle;ILjava/util/List;)Lcom/google/android/gms/auth/authzen/transaction/a/b;

    move-result-object v0

    .line 98
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V

    .line 130
    :goto_1
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(II)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/a/a;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/a;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    if-nez p2, :cond_2

    .line 104
    invoke-virtual {p0, v3, v3}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(II)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/b/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_2
    if-ne p2, v2, :cond_3

    .line 109
    invoke-virtual {p0, v4, v4}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(II)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 111
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    sget-object v3, Lcom/google/android/gms/auth/authzen/transaction/b/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/a/a;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/a;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V

    goto :goto_1

    .line 122
    :cond_3
    const/16 v0, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(II)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/b/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_4
    sget-object v1, Lcom/google/android/gms/auth/authzen/transaction/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->setResult(I)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->finish()V

    goto/16 :goto_1

    .line 132
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment not supported in account recovery workflow: "

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
    .line 73
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/authzen/transaction/a;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->e()Lcom/google/m/b/a/a/p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/authzen/transaction/b/i;->a(Lcom/google/m/b/a/a/p;)Lcom/google/android/gms/auth/authzen/transaction/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->b()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->v:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/gms/auth/authzen/transaction/a/d;->i(Landroid/os/Bundle;)Lcom/google/android/gms/auth/authzen/transaction/a/d;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/authzen/transaction/workflows/PinConfirmationWorkflow;->a(Lcom/google/android/gms/auth/authzen/transaction/a/e;Lcom/google/android/gms/auth/authzen/transaction/a/e;)V

    .line 80
    :cond_0
    return-void
.end method
