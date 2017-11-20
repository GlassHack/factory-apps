.class final Lcom/google/android/gms/auth/s;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1250
    iput-object p1, p0, Lcom/google/android/gms/auth/s;->a:Landroid/content/Context;

    .line 1251
    return-void

    .line 1249
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1255
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/google/android/gms/auth/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;)I

    move-result v0

    .line 1257
    invoke-static {v0}, Lcom/google/android/gms/common/k;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/google/android/gms/auth/s;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/k;->a(ILandroid/content/Context;)V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    const-string v0, "GoogleAuthUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to handle this message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
