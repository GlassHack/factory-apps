.class public final Lcom/google/android/gms/auth/otp/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/auth/otp/h;

.field final c:Lcom/google/android/gms/auth/firstparty/dataservice/s;

.field final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/otp/h;Lcom/google/android/gms/auth/firstparty/dataservice/s;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/d;->d:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/auth/otp/d;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/auth/otp/d;->b:Lcom/google/android/gms/auth/otp/h;

    .line 47
    iput-object p3, p0, Lcom/google/android/gms/auth/otp/d;->c:Lcom/google/android/gms/auth/firstparty/dataservice/s;

    .line 48
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/gms/auth/otp/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/otp/f;-><init>(Lcom/google/android/gms/auth/otp/d;)V

    .line 91
    new-instance v1, Lcom/google/android/gms/auth/otp/g;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/auth/otp/g;-><init>(Lcom/google/android/gms/auth/otp/d;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method
