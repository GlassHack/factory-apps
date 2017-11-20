.class public interface abstract Lcom/google/glass/android/os/PowerManager$WakeLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/android/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WakeLock"
.end annotation


# virtual methods
.method public abstract acquire()V
.end method

.method public abstract acquire(J)V
.end method

.method public abstract isHeld()Z
.end method

.method public abstract release()V
.end method

.method public abstract setReferenceCounted(Z)V
.end method

.method public abstract setWorkSource(Landroid/os/WorkSource;)V
.end method
