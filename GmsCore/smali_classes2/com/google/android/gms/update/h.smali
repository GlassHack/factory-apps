.class final Lcom/google/android/gms/update/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/update/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/update/g;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/google/android/gms/update/h;->c:Lcom/google/android/gms/update/g;

    iput-object p2, p0, Lcom/google/android/gms/update/h;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/update/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1240
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/update/h;->a:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/update/h;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :goto_0
    const-string v0, "SystemUpdateService"

    const-string v1, "reboot to install failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-static {}, Lcom/google/android/gms/update/SystemUpdateService;->b()Lcom/google/android/gms/update/a;

    iget-object v0, p0, Lcom/google/android/gms/update/h;->c:Lcom/google/android/gms/update/g;

    iget-object v0, v0, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    iget-object v1, p0, Lcom/google/android/gms/update/h;->c:Lcom/google/android/gms/update/g;

    iget-object v1, v1, Lcom/google/android/gms/update/g;->a:Lcom/google/android/gms/update/SystemUpdateService;

    invoke-static {v1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Lcom/google/android/gms/update/SystemUpdateService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/update/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 1246
    return-void

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    const-string v1, "SystemUpdateService"

    const-string v2, "exception trying to install package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
