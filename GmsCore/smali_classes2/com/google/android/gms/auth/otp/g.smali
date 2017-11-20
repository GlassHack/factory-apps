.class final Lcom/google/android/gms/auth/otp/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/auth/otp/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/otp/d;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gms/auth/otp/g;->c:Lcom/google/android/gms/auth/otp/d;

    iput-object p2, p0, Lcom/google/android/gms/auth/otp/g;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/gms/auth/otp/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    :try_start_0
    new-instance v0, Lcom/google/android/gms/auth/a/c;

    iget-object v1, p0, Lcom/google/android/gms/auth/otp/g;->c:Lcom/google/android/gms/auth/otp/d;

    iget-object v1, v1, Lcom/google/android/gms/auth/otp/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/auth/otp/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->a(Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/auth/otp/g;->c:Lcom/google/android/gms/auth/otp/d;

    iget-object v1, v1, Lcom/google/android/gms/auth/otp/d;->c:Lcom/google/android/gms/auth/firstparty/dataservice/s;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/s;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;

    move-result-object v0

    .line 108
    iget-object v0, v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpResponse;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "OtpFlow"

    const-string v2, "Unexpected exception during OTP generation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/auth/otp/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 91
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/auth/otp/g;->c:Lcom/google/android/gms/auth/otp/d;

    iget-object v0, v0, Lcom/google/android/gms/auth/otp/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/auth/otp/g;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/otp/g;->c:Lcom/google/android/gms/auth/otp/d;

    iget-object v0, v0, Lcom/google/android/gms/auth/otp/d;->b:Lcom/google/android/gms/auth/otp/h;

    invoke-interface {v0}, Lcom/google/android/gms/auth/otp/h;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/g;->c:Lcom/google/android/gms/auth/otp/d;

    iget-object v0, v0, Lcom/google/android/gms/auth/otp/d;->b:Lcom/google/android/gms/auth/otp/h;

    iget-object v1, p0, Lcom/google/android/gms/auth/otp/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/auth/otp/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/g;->c:Lcom/google/android/gms/auth/otp/d;

    iget-object v0, v0, Lcom/google/android/gms/auth/otp/d;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/auth/otp/g;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method
