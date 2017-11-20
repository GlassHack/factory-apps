.class final Lcom/google/glass/android/glass/security/LockScreenManagerImpl;
.super Ljava/lang/Object;
.source "LockScreenManagerImpl.java"

# interfaces
.implements Lcom/google/glass/android/glass/security/LockScreenManager;


# instance fields
.field private final lockScreenManager:Lcom/google/android/glass/security/LockScreenManager;


# direct methods
.method constructor <init>(Lcom/google/android/glass/security/LockScreenManager;)V
    .locals 1
    .param p1, "lockScreenManager"    # Lcom/google/android/glass/security/LockScreenManager;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "null LockScreenManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/security/LockScreenManager;

    iput-object v0, p0, Lcom/google/glass/android/glass/security/LockScreenManagerImpl;->lockScreenManager:Lcom/google/android/glass/security/LockScreenManager;

    .line 15
    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/android/glass/security/LockScreenManagerImpl;->lockScreenManager:Lcom/google/android/glass/security/LockScreenManager;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/security/LockScreenManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/android/glass/security/LockScreenManagerImpl;->lockScreenManager:Lcom/google/android/glass/security/LockScreenManager;

    invoke-virtual {v0}, Lcom/google/android/glass/security/LockScreenManager;->reset()V

    .line 20
    return-void
.end method
