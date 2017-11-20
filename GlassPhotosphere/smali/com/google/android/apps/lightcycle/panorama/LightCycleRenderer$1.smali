.class Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;
.super Ljava/lang/Object;
.source "LightCycleRenderer.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initRendering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public message(IFLjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # F
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 471
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->undoLastCapturedPhoto()V

    .line 474
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonVisible(Z)V

    .line 476
    :cond_0
    return-void
.end method
