.class public Lcom/google/glass/lockrecovery/LockRecoveryApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "LockRecoveryApplication.java"


# static fields
.field public static final ACTION_FETCH_RECOVERY_CODE:Ljava/lang/String; = "FETCH_RECOVERY_CODE"

.field public static final ACTION_STORE_RECOVERY_CODE:Ljava/lang/String; = "STORE_RECOVERY_CODE"

.field public static final STORE_RECOVERY_CODE_PERMISSION:Ljava/lang/String; = "com.google.glass.lockrecovery.permission.STORE_RECOVERY_CODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method
