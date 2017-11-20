.class Lcom/google/android/pano/util/TransitionImageAnimation$1;
.super Ljava/lang/Object;
.source "TransitionImageAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/util/TransitionImageAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/util/TransitionImageAnimation;


# direct methods
.method constructor <init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation$1;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation$1;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-virtual {v0}, Lcom/google/android/pano/util/TransitionImageAnimation;->cancelTransition()V

    .line 194
    return-void
.end method
