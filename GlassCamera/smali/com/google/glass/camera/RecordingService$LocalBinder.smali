.class public Lcom/google/glass/camera/RecordingService$LocalBinder;
.super Landroid/os/Binder;
.source "RecordingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/RecordingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/RecordingService;


# direct methods
.method public constructor <init>(Lcom/google/glass/camera/RecordingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/glass/camera/RecordingService$LocalBinder;->this$0:Lcom/google/glass/camera/RecordingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/google/glass/camera/RecordingService;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/glass/camera/RecordingService$LocalBinder;->this$0:Lcom/google/glass/camera/RecordingService;

    return-object v0
.end method
