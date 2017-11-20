.class Lcom/google/glass/voice/service/menu/VoiceMenuService$2;
.super Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;
.source "VoiceMenuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$2;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceListener$SimpleVoiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method
