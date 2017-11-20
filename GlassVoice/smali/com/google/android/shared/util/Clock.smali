.class public interface abstract Lcom/google/android/shared/util/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/Clock$TimeTickListener;,
        Lcom/google/android/shared/util/Clock$TimeResetListener;
    }
.end annotation


# virtual methods
.method public abstract currentTimeMillis()J
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract registerTimeResetListener(Lcom/google/android/shared/util/Clock$TimeResetListener;)V
.end method

.method public abstract registerTimeTickListener(Lcom/google/android/shared/util/Clock$TimeTickListener;)V
.end method

.method public abstract unregisterTimeResetListener(Lcom/google/android/shared/util/Clock$TimeResetListener;)V
.end method

.method public abstract unregisterTimeTickListener(Lcom/google/android/shared/util/Clock$TimeTickListener;)V
.end method

.method public abstract uptimeMillis()J
.end method
