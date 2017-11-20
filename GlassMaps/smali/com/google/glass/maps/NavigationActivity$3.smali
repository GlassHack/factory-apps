.class Lcom/google/glass/maps/NavigationActivity$3;
.super Lcom/google/glass/maps/NavigationRenderer;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$3;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/glass/maps/NavigationRenderer;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/google/glass/maps/NavigationRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 213
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$3;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$3$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationActivity$3$1;-><init>(Lcom/google/glass/maps/NavigationActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method
