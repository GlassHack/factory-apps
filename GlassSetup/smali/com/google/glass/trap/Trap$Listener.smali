.class public interface abstract Lcom/google/glass/trap/Trap$Listener;
.super Ljava/lang/Object;
.source "Trap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/trap/Trap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCountdown(I)V
.end method

.method public abstract onTrapTriggered()V
.end method
