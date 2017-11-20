.class Lcom/google/glass/home/timeline/MainTimelineActivity$5;
.super Ljava/lang/Object;
.source "MainTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeInternal()V
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
    .line 451
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$5;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/google/glass/util/BluetoothHelper;

    invoke-direct {v0}, Lcom/google/glass/util/BluetoothHelper;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->cancelDiscoverable()V

    .line 455
    return-void
.end method
