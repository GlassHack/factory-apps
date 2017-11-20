.class Lcom/google/android/apps/lightcycle/panorama/RenderedGui$2;
.super Ljava/lang/Object;
.source "RenderedGui.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->init(Landroid/content/Context;Lcom/google/android/apps/lightcycle/opengl/Shader;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/RenderedGui;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public message(IFLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # F
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui$2;->this$0:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->notifyUndo()V

    .line 105
    return-void
.end method
