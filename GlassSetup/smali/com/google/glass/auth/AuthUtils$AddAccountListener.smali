.class public interface abstract Lcom/google/glass/auth/AuthUtils$AddAccountListener;
.super Ljava/lang/Object;
.source "AuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/auth/AuthUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddAccountListener"
.end annotation


# virtual methods
.method public abstract onAccountNotMatch()V
.end method

.method public abstract onSignIn()V
.end method

.method public abstract onSignInError()V
.end method
