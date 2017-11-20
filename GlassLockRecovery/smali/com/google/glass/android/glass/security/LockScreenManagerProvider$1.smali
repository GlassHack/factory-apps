.class final Lcom/google/glass/android/glass/security/LockScreenManagerProvider$1;
.super Ljava/lang/Object;
.source "LockScreenManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/android/glass/security/LockScreenManagerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/android/glass/security/LockScreenManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/android/glass/security/LockScreenManager;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/google/android/glass/security/LockScreenManager;->get()Lcom/google/android/glass/security/LockScreenManager;

    move-result-object v0

    .line 21
    .local v0, "lockScreenManager":Lcom/google/android/glass/security/LockScreenManager;
    new-instance v1, Lcom/google/glass/android/glass/security/LockScreenManagerImpl;

    invoke-direct {v1, v0}, Lcom/google/glass/android/glass/security/LockScreenManagerImpl;-><init>(Lcom/google/android/glass/security/LockScreenManager;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/glass/android/glass/security/LockScreenManagerProvider$1;->get()Lcom/google/glass/android/glass/security/LockScreenManager;

    move-result-object v0

    return-object v0
.end method
