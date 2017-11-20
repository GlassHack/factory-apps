.class Lcom/google/glass/voice/service/menu/VoiceMenuService$1$3;
.super Ljava/lang/Object;
.source "VoiceMenuService.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->maybeAddVignetteMenuItem(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

.field final synthetic val$screenshotFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$3;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iput-object p2, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$3;->val$screenshotFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 3
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 126
    new-instance v1, Lcom/google/glass/camera/CameraHelper;

    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$3;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v0, v0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-direct {v1, v0}, Lcom/google/glass/camera/CameraHelper;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iget-object v2, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$3;->val$screenshotFilePath:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/camera/CameraHelper;->makeVignette(Lcom/google/glass/sound/SoundManager;Ljava/lang/String;)V

    .line 128
    return-void
.end method
