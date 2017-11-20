.class Lcom/google/glass/home/timeline/MainTimelineActivity$7;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$7;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 952
    new-instance v0, Lcom/google/glass/camera/CameraHelper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$7;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {v0, v1}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraHelper;->prepareCamera()V

    .line 953
    return-void
.end method
