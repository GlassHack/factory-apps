.class public interface abstract Lcom/google/glass/android/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/android/os/PowerManager$WakeLock;
    }
.end annotation


# virtual methods
.method public abstract goToSleep(J)V
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;
.end method

.method public abstract reboot(Ljava/lang/String;)V
.end method

.method public abstract userActivity(JZ)V
.end method

.method public abstract wakeUp(J)V
.end method
