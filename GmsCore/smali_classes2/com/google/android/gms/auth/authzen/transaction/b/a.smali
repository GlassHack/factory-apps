.class public final Lcom/google/android/gms/auth/authzen/transaction/b/a;
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
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->i:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a()V

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

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->b:Ljava/lang/String;

    const v3, 0x7f10005b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/d;->c:Ljava/lang/String;

    const v3, 0x7f10005a

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->i:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->b:Ljava/lang/String;

    const v3, 0x7f100053

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->c:Ljava/lang/String;

    const v3, 0x7f100052

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->i:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/c;->d:Ljava/lang/String;

    const v3, 0x7f10002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/b;->b:Ljava/lang/String;

    const v3, 0x7f100057

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/b;->c:Ljava/lang/String;

    const v3, 0x7f100056

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/a;->c:Ljava/lang/String;

    const v3, 0x7f100055

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/a;->d:Ljava/lang/String;

    const v3, 0x7f100054

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->b:Ljava/lang/String;

    const v3, 0x7f100059

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/a/a;->c:Ljava/lang/String;

    const v3, 0x7f100058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/a;->g:Ljava/lang/String;

    const v3, 0x7f100050

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/a;->a:Landroid/os/Bundle;

    sget-object v2, Lcom/google/android/gms/auth/authzen/transaction/b/a;->h:Ljava/lang/String;

    const v3, 0x7f100051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
