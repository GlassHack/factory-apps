.class public Lcom/google/android/gms/auth/DefaultAuthDelegateService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/DefaultAuthDelegateService;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic a()Ljava/util/Random;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/gms/auth/DefaultAuthDelegateService;->a:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/auth/DefaultAuthDelegateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 213
    new-instance v0, Lcom/google/android/gms/auth/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/n;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
