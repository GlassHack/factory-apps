.class public abstract Lcom/google/android/gms/auth/authzen/transaction/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/authzen/transaction/b/h;


# instance fields
.field protected final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    .line 24
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/app/GmsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->b:Ljava/lang/String;

    const v3, 0x7f100032

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->d:Ljava/lang/String;

    const v3, 0x7f100063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->e:Ljava/lang/String;

    const v3, 0x7f100048

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->d:Ljava/lang/String;

    const v3, 0x7f10002d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->e:Ljava/lang/String;

    const v3, 0x7f10002e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/b;->b:Ljava/lang/String;

    const v3, 0x7f10004d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/b;->c:Ljava/lang/String;

    const v3, 0x7f10004c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/c;->c:Ljava/lang/String;

    const v3, 0x7f100031

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->b:Ljava/lang/String;

    const v3, 0x7f100049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->e:Ljava/lang/String;

    const v3, 0x7f10002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/c;->g:Ljava/lang/String;

    const v3, 0x7f100028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/c;->h:Ljava/lang/String;

    const v3, 0x7f100029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 45
    return-object v0
.end method
