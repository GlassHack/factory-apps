.class public final Lcom/google/android/gms/auth/be/cryptauth/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/cryptauth/a/a;->b:Landroid/content/Context;

    .line 26
    new-instance v1, Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

    new-instance v2, Lcom/google/android/gms/common/server/g;

    sget-object v0, Lcom/google/android/gms/auth/b/a;->S:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "/cryptauth/v1/"

    const/4 v4, 0x0

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/google/android/gms/common/server/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/gencode/authzen/server/api/f;-><init>(Lcom/google/android/gms/common/server/g;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/be/cryptauth/a/a;->a:Lcom/google/android/gms/auth/gencode/authzen/server/api/f;

    .line 34
    return-void
.end method
