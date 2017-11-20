.class public final Lcom/google/android/location/o/h;
.super Lcom/google/android/location/o/g;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final a:Landroid/app/AppOpsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/location/o/g;-><init>()V

    .line 21
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/google/android/location/o/h;->a:Landroid/app/AppOpsManager;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/location/o/h;->a:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/o/h;->a:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "AppOpsCompat"

    const-string v2, "Op %s finished but never started, %d:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/o/h;->a:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method
