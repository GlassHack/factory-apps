.class public interface abstract Lcom/google/glass/setup/SetupFlowController$CallBack;
.super Ljava/lang/Object;
.source "SetupFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract cancelSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)V
.end method

.method public abstract getContainerView()Landroid/view/ViewGroup;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getSoundManager()Lcom/google/glass/sound/SoundManager;
.end method

.method public abstract onPrepareForSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)Z
.end method

.method public abstract startBarcodeScanner()V
.end method
