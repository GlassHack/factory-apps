.class public final Lcom/google/android/gms/auth/api/b;
.super Lcom/google/android/gms/auth/api/v;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/common/server/ClientContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/v;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/auth/api/b;->a:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/google/android/gms/auth/api/b;->b:Lcom/google/android/gms/common/server/ClientContext;

    .line 125
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/api/r;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V
    .locals 2

    .prologue
    .line 131
    const-string v0, "AuthApiService"

    const-string v1, "Sending connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/auth/api/b;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/auth/api/GoogleAuthApiIntentService;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/r;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V

    .line 133
    return-void
.end method
