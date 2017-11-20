.class interface abstract Lcom/google/android/apps/analytics/Dispatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/analytics/Dispatcher$Callbacks;
    }
.end annotation


# virtual methods
.method public abstract dispatchHits([Lcom/google/android/apps/analytics/Hit;)V
.end method

.method public abstract init(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;)V
.end method

.method public abstract isDryRun()Z
.end method

.method public abstract setDryRun(Z)V
.end method

.method public abstract stop()V
.end method
