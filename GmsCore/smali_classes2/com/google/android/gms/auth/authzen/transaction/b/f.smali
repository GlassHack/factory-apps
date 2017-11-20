.class public final Lcom/google/android/gms/auth/authzen/transaction/b/f;
.super Lcom/google/android/gms/auth/authzen/transaction/b/c;
.source "SourceFile"


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/c;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->i:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a()V

    .line 23
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    invoke-super {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/c;->a()V

    .line 28
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/app/GmsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->b:Ljava/lang/String;

    const v3, 0x7f10003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->c:Ljava/lang/String;

    const v3, 0x7f100038

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->i:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->b:Ljava/lang/String;

    const v3, 0x7f100030

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->c:Ljava/lang/String;

    const v3, 0x7f10002f

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->i:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->d:Ljava/lang/String;

    const v3, 0x7f100037

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/b;->c:Ljava/lang/String;

    const v3, 0x7f10003b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/f;->c:Ljava/lang/String;

    const v3, 0x7f10003a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/f;->d:Ljava/lang/String;

    const v3, 0x7f100039

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->b:Ljava/lang/String;

    const v3, 0x7f10003d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->c:Ljava/lang/String;

    const v3, 0x7f10003c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/f;->g:Ljava/lang/String;

    const v3, 0x7f100035

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/f;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/f;->h:Ljava/lang/String;

    const v3, 0x7f100036

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
