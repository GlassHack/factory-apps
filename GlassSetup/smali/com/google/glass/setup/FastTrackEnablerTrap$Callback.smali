.class interface abstract Lcom/google/glass/setup/FastTrackEnablerTrap$Callback;
.super Ljava/lang/Object;
.source "FastTrackEnablerTrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/FastTrackEnablerTrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract isSetupStarted()Z
.end method

.method public abstract onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method
