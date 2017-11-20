.class public Lcom/google/android/pano/util/TransitionImageAnimation$Listener;
.super Ljava/lang/Object;
.source "TransitionImageAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/util/TransitionImageAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/android/pano/util/TransitionImageAnimation;)V
    .locals 0
    .param p1, "animation"    # Lcom/google/android/pano/util/TransitionImageAnimation;

    .prologue
    .line 40
    return-void
.end method

.method public onFinished(Lcom/google/android/pano/util/TransitionImageAnimation;)V
    .locals 0
    .param p1, "animation"    # Lcom/google/android/pano/util/TransitionImageAnimation;

    .prologue
    .line 43
    return-void
.end method

.method public onRemovedView(Lcom/google/android/pano/util/TransitionImage;Lcom/google/android/pano/util/TransitionImage;)V
    .locals 0
    .param p1, "src"    # Lcom/google/android/pano/util/TransitionImage;
    .param p2, "dst"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    .line 37
    return-void
.end method
