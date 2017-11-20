.class public Lcom/google/glass/widget/MessageDialog$SimpleListener;
.super Ljava/lang/Object;
.source "MessageDialog.java"

# interfaces
.implements Lcom/google/glass/widget/MessageDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onDismissed()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onDone()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onDoneMessageShown()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
