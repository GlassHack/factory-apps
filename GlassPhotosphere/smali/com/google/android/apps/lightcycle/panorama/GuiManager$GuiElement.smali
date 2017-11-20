.class public interface abstract Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;
.super Ljava/lang/Object;
.source "GuiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/GuiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GuiElement"
.end annotation


# virtual methods
.method public abstract draw([F)V
.end method

.method public abstract handleEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract subscribe(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V
.end method
