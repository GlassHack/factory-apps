.class public Lcom/google/android/gms/auth/login/MinuteMaidDgService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/d/b;

.field private b:Lcom/google/android/gms/auth/login/ar;

.field private final c:Lcom/google/android/gms/auth/login/ad;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->a:Lcom/google/android/gms/d/b;

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->b:Lcom/google/android/gms/auth/login/ar;

    .line 23
    new-instance v0, Lcom/google/android/gms/auth/login/aq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/login/aq;-><init>(Lcom/google/android/gms/auth/login/MinuteMaidDgService;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->c:Lcom/google/android/gms/auth/login/ad;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/MinuteMaidDgService;)Lcom/google/android/gms/d/b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->a:Lcom/google/android/gms/d/b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/MinuteMaidDgService;Lcom/google/android/gms/d/b;)Lcom/google/android/gms/d/b;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->a:Lcom/google/android/gms/d/b;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/auth/login/ar;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/auth/login/ar;-><init>(Lcom/google/android/gms/auth/login/MinuteMaidDgService;Lcom/google/android/gms/auth/login/MinuteMaidDgService;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->b:Lcom/google/android/gms/auth/login/ar;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->b:Lcom/google/android/gms/auth/login/ar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/ar;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/auth/login/MinuteMaidDgService;->c:Lcom/google/android/gms/auth/login/ad;

    return-object v0
.end method
