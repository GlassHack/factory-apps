.class Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;
.super Ljava/lang/Thread;
.source "GlassMainMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-wide/16 v0, 0x10

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;

    new-instance v1, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1$1;-><init>(Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_1

    .line 131
    :cond_0
    return-void
.end method
