.class final Lcom/google/android/gms/auth/api/c;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/gms/auth/api/c;->a:Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;

    .line 67
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 77
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/c;->a:Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Caller is not authorized to invoke this service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/c;->a:Lcom/google/android/gms/auth/api/GoogleAuthApiAndroidService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;->a(Landroid/content/Context;Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    const-string v0, "AuthApiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client connected with version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
