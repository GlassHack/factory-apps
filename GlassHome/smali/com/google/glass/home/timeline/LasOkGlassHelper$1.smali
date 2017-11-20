.class Lcom/google/glass/home/timeline/LasOkGlassHelper$1;
.super Ljava/lang/Object;
.source "LasOkGlassHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/LasOkGlassHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/LasOkGlassHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$1;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$1;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$100(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/glass/home/timeline/LasOkGlassHelper$1;->this$0:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-static {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->access$200(Lcom/google/glass/home/timeline/LasOkGlassHelper;)Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 59
    :cond_0
    return-void
.end method
