.class public Lcom/google/android/gms/auth/be/cryptauth/sync/GcmReceiverService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/android/gms/auth/be/cryptauth/sync/GcmReceiverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/cryptauth/sync/GcmReceiverService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/gms/auth/be/cryptauth/sync/GcmReceiverService;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gms/auth/be/cryptauth/sync/GcmReceiverService;->a:Ljava/lang/String;

    const-string v1, "Received onHandleIntent() call: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/cryptauth/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/cryptauth/sync/a;->a()V

    .line 25
    return-void
.end method
