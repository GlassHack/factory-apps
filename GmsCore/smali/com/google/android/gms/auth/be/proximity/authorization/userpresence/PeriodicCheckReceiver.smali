.class public Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/PeriodicCheckReceiver;
.super Landroid/support/v4/a/m;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/PeriodicCheckReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/PeriodicCheckReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/PeriodicCheckReceiver;->a:Ljava/lang/String;

    const-string v1, "Received intent: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/UserPresenceService;->a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/PeriodicCheckReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    return-void
.end method
