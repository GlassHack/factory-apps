.class final Lcom/google/android/gms/auth/login/ar;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/MinuteMaidDgService;

.field private b:Lcom/google/android/gms/auth/login/MinuteMaidDgService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/login/MinuteMaidDgService;Lcom/google/android/gms/auth/login/MinuteMaidDgService;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/auth/login/ar;->a:Lcom/google/android/gms/auth/login/MinuteMaidDgService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/auth/login/ar;->b:Lcom/google/android/gms/auth/login/MinuteMaidDgService;

    .line 47
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 42
    const-string v0, "MM-DG-SERVICE"

    const-string v1, "Starting Dg init in serviceCreateAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/auth/login/ar;->b:Lcom/google/android/gms/auth/login/MinuteMaidDgService;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/ar;->b:Lcom/google/android/gms/auth/login/MinuteMaidDgService;

    const-string v2, "minute_maid"

    invoke-static {v1, v2}, Lcom/google/android/gms/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/d/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->a(Lcom/google/android/gms/auth/login/MinuteMaidDgService;Lcom/google/android/gms/d/b;)Lcom/google/android/gms/d/b;

    const-string v0, "MM-DG-SERVICE"

    const-string v1, "Finished Dg init in serviceCreateAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
